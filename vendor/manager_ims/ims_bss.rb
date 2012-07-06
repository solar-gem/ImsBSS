#!/usr/bin/ruby

# Скрипт по созданию абонента или диапазона с абонентами

system("chcp 1251") # Устанавливаем в консоли Windows кодировку CP1251  (chcp 65001 utf-8)

require 'rubygems'


# Добавление в поиск частей программы директорию из которой запустили данный файл
WORK_DIR, DIR = File.dirname(__FILE__)
$:.unshift(File.dirname(__FILE__) + "/lib")



require 'subscriber_management'
require 'excel.rb'


# Шапка
puts '*' * 43
puts "(C)2010 Sintyalev Sergey <sintyalev@mail.ru>"
puts "Creating a subscriber to the IMS."
puts '*' * 43
puts


print 'Введите начальный номер телефона [78314224001/4224001][number1]: ' 
number1 = gets.chomp!
number1 = "7831#{number1}" if number1.length == 7
print 'Введите конечный номер телефона [78314224001/4224001][number2]: '
number2 = gets.chomp!
number2 = "7831#{number2}" if number2.length == 7
p number2 = number1 if number2 == ''

if number1.length != 11 && number2.length != 11
  puts 'Ошибка формата ввода номера' 
  exit
end

range_numbers = number1..number2

range_numbers.each do |number|
  print "#{number}: " 
  puts passw = random_password(10)
  tel = SubscriberIMS.new("+#{number}", "nn.ims.volga.rt.ru", passw)
  create_sub(tel)[:all] ? puts("Номер +#{number} успешно создан") : puts("Номер +#{number} создан с ошибками")
  #create_excel(tel, DIR)
  #delete_sub(tel)[:all] ? puts("Номер +#{number} успешно удален") : puts("Номер +#{number} удален с ошибками")
end



#tel = SubscriberIMS.new("+78314224001", "nn.ims.volga.rt.ru", random_password(10))

#p delete_sub(tel)
# create_sub(tel)

#create_excel(tel)


#create_sub(tel)

#puts "Абонент: #{exist_HSUB?(tel)}"
#puts "Авторизация: #{exist_HHDAINF?(tel)}"

#delete_sub("+78314224001", "nn.ims.volga.rt.ru")
#create_sub("+78314224001", "nn.ims.volga.rt.ru", "QhDpEEYyh4")
 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

#puts '*' * 50
#p serv.headerhandler.methods

# Формируем запрос (iMPU = nil, tEMPLATEIDX = nil, dSPIDX = nil, lP = nil, cSC = nil, uNAME = nil, uTYPE = nil, vCCFLAG = nil, vTFLAG = nil, nSCFU = nil, nSCFUVM = nil, nSCFB = nil, nSCFBVM = nil, nSCFNR = nil, nSCFNRVM = nil, nSCFNL = nil, nSCFNLVM = nil, nSCD = nil, nSCDVM = nil, nSCFNRC = nil, nSCFNRCVM = nil, nSCLIP = nil, nSCIDCW = nil, nSRIO = nil, nSCNIP = nil, nSCLIR = nil, nSRIP = nil, nSCNIR = nil, nSRID = nil, nSNRID = nil, nSRND = nil, nSNRND = nil, nSCW = nil, nSCCW = nil, nSOIP = nil, nSACRM = nil, nSGOIR = nil, nSMOIR = nil, nSTIP = nil, nSTIR = nil, nSOTIR = nil, nSCLIPNOSCREENING = nil, nSCR = nil, nSWAKE_UP = nil, nSAOC_D = nil, nSAOC_E = nil, nSXEXH = nil, nSXEGJ = nil, nSCWCFNR = nil, nSIIFC = nil, nSDN_CALL_OUT_BAR = nil, nSCCBS = nil, nSCCNR = nil, nSCCBSR = nil, nSCCNRR = nil, nS3PTY = nil, nSNPTY = nil, nSDND = nil, nSMCR = nil, nSCBA = nil, nSTMP_LIN = nil, nSCODEC_CNTRL = nil, nSMWI = nil, nSDC = nil, nSHOLD = nil, nSECT = nil, nSCFTB = nil, nSDAN = nil, nSSTOP_SECRET = nil, nSMCID = nil, nSEBO = nil, nSICO = nil, nSOUTG = nil, nSINQYH = nil, nSUINFO = nil, nSDN_CALL_OUT_ALLOW = nil, nSSIC = nil, nSSOC = nil, nSSETCFNRTIME = nil, nSCFS = nil, nSCFSB = nil, nSFAX = nil, nSABRC = nil, nSACRTOVM = nil, nSPREPAID = nil, nSCRBT = nil, nSICB = nil, nSMRINGING = nil, nSCIS = nil, nSCBEG = nil, nSCOLP = nil, nSCOLR = nil, nSCOLPOVR = nil, nSBAOC = nil, nSBOIC = nil, nSBOICEXHC = nil, nSBAIC = nil, nSBICROM = nil, nSSPEED_DIAL = nil, nSSD1D = nil, nSSD2D = nil, nSGRNCALL = nil, nSCPARK = nil, nSGAA = nil, nSQSNS = nil, nSMSN = nil, nSHOTLINE = nil, nSAOC_S = nil, nSNIGHTSRV = nil, nSBACKNUM = nil, nSAUTOCON = nil, nSCAMPON = nil, nSCTD = nil, nSCLICKHOLD = nil, nSQUEUE = nil, nSSANSWER = nil, nSICENCF = nil, nSCFGO = nil, nSCECT = nil, nSCTGO = nil, nSCTIO = nil, nSSETBUSY = nil, nSOVERSTEP = nil, nSABSENT = nil, nSMONITOR = nil, nSFMONITOR = nil, nSDISCNT = nil, nSFDISCNT = nil, nSINSERT = nil, nSFINSERT = nil, nSASI = nil, nSPWCB = nil, nSRD = nil, nSLCPS = nil, nSNCPS = nil, nSICPS = nil, nSCBCLOCK = nil, nSMINIBAR = nil, nSMCN = nil, nSDSTR = nil, nSOPRREG = nil, nSONEKEY = nil, nSINBOUND = nil, nSOUTBOUND = nil, nSCALLERID = nil, nSCUN = nil, nSIPTVVC = nil, nSNP = nil, nSSEC = nil, nSSECSTA = nil, nSHRCN = nil, nSSB = nil, nSSCCA = nil, nSCCS = nil, nSOCCR = nil, lCO = nil, lC = nil, lCT = nil, nTT = nil, iTT = nil, iCTX = nil, oCTX = nil, iNTT = nil, iITT = nil, iCLT = nil, iCDDD = nil, iCIDD = nil, iOLT = nil, cTLCO = nil, cTLCT = nil, cTLD = nil, cTINTNANP = nil, cTINTWORLD = nil, cTDA = nil, cTOSM = nil, cTOSP = nil, cTOSP1 = nil, cCO1 = nil, cCO2 = nil, cCO3 = nil, cCO4 = nil, cCO5 = nil, cCO6 = nil, cCO7 = nil, cCO8 = nil, cCO9 = nil, cCO10 = nil, cCO11 = nil, cCO12 = nil, cCO13 = nil, cCO14 = nil, cCO15 = nil, cCO16 = nil, hIGHENTCO = nil, oPERATOR = nil, sUPYSRV = nil, iDDCI = nil, nTCI = nil, lTCI = nil, rSC = nil, cIG = nil, oUTRST = nil, iNRST = nil, nOAT = nil, rINGCOUNT = nil, vMAIND = nil, vDMAIND = nil, tGRP = nil, tIDHLD = nil, tIDCW = nil, sCF = nil, lMTGRP = nil, fLBGRP = nil, sLBGRP = nil, cOP = nil, g711_64K_A_LAW = nil, g711_64K_U_LAW = nil, g722 = nil, g723 = nil, g726 = nil, g728 = nil, g729 = nil, cODEC_MP4A = nil, cODEC2833 = nil, cODEC2198 = nil, g726_40 = nil, g726_32 = nil, g726_24 = nil, g726_16 = nil, aMR = nil, cLEARMODE = nil, iLBC = nil, sPEEX = nil, g729EV = nil, eVRC = nil, eVRCB = nil, h261 = nil, h263 = nil, cODEC_MP4V = nil, h264 = nil, t38 = nil, t120 = nil, g711A_VBD = nil, g711U_VBD = nil, g726_VBD = nil, g726_40_VBD = nil, g726_32_VBD = nil, g726_24_VBD = nil, g726_16_VBD = nil, wIND_BAND_AMR = nil, gSM610 = nil, h263_2000 = nil, bROADVOICE_32 = nil, uNKNOWN_CODEC = nil, aCODEC = nil, vCODEC = nil, pOLIDX = nil, nCPI = nil, iCPI = nil, eBOCL = nil, eBOPL = nil, eBOIT = nil, rM = nil, cPC = nil, pCHG = nil, tFPT = nil, cHT = nil, mCIDMODE = nil, mCIDCMODE = nil, mCIDAMODE = nil, pREPAIDIDX = nil, cRBTID = nil, oDBBICTYPE = nil, oDBBOCTYPE = nil, oDBBARTYPE = nil, oDBSS = nil, oDBBRCFTYPE = nil, oDBINFORM = nil, oDBENTAIN = nil, oDBPLMNBAR1 = nil, oDBPLMNBAR2 = nil, oDBPLMNBAR3 = nil, oDBPLMNBAR4 = nil, pNOTI = nil, mAXPARACALL = nil, aTSDTMBUSY = nil, cALLCOUNT = nil, cDNOTICALLER = nil, iSCHGFLAG = nil, cHC = nil, cUSER = nil, cGRP = nil, cUSERGRP = nil, sTCF = nil, cHARSC = nil, rEGUIDX = nil, sOCBFUNC = nil, sOCBPTONEIDX = nil, aDMINCBA = nil, aDCONTROL_DIVERSION = nil, dPR = nil, pRON = nil, cPCRUS = nil, cUSCAT = nil, sPT100REL = nil, aNALYSISMODE = nil)
###request = LST_SBR.new(nil, "tel:+78314224007") ### GetCursOnDateXML.new(DateTime.now)
# Отправляем запрос на сервер и получаем ответ
#p serv



###response = serv.lST_SBR(request)


#request = LST_CXSBRRequest.new(nil, "55")
#response = @serv_ATS.lST_CXSBR(request)


#p response

#puts '*' * 50
#puts '*' * 50
#p @serv_ATS.headerhandler.methods
#puts '*' * 50
#p @serv_ATS.headerhandler

#puts '*' * 50
#puts '*' * 50
#p @serv_ATS.headerhandler.delete messageID_ATS
#puts '*' * 50
#p @serv_ATS.headerhandler

#messageID_ATS = SoapHeader_MessageID.new(101)
#@serv_ATS.headerhandler << messageID_ATS
#request = LST_SBR.new(nil, "tel:+78314224007")
#response = @serv_ATS.lST_SBR(request)


# Формируем запрос (sUBID = nil, iMPI = nil, iMPU = nil, sHARED = nil, iRSID = nil, aLIASID = nil, dEFIMPU = nil)
#request = LST_HSUB.new(nil, nil, "tel:+78314224007") ### GetCursOnDateXML.new(DateTime.now)
# Отправляем запрос на сервер и получаем ответ
#p serv


#puts '*' * 50
#puts '*' * 50
#puts '*' * 50
#puts '*' * 50
#p response = @serv_HSS.lST_HSUB(request)




#p serv.headerhandler
# Анализируем ответ и выводим результат
#items = response.getCursOnDateXMLResult.valuteData.valuteCursOnDate
#items.each do |item|  
#	puts "---------------------------------"  
#	puts "Название: " + item['Vname'].strip  
#	puts "Числовой код: " + item['Vcode']  
#	puts "Символьный код: " + item['VchCode']  	
#	puts "Номинал: " + item['Vnom']  
#	puts "Курс: " + item['Vcurs']
#end

# ADD HHDAINF:IMPI="+78314224004@nn.ims.volga.rt.ru",HUSERNAME="+78314224004@nn.ims.volga.rt.ru",PWD=123456; 
# def initialize(iMPI = nil, hUSERNAME = nil, pWD = nil)
#request = ADD_HHDAINF.new("+78314224044@nn.ims.volga.rt.ru", "+78314224044@nn.ims.volga.rt.ru", "123456") 
#p response = @serv_HSS.aDD_HHDAINF(request)



puts 'THE END'
gets

