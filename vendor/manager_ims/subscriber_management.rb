# wsdl2ruby.rb --wsdl ATSV100R003C03SPC100.wsdl --type client
# wsdl2ruby.rb --wsdl HSSV900R008C02SPC200.wsdl --type client
# Подключение к HSS и ATS IMS

# Подключаем библиотеку SOAP4R
gem 'soap4r'

# Подключаем клиентские заглушки
require 'ATS_defaultDriver.rb'
require 'HSS_defaultDriver.rb'
# Формируем header (авторизация, название ME, номер запроса)
require 'ATS_HSS_defaultHeader.rb'

# При помощи этого объекта мы будем вызывать методы веб-сервиса
@serv_ATS = ATSV100R003C03SPC100.new("http://10.52.250.136:8080/spg") 
@serv_HSS = HSSV900R008C02SPC200.new("http://10.52.250.136:8080/spg") 
# Формируем header (авторизация, название ME, номер запроса)
@serv_HSS.headerhandlers
@serv_ATS.headerhandlers


# Выводить отладочную информацию если ruby
# был запущен с ключом -d
#@serv_ATS.wiredump_dev = STDERR if $DEBUG
#@serv_ATS.wiredump_dev = STDOUT
#@serv_HSS.wiredump_dev = STDOUT

class SubscriberIMS
  attr_accessor :sUBID
  attr_accessor :iMPI
  attr_accessor :iMPU_sip
  attr_accessor :iMPU_tel
  
  attr_accessor :hUSERNAME
  attr_accessor :pWD
  
  attr_accessor :iRSID
  attr_accessor :iMPULIST
  attr_accessor :bASEIMPU
  attr_accessor :aLIASID
  attr_accessor :sIFCID

  def initialize(tel, domain, password = nil)
    @sUBID = tel
	@iMPI = @hUSERNAME = "#{tel}@#{domain}"
	@iMPU_sip = "sip:#{tel}@#{domain}"
	@iMPU_tel = "tel:#{tel}"
	@pWD = password
	@iRSID = 1
	@iMPULIST = "\"#{@iMPU_sip}\"&\"#{@iMPU_tel}\""
	@bASEIMPU = @iMPU_sip
	@aLIASID = 1
    @sIFCID = 240
  end
  
  
end


def create_sub(tel)
  result_all = {} # Результаты выполнения всех команд

  # Проверяем, что создаваемого абонента и его авторизации уже не прописано
  raise "Subscriber Login already exists" if exist_HHDAINF?(tel)
  raise "Subscriber already exists" if exist_HSUB?(tel)
  
  
  # ADD HHDAINF:IMPI="+78314224001@nn.ims.volga.rt.ru",HUSERNAME="+78314224001@nn.ims.volga.rt.ru",PWD=QhDpEEYyh4;
  # def initialize(iMPI = nil, hUSERNAME = nil, pWD = nil)
  request = ADD_HHDAINF.new(tel.iMPI, tel.hUSERNAME, tel.pWD) 
  response = @serv_HSS.aDD_HHDAINF(request)
  result_all[request] = response.result
  
  
  # ADD HSUB:SUBID="+78314224001",IMPI="+78314224001@nn.ims.volga.rt.ru",IMPU="sip:+78314224001@nn.ims.volga.rt.ru";
  # def initialize(sUBID = nil, iMPI = nil, iMPU = nil, iMPUTYPE = nil, pBXUSERFLAG = nil)
  request = ADD_HSUB.new(tel.sUBID, tel.iMPI, tel.iMPU_sip) 
  response = @serv_HSS.aDD_HSUB(request) 
  result_all[request] = response.result
  
  # ADD HIMPU:IMPI="+78314224001@nn.ims.volga.rt.ru",IMPU="tel:+78314224001";
  # def initialize(iMPI = nil, iMPU = nil, iMPUTYPE = nil)
  request = ADD_HIMPU.new(tel.iMPI, tel.iMPU_tel) 
  response = @serv_HSS.aDD_HIMPU(request) 
  result_all[request] = response.result
  
  # SET HVNTPLID:IMPU="sip:+78314224001@nn.ims.volga.rt.ru",VNTPLID=0; 
  # def initialize(iMPU = nil, vNTPLID = nil)
  request = SET_HVNTPLID.new(tel.iMPU_sip, 0) 
  response = @serv_HSS.sET_HVNTPLID(request) 
  result_all[request] = response.result
  
  # SET HVNTPLID:IMPU="tel:+78314224001",VNTPLID=0;
  # def initialize(iMPU = nil, vNTPLID = nil)
  request = SET_HVNTPLID.new(tel.iMPU_tel, 0) 
  response = @serv_HSS.sET_HVNTPLID(request)
  result_all[request] = response.result
  
  
  # SET HIRS:IRSID=1,IMPULIST="\"sip:+78314224001@nn.ims.volga.rt.ru\"&\"tel:+78314224001\"";
  # def initialize(iRSID = nil, iMPULIST = nil, pUSILIST = nil)
  request = SET_HIRS.new(tel.iRSID, tel.iMPULIST) 
  response = @serv_HSS.sET_HIRS(request)
  result_all[request] = response.result
  
  # SET HREGAUTH:IMPU="sip:+78314224001@nn.ims.volga.rt.ru",REGAUTH=TRUE;
  # SET HREGAUTH:IMPU="tel:+78314224001",REGAUTH=TRUE; 
  # def initialize(iMPU = nil, rEGAUTH = nil)
  request = SET_HREGAUTH.new(tel.iMPU_sip, TRUE) 
  response = @serv_HSS.sET_HREGAUTH(request)
  result_all[request] = response.result
  
  request = SET_HREGAUTH.new(tel.iMPU_tel, TRUE) 
  response = @serv_HSS.sET_HREGAUTH(request)
  result_all[request] = response.result
  
 
  # SET HSPSHARE:BASEIMPU="sip:+78314224001@nn.ims.volga.rt.ru",IMPU="tel:+78314224001"; 
  # def initialize(bASEIMPU = nil, iMPU = nil)
  request = SET_HSPSHARE.new(tel.bASEIMPU, tel.iMPU_tel) 
  response = @serv_HSS.sET_HSPSHARE(request)
  result_all[request] = response.result
  
  
  # SET HALIASPU:ALIASID=1,IMPULIST="\"sip:+78314224001@nn.ims.volga.rt.ru\"&\"tel:+78314224001\""; 
  # def initialize(aLIASID = nil, iMPULIST = nil)
  request = SET_HALIASPU.new(tel.aLIASID, tel.iMPULIST) 
  response = @serv_HSS.sET_HALIASPU(request)
  result_all[request] = response.result
  
  
  # ADD HSIFC:IMPU="sip:+78314224001@nn.ims.volga.rt.ru",SIFCID=240; 
  # def initialize(iMPU = nil, pUSI = nil, sIFCID = nil)
  request = ADD_HSIFC.new(tel.iMPU_sip) 
  request.sIFCID = tel.sIFCID
  response = @serv_HSS.aDD_HSIFC(request)
  result_all[request] = response.result
      
  # ADD SBR:IMPU="sip:+78314224001@nn.ims.volga.rt.ru",TEMPLATEIDX=65535,DSPIDX=65534,LP=0,CSC=0,UTYPE=IMSSIPUE,VCCFLAG=NO,VTFLAG=NO,NSCFU=0,NSCFUVM=0,NSCFB=0,NSCFBVM=0,NSCFNR=0,NSCFNRVM=0,NSCFNL=0,NSCFNLVM=0,NSCD=0,NSCDVM=0,NSCFNRC=0,NSCFNRCVM=0,NSCLIP=1,NSCIDCW=0,NSRIO=0,NSCNIP=0,NSCLIR=0,NSRIP=0,NSCNIR=0,NSRID=0,NSNRID=0,NSRND=0,NSNRND=0,NSCW=0,NSCCW=0,NSOIP=1,NSACRM=0,NSGOIR=0,NSMOIR=0,NSTIP=0,NSTIR=0,NSOTIR=0,NSCLIPNOSCREENING=0,NSCR=0,NSWAKE_UP=0,NSAOC_D=0,NSAOC_E=0,NSXEXH=0,NSXEGJ=0,NSCWCFNR=0,NSIIFC=0,NSDN_CALL_OUT_BAR=0,NSCCBS=0,NSCCNR=0,NSCCBSR=0,NSCCNRR=0,NS3PTY=0,NSNPTY=0,NSDND=0,NSMCR=0,NSCBA=0,NSTMP_LIN=0,NSCODEC_CNTRL=0,NSMWI=0,NSDC=0,NSHOLD=0,NSECT=0,NSCFTB=0,NSDAN=0,NSSTOP_SECRET=0,NSMCID=0,NSEBO=0,NSICO=0,NSOUTG=0,NSINQYH=0,NSUINFO=0,NSDN_CALL_OUT_ALLOW=0,NSSIC=0,NSSOC=0,NSSETCFNRTIME=0,NSCFS=0,NSCFSB=0,NSFAX=0,NSABRC=0,NSACRTOVM=0,NSPREPAID=0,NSCRBT=0,NSICB=0,NSMRINGING=0,NSCIS=0,NSCBEG=0,NSCOLP=0,NSCOLR=0,NSCOLPOVR=0,NSBAOC=0,NSBOIC=0,NSBOICEXHC=0,NSBAIC=0,NSBICROM=0,NSSPEED_DIAL=0,NSSD1D=0,NSSD2D=0,NSGRNCALL=0,NSCPARK=0,NSGAA=0,NSQSNS=0,NSMSN=0,NSHOTLINE=0,NSAOC_S=0,NSNIGHTSRV=0,NSBACKNUM=0,NSAUTOCON=0,NSCAMPON=0,NSCTD=0,NSCLICKHOLD=0,NSQUEUE=0,NSSANSWER=0,NSICENCF=0,NSCFGO=0,NSCECT=0,NSCTGO=0,NSCTIO=0,NSSETBUSY=0,NSOVERSTEP=0,NSABSENT=0,NSMONITOR=0,NSFMONITOR=0,NSDISCNT=0,NSFDISCNT=0,NSINSERT=0,NSFINSERT=0,NSASI=0,NSPWCB=0,NSRD=0,NSLCPS=0,NSNCPS=0,NSICPS=0,NSCBCLOCK=0,NSMINIBAR=0,NSMCN=0,NSDSTR=0,NSOPRREG=0,NSONEKEY=0,NSINBOUND=0,NSOUTBOUND=0,NSCALLERID=0,NSCUN=0,NSIPTVVC=0,NSNP=0,NSSEC=0,NSSECSTA=0,NSHRCN=0,NSSB=0,LCO=1,LC=1,LCT=1,NTT=1,ITT=1,ICTX=1,OCTX=1,INTT=0,IITT=0,ICLT=0,ICDDD=0,ICIDD=0,IOLT=0,CTLCO=1,CTLCT=1,CTLD=1,CTINTNANP=1,CTINTWORLD=1,CTDA=1,CTOSM=1,CTOSP=0,CTOSP1=0,CCO1=1,CCO2=1,CCO3=1,CCO4=0,CCO5=0,CCO6=0,CCO7=0,CCO8=0,CCO9=0,CCO10=0,CCO11=0,CCO12=0,CCO13=0,CCO14=0,CCO15=0,CCO16=0,HIGHENTCO=0,OPERATOR=1,SUPYSRV=1,IDDCI=1,NTCI=1,LTCI=1,RSC=65535,CIG=4294967295,OUTRST=NO,INRST=NO,NOAT=20,VMAIND=65535,VDMAIND=65535,TGRP=65534,TIDHLD=HOLD,TIDCW=PLEASE_WAITING,SCF=NO,LMTGRP=65534,FLBGRP=65535,SLBGRP=65535,COP="0000",G711_64K_A_LAW=1,G711_64K_U_LAW=1,G722=1,G723=1,G726=1,G728=1,G729=1,CODEC_MP4A=1,CODEC2833=1,CODEC2198=1,G726_40=1,G726_32=1,G726_24=1,G726_16=1,AMR=1,CLEARMODE=1,ILBC=1,SPEEX=1,G729EV=1,EVRC=1,EVRCB=1,H261=1,H263=1,CODEC_MP4V=1,H264=1,T38=1,T120=1,G711A_VBD=1,G711U_VBD=1,G726_VBD=1,G726_40_VBD=1,G726_32_VBD=1,G726_24_VBD=1,G726_16_VBD=1,WIND_BAND_AMR=1,GSM610=1,H263_2000=1,BROADVOICE_32=1,UNKNOWN_CODEC=1,ACODEC=NONE,VCODEC=NONE,POLIDX=255,NCPI=255,ICPI=255,EBOCL=NOEBOL,EBOPL=NOEBOL,EBOIT=INVALID,RM=NOTPLAYTONE,CPC=ORDINARY,PCHG=65535,TFPT=NULL,CHT=CCF,MCIDMODE=NSWNA,MCIDCMODE=NOCM,MCIDAMODE=TEMPORARY,PREPAIDIDX=65535,CRBTID=65535,ODBBICTYPE=ODBNOBIC,ODBBOCTYPE=ODBNOBOC,ODBBARTYPE=ODBNOBAR,ODBSS=NO,ODBBRCFTYPE=ODBNOBRCF,PNOTI=NO,MAXPARACALL=1,ATSDTMBUSY=YES,CALLCOUNT=COUNT_CR,CDNOTICALLER=NO,ISCHGFLAG=CHARGE,CHC=NORMAL_USER,CUSER=0,STCF=0,CHARSC=65535,REGUIDX=0,SOCBFUNC=NULL,SOCBPTONEIDX=65535,ADMINCBA=NO,ADCONTROL_DIVERSION=NO,CPCRUS=1,CUSCAT=NORMAL,SPT100REL=YES; 
  # def initialize(iMPU = nil, tEMPLATEIDX = nil, dSPIDX = nil, lP = nil, cSC = nil, uNAME = nil, uTYPE = nil, vCCFLAG = nil, vTFLAG = nil, nSCFU = nil, nSCFUVM = nil, nSCFB = nil, nSCFBVM = nil, nSCFNR = nil, nSCFNRVM = nil, nSCFNL = nil, nSCFNLVM = nil, nSCD = nil, nSCDVM = nil, nSCFNRC = nil, nSCFNRCVM = nil, nSCLIP = nil, nSCIDCW = nil, nSRIO = nil, nSCNIP = nil, nSCLIR = nil, nSRIP = nil, nSCNIR = nil, nSRID = nil, nSNRID = nil, nSRND = nil, nSNRND = nil, nSCW = nil, nSCCW = nil, nSOIP = nil, nSACRM = nil, nSGOIR = nil, nSMOIR = nil, nSTIP = nil, nSTIR = nil, nSOTIR = nil, nSCLIPNOSCREENING = nil, nSCR = nil, nSWAKE_UP = nil, nSAOC_D = nil, nSAOC_E = nil, nSXEXH = nil, nSXEGJ = nil, nSCWCFNR = nil, nSIIFC = nil, nSDN_CALL_OUT_BAR = nil, nSCCBS = nil, nSCCNR = nil, nSCCBSR = nil, nSCCNRR = nil, nS3PTY = nil, nSNPTY = nil, nSDND = nil, nSMCR = nil, nSCBA = nil, nSTMP_LIN = nil, nSCODEC_CNTRL = nil, nSMWI = nil, nSDC = nil, nSHOLD = nil, nSECT = nil, nSCFTB = nil, nSDAN = nil, nSSTOP_SECRET = nil, nSMCID = nil, nSEBO = nil, nSICO = nil, nSOUTG = nil, nSINQYH = nil, nSUINFO = nil, nSDN_CALL_OUT_ALLOW = nil, nSSIC = nil, nSSOC = nil, nSSETCFNRTIME = nil, nSCFS = nil, nSCFSB = nil, nSFAX = nil, nSABRC = nil, nSACRTOVM = nil, nSPREPAID = nil, nSCRBT = nil, nSICB = nil, nSMRINGING = nil, nSCIS = nil, nSCBEG = nil, nSCOLP = nil, nSCOLR = nil, nSCOLPOVR = nil, nSBAOC = nil, nSBOIC = nil, nSBOICEXHC = nil, nSBAIC = nil, nSBICROM = nil, nSSPEED_DIAL = nil, nSSD1D = nil, nSSD2D = nil, nSGRNCALL = nil, nSCPARK = nil, nSGAA = nil, nSQSNS = nil, nSMSN = nil, nSHOTLINE = nil, nSAOC_S = nil, nSNIGHTSRV = nil, nSBACKNUM = nil, nSAUTOCON = nil, nSCAMPON = nil, nSCTD = nil, nSCLICKHOLD = nil, nSQUEUE = nil, nSSANSWER = nil, nSICENCF = nil, nSCFGO = nil, nSCECT = nil, nSCTGO = nil, nSCTIO = nil, nSSETBUSY = nil, nSOVERSTEP = nil, nSABSENT = nil, nSMONITOR = nil, nSFMONITOR = nil, nSDISCNT = nil, nSFDISCNT = nil, nSINSERT = nil, nSFINSERT = nil, nSASI = nil, nSPWCB = nil, nSRD = nil, nSLCPS = nil, nSNCPS = nil, nSICPS = nil, nSHCPS = nil, nSCBCLOCK = nil, nSMINIBAR = nil, nSMCN = nil, nSDSTR = nil, nSOPRREG = nil, nSONEKEY = nil, nSINBOUND = nil, nSOUTBOUND = nil, nSCALLERID = nil, nSCUN = nil, nSIPTVVC = nil, nSNP = nil, nSSEC = nil, nSSECSTA = nil, nSHRCN = nil, nSSB = nil, nSSCCA = nil, nSCCS = nil, nSOCCR = nil, nSIMSMS = nil, lCO = nil, lC = nil, lCT = nil, nTT = nil, iTT = nil, iCTX = nil, oCTX = nil, iNTT = nil, iITT = nil, iCLT = nil, iCDDD = nil, iCIDD = nil, iOLT = nil, cTLCO = nil, cTLCT = nil, cTLD = nil, cTINTNANP = nil, cTINTWORLD = nil, cTDA = nil, cTOSM = nil, cTOSP = nil, cTOSP1 = nil, cCO1 = nil, cCO2 = nil, cCO3 = nil, cCO4 = nil, cCO5 = nil, cCO6 = nil, cCO7 = nil, cCO8 = nil, cCO9 = nil, cCO10 = nil, cCO11 = nil, cCO12 = nil, cCO13 = nil, cCO14 = nil, cCO15 = nil, cCO16 = nil, cCO17 = nil, cCO18 = nil, cCO19 = nil, cCO20 = nil, cCO21 = nil, cCO22 = nil, cCO23 = nil, cCO24 = nil, cCO25 = nil, cCO26 = nil, cCO27 = nil, cCO28 = nil, cCO29 = nil, cCO30 = nil, cCO31 = nil, cCO32 = nil, hIGHENTCO = nil, oPERATOR = nil, sUPYSRV = nil, iDDCI = nil, nTCI = nil, lTCI = nil, rSC = nil, cIG = nil, oUTRST = nil, iNRST = nil, nOAT = nil, rINGCOUNT = nil, vMAIND = nil, vDMAIND = nil, tGRP = nil, tIDHLD = nil, tIDCW = nil, sCF = nil, lMTGRP = nil, fLBGRP = nil, sLBGRP = nil, cOP = nil, g711_64K_A_LAW = nil, g711_64K_U_LAW = nil, g722 = nil, g723 = nil, g726 = nil, g728 = nil, g729 = nil, cODEC_MP4A = nil, cODEC2833 = nil, cODEC2198 = nil, g726_40 = nil, g726_32 = nil, g726_24 = nil, g726_16 = nil, aMR = nil, cLEARMODE = nil, iLBC = nil, sPEEX = nil, g729EV = nil, eVRC = nil, eVRCB = nil, h261 = nil, h263 = nil, cODEC_MP4V = nil, h264 = nil, t38 = nil, t120 = nil, g711A_VBD = nil, g711U_VBD = nil, g726_VBD = nil, g726_40_VBD = nil, g726_32_VBD = nil, g726_24_VBD = nil, g726_16_VBD = nil, wIND_BAND_AMR = nil, gSM610 = nil, h263_2000 = nil, bROADVOICE_32 = nil, uNKNOWN_CODEC = nil, aCODEC = nil, vCODEC = nil, pOLIDX = nil, nCPI = nil, iCPI = nil, hCPI = nil, eBOCL = nil, eBOPL = nil, eBOIT = nil, rM = nil, cPC = nil, pCHG = nil, tFPT = nil, cHT = nil, mCIDMODE = nil, mCIDCMODE = nil, mCIDAMODE = nil, pREPAIDIDX = nil, cRBTID = nil, oDBBICTYPE = nil, oDBBOCTYPE = nil, oDBBARTYPE = nil, oDBSS = nil, oDBBRCFTYPE = nil, oDBINFORM = nil, oDBENTAIN = nil, oDBPLMNBAR1 = nil, oDBPLMNBAR2 = nil, oDBPLMNBAR3 = nil, oDBPLMNBAR4 = nil, pNOTI = nil, mAXPARACALL = nil, aTSDTMBUSY = nil, cALLCOUNT = nil, cDNOTICALLER = nil, iSCHGFLAG = nil, cHC = nil, cUSER = nil, cGRP = nil, cUSERGRP = nil, sTCF = nil, cHARSC = nil, rEGUIDX = nil, sOCBFUNC = nil, sOCBPTONEIDX = nil, aDMINCBA = nil, aDCONTROL_DIVERSION = nil, dPR = nil, pRON = nil, cPCRUS = nil, cUSCAT = nil, sPT100REL = nil, aNALYSISMODE = nil, gRPIDX = nil, sCADDRIDX = nil, cDNOCB = nil, pBTSBR = nil, kVALUE = nil, iNPFIDX = nil)
  request = ADD_SBR.new(tel.iMPU_sip)
  request.lP = 0
  request.nSCLIP = 1 
  request.nSOIP = 1 
  request.iTT = 1
  request.cCO1 = 1
  request.cCO2 = 1
  request.cCO3 = 1
  request.cOP = '0000'
  request.cPCRUS = 1
  response = @serv_ATS.aDD_SBR(request)
  result_all[request] = response.result
  
  # Подсчитываем кол-во успешно выполненных команд
  result_successful_count = 0
  result_all.each_value do |value|
    result_successful_count +=1 if value.resultCode == '0'
  end

  # Формируем ключ :all с логическим значением true или false выполнены все команды без ошибок или с ошибками
  result_successful_count == result_all.size ? result_all[:all] = true : result_all[:all] = false
   
  result_all 
end

def delete_sub(tel)
  result_all = {} # Результаты выполнения всех команд
   
  # def initialize(sUBID = nil) 
  request = RMV_HSUB.new(tel.sUBID) 
  response = @serv_HSS.rMV_HSUB(request) 
  result_all[request] = response.result

  # Если у абнента нет IMPU, то и удалять авторизацию не нужно
  if tel.iMPI != "" 
	  # def initialize(iMPI = nil)  
	  request = RMV_HHDAINF.new(tel.iMPI) 
	  response = @serv_HSS.rMV_HHDAINF(request)  
	  result_all[request] = response.result
  end
  # Подсчитываем кол-во успешно выполненных команд
  result_successful_count = 0
  result_all.each_value do |value|
    result_successful_count +=1 if value.resultCode == '0'
  end

  # Формируем ключ :all с логическим значением true или false выполнены все команды без ошибок или с ошибками
  result_successful_count == result_all.size ? result_all[:all] = true : result_all[:all] = false
   
  result_all 
end


# Проверка существует ли абонет
def exist_HSUB?(tel)
  # Просмотр данных абонента
  # LST_HSUB:IMPI="+78314224001@nn.ims.volga.rt.ru"; 
  # def initialize(sUBID = nil, iMPI = nil, iMPU = nil)  
  request = LST_HSUB.new(nil, tel.iMPI) 
  response_HSUB = @serv_HSS.lST_HSUB(request)

  return false if response_HSUB.result.resultCode != '0'
  return true if response_HSUB.result.resultCode == '0'
end

# Проверка существует ли регистрация (авторизация) абонента
def exist_HHDAINF?(tel)
  # Просмотр данных авторизации
  # LST_HHDAINF:IMPI="+78314224001@nn.ims.volga.rt.ru"; 
  # def initialize(iMPI = nil, hUSERNAME = nil)  
  request = LST_HHDAINF.new(tel.iMPI) 
  response_HHDAINF = @serv_HSS.lST_HHDAINF(request) 
  
  return false if response_HHDAINF.result.resultCode != '0'
  return true if response_HHDAINF.result.resultCode == '0'
end

# Запрос данных со станции (по исходному Subscription ID)
  def query_subscriberIMS_data(tel)
    request = LST_HSUB.new(tel.sUBID) 
    response_HSUB = @serv_HSS.lST_HSUB(request)
	
	tel.iMPI = response_HSUB.result.resultData.table1[0].iMPI	
  end

# Формирование случайного пароля
def random_password(size = 8)
  chars = ['0'..'9','a'..'z','0'..'9','A'..'Z'].map{ |r| r.to_a }.flatten 
  Array.new(size){ chars[ rand( chars.size ) ] }.join
end
