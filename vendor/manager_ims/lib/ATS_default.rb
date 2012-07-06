require 'xsd/qname'

# {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   sessionID - SOAP::SOAPUnsignedInt
#   mEID - SOAP::SOAPUnsignedInt
#   sourceMEID - SOAP::SOAPUnsignedInt
#   serialID - SOAP::SOAPUnsignedInt
#   userName - SOAP::SOAPString
#   sync - SOAP::SOAPUnsignedInt
#   reserve - SOAP::SOAPString
class RequestCommonInfoType
  attr_accessor :sessionID
  attr_accessor :mEID
  attr_accessor :sourceMEID
  attr_accessor :serialID
  attr_accessor :userName
  attr_accessor :sync
  attr_accessor :reserve

  def initialize(sessionID = nil, mEID = nil, sourceMEID = nil, serialID = nil, userName = nil, sync = nil, reserve = nil)
    @sessionID = sessionID
    @mEID = mEID
    @sourceMEID = sourceMEID
    @serialID = serialID
    @userName = userName
    @sync = sync
    @reserve = reserve
  end
end

# {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   commandName - SOAP::SOAPString
#   sessionID - SOAP::SOAPUnsignedInt
#   requestID - SOAP::SOAPUnsignedInt
#   mEID - SOAP::SOAPUnsignedInt
#   sourceMEID - SOAP::SOAPUnsignedInt
#   serialID - SOAP::SOAPUnsignedInt
#   timeStamp - SOAP::SOAPString
#   svrType - SOAP::SOAPString
class ResponseCommonInfoType
  attr_accessor :commandName
  attr_accessor :sessionID
  attr_accessor :requestID
  attr_accessor :mEID
  attr_accessor :sourceMEID
  attr_accessor :serialID
  attr_accessor :timeStamp
  attr_accessor :svrType

  def initialize(commandName = nil, sessionID = nil, requestID = nil, mEID = nil, sourceMEID = nil, serialID = nil, timeStamp = nil, svrType = nil)
    @commandName = commandName
    @sessionID = sessionID
    @requestID = requestID
    @mEID = mEID
    @sourceMEID = sourceMEID
    @serialID = serialID
    @timeStamp = timeStamp
    @svrType = svrType
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_SBRType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_SBRTables
class LST_SBRType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_SBRTables
#   table1 - LST_SBRTable1
class LST_SBRTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_SBRTable1
class LST_SBRTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_SBRStruct1
#   iMPU - (any)
#   tEMPLATEIDX - (any)
#   dSPIDX - (any)
#   lP - (any)
#   cSC - (any)
#   uNAME - (any)
#   uTYPE - (any)
#   vCCFLAG - (any)
#   vTFLAG - (any)
#   nSCFU - (any)
#   nSCFUVM - (any)
#   nSCFB - (any)
#   nSCFBVM - (any)
#   nSCFNR - (any)
#   nSCFNRVM - (any)
#   nSCFNL - (any)
#   nSCFNLVM - (any)
#   nSCD - (any)
#   nSCDVM - (any)
#   nSCFNRC - (any)
#   nSCFNRCVM - (any)
#   nSCLIP - (any)
#   nSCIDCW - (any)
#   nSRIO - (any)
#   nSCNIP - (any)
#   nSCLIR - (any)
#   nSRIP - (any)
#   nSCNIR - (any)
#   nSRID - (any)
#   nSNRID - (any)
#   nSRND - (any)
#   nSNRND - (any)
#   nSCW - (any)
#   nSCCW - (any)
#   nSOIP - (any)
#   nSACRM - (any)
#   nSGOIR - (any)
#   nSMOIR - (any)
#   nSTIP - (any)
#   nSTIR - (any)
#   nSOTIR - (any)
#   nSCLIPNOSCREENING - (any)
#   nSCR - (any)
#   nSWAKE_UP - (any)
#   nSAOC_D - (any)
#   nSAOC_E - (any)
#   nSXEXH - (any)
#   nSXEGJ - (any)
#   nSCWCFNR - (any)
#   nSIIFC - (any)
#   nSDN_CALL_OUT_BAR - (any)
#   nSCCBS - (any)
#   nSCCNR - (any)
#   nSCCBSR - (any)
#   nSCCNRR - (any)
#   nS3PTY - (any)
#   nSNPTY - (any)
#   nSDND - (any)
#   nSMCR - (any)
#   nSCBA - (any)
#   nSTMP_LIN - (any)
#   nSCODEC_CNTRL - (any)
#   nSMWI - (any)
#   nSDC - (any)
#   nSHOLD - (any)
#   nSECT - (any)
#   nSCFTB - (any)
#   nSDAN - (any)
#   nSSTOP_SECRET - (any)
#   nSMCID - (any)
#   nSEBO - (any)
#   nSICO - (any)
#   nSOUTG - (any)
#   nSINQYH - (any)
#   nSUINFO - (any)
#   nSDN_CALL_OUT_ALLOW - (any)
#   nSSIC - (any)
#   nSSOC - (any)
#   nSSETCFNRTIME - (any)
#   nSCFS - (any)
#   nSCFSB - (any)
#   nSFAX - (any)
#   nSABRC - (any)
#   nSACRTOVM - (any)
#   nSPREPAID - (any)
#   nSCRBT - (any)
#   nSICB - (any)
#   nSMRINGING - (any)
#   nSCIS - (any)
#   nSCBEG - (any)
#   nSCOLP - (any)
#   nSCOLR - (any)
#   nSCOLPOVR - (any)
#   nSBAOC - (any)
#   nSBOIC - (any)
#   nSBOICEXHC - (any)
#   nSBAIC - (any)
#   nSBICROM - (any)
#   nSSPEED_DIAL - (any)
#   nSSD1D - (any)
#   nSSD2D - (any)
#   nSGRNCALL - (any)
#   nSCPARK - (any)
#   nSGAA - (any)
#   nSQSNS - (any)
#   nSMSN - (any)
#   nSHOTLINE - (any)
#   nSAOC_S - (any)
#   nSNIGHTSRV - (any)
#   nSBACKNUM - (any)
#   nSAUTOCON - (any)
#   nSCAMPON - (any)
#   nSCTD - (any)
#   nSCLICKHOLD - (any)
#   nSQUEUE - (any)
#   nSSANSWER - (any)
#   nSICENCF - (any)
#   nSCFGO - (any)
#   nSCECT - (any)
#   nSCTGO - (any)
#   nSCTIO - (any)
#   nSSETBUSY - (any)
#   nSOVERSTEP - (any)
#   nSABSENT - (any)
#   nSMONITOR - (any)
#   nSFMONITOR - (any)
#   nSDISCNT - (any)
#   nSFDISCNT - (any)
#   nSINSERT - (any)
#   nSFINSERT - (any)
#   nSASI - (any)
#   nSPWCB - (any)
#   nSRD - (any)
#   nSLCPS - (any)
#   nSNCPS - (any)
#   nSICPS - (any)
#   nSHCPS - (any)
#   nSCBCLOCK - (any)
#   nSMINIBAR - (any)
#   nSMCN - (any)
#   nSDSTR - (any)
#   nSOPRREG - (any)
#   nSONEKEY - (any)
#   nSINBOUND - (any)
#   nSOUTBOUND - (any)
#   nSCALLERID - (any)
#   nSCUN - (any)
#   nSIPTVVC - (any)
#   nSNP - (any)
#   nSSEC - (any)
#   nSSECSTA - (any)
#   nSHRCN - (any)
#   nSSB - (any)
#   nSSCCA - (any)
#   nSCCS - (any)
#   nSOCCR - (any)
#   nSIMSMS - (any)
#   lCO - (any)
#   lC - (any)
#   lCT - (any)
#   nTT - (any)
#   iTT - (any)
#   iCTX - (any)
#   oCTX - (any)
#   iNTT - (any)
#   iITT - (any)
#   iCLT - (any)
#   iCDDD - (any)
#   iCIDD - (any)
#   iOLT - (any)
#   cTLCO - (any)
#   cTLCT - (any)
#   cTLD - (any)
#   cTINTNANP - (any)
#   cTINTWORLD - (any)
#   cTDA - (any)
#   cTOSM - (any)
#   cTOSP - (any)
#   cTOSP1 - (any)
#   cCO1 - (any)
#   cCO2 - (any)
#   cCO3 - (any)
#   cCO4 - (any)
#   cCO5 - (any)
#   cCO6 - (any)
#   cCO7 - (any)
#   cCO8 - (any)
#   cCO9 - (any)
#   cCO10 - (any)
#   cCO11 - (any)
#   cCO12 - (any)
#   cCO13 - (any)
#   cCO14 - (any)
#   cCO15 - (any)
#   cCO16 - (any)
#   cCO17 - (any)
#   cCO18 - (any)
#   cCO19 - (any)
#   cCO20 - (any)
#   cCO21 - (any)
#   cCO22 - (any)
#   cCO23 - (any)
#   cCO24 - (any)
#   cCO25 - (any)
#   cCO26 - (any)
#   cCO27 - (any)
#   cCO28 - (any)
#   cCO29 - (any)
#   cCO30 - (any)
#   cCO31 - (any)
#   cCO32 - (any)
#   hIGHENTCO - (any)
#   oPERATOR - (any)
#   sUPYSRV - (any)
#   iDDCI - (any)
#   nTCI - (any)
#   lTCI - (any)
#   rSC - (any)
#   cIG - (any)
#   oUTRST - (any)
#   iNRST - (any)
#   nOAT - (any)
#   rINGCOUNT - (any)
#   vMAIND - (any)
#   vDMAIND - (any)
#   tGRP - (any)
#   tIDHLD - (any)
#   tIDCW - (any)
#   sCF - (any)
#   lMTGRP - (any)
#   fLBGRP - (any)
#   sLBGRP - (any)
#   cOP - (any)
#   g711_64K_A_LAW - (any)
#   g711_64K_U_LAW - (any)
#   g722 - (any)
#   g723 - (any)
#   g726 - (any)
#   g728 - (any)
#   g729 - (any)
#   cODEC_MP4A - (any)
#   cODEC2833 - (any)
#   cODEC2198 - (any)
#   g726_40 - (any)
#   g726_32 - (any)
#   g726_24 - (any)
#   g726_16 - (any)
#   aMR - (any)
#   cLEARMODE - (any)
#   iLBC - (any)
#   sPEEX - (any)
#   g729EV - (any)
#   eVRC - (any)
#   eVRCB - (any)
#   h261 - (any)
#   h263 - (any)
#   cODEC_MP4V - (any)
#   h264 - (any)
#   t38 - (any)
#   t120 - (any)
#   g711A_VBD - (any)
#   g711U_VBD - (any)
#   g726_VBD - (any)
#   g726_40_VBD - (any)
#   g726_32_VBD - (any)
#   g726_24_VBD - (any)
#   g726_16_VBD - (any)
#   wIND_BAND_AMR - (any)
#   gSM610 - (any)
#   h263_2000 - (any)
#   bROADVOICE_32 - (any)
#   uNKNOWN_CODEC - (any)
#   aCODEC - (any)
#   vCODEC - (any)
#   pOLIDX - (any)
#   nCPI - (any)
#   iCPI - (any)
#   hCPI - (any)
#   eBOCL - (any)
#   eBOPL - (any)
#   eBOIT - (any)
#   rM - (any)
#   cPC - (any)
#   pCHG - (any)
#   tFPT - (any)
#   cHT - (any)
#   mCIDMODE - (any)
#   mCIDCMODE - (any)
#   mCIDAMODE - (any)
#   pREPAIDIDX - (any)
#   cRBTID - (any)
#   oDBBICTYPE - (any)
#   oDBBOCTYPE - (any)
#   oDBBARTYPE - (any)
#   oDBSS - (any)
#   oDBBRCFTYPE - (any)
#   oDBINFORM - (any)
#   oDBENTAIN - (any)
#   oDBPLMNBAR1 - (any)
#   oDBPLMNBAR2 - (any)
#   oDBPLMNBAR3 - (any)
#   oDBPLMNBAR4 - (any)
#   pNOTI - (any)
#   mAXPARACALL - (any)
#   aTSDTMBUSY - (any)
#   cALLCOUNT - (any)
#   cDNOTICALLER - (any)
#   iSCHGFLAG - (any)
#   cHC - (any)
#   cUSER - (any)
#   cGRP - (any)
#   cUSERGRP - (any)
#   sTCF - (any)
#   cHARSC - (any)
#   rEGUIDX - (any)
#   sOCBFUNC - (any)
#   sOCBPTONEIDX - (any)
#   aDMINCBA - (any)
#   aDCONTROL_DIVERSION - (any)
#   dPR - (any)
#   pRON - (any)
#   cPCRUS - (any)
#   cUSCAT - (any)
#   sPT100REL - (any)
#   aNALYSISMODE - (any)
#   gRPIDX - (any)
#   sCADDRIDX - (any)
#   cDNOCB - (any)
#   pBTSBR - LST_SBRStruct1::PBTSBR
#   kVALUE - (any)
#   iNPFIDX - (any)
class LST_SBRStruct1

  # inner class for member: PBTSBR
  # {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}PBTSBR
  #   pBXID - (any)
  #   iSPILOT - (any)
  #   iSSHARESRV - (any)
  class PBTSBR
    attr_accessor :pBXID
    attr_accessor :iSPILOT
    attr_accessor :iSSHARESRV

    def initialize(pBXID = nil, iSPILOT = nil, iSSHARESRV = nil)
      @pBXID = pBXID
      @iSPILOT = iSPILOT
      @iSSHARESRV = iSSHARESRV
    end
  end

  attr_accessor :iMPU
  attr_accessor :tEMPLATEIDX
  attr_accessor :dSPIDX
  attr_accessor :lP
  attr_accessor :cSC
  attr_accessor :uNAME
  attr_accessor :uTYPE
  attr_accessor :vCCFLAG
  attr_accessor :vTFLAG
  attr_accessor :nSCFU
  attr_accessor :nSCFUVM
  attr_accessor :nSCFB
  attr_accessor :nSCFBVM
  attr_accessor :nSCFNR
  attr_accessor :nSCFNRVM
  attr_accessor :nSCFNL
  attr_accessor :nSCFNLVM
  attr_accessor :nSCD
  attr_accessor :nSCDVM
  attr_accessor :nSCFNRC
  attr_accessor :nSCFNRCVM
  attr_accessor :nSCLIP
  attr_accessor :nSCIDCW
  attr_accessor :nSRIO
  attr_accessor :nSCNIP
  attr_accessor :nSCLIR
  attr_accessor :nSRIP
  attr_accessor :nSCNIR
  attr_accessor :nSRID
  attr_accessor :nSNRID
  attr_accessor :nSRND
  attr_accessor :nSNRND
  attr_accessor :nSCW
  attr_accessor :nSCCW
  attr_accessor :nSOIP
  attr_accessor :nSACRM
  attr_accessor :nSGOIR
  attr_accessor :nSMOIR
  attr_accessor :nSTIP
  attr_accessor :nSTIR
  attr_accessor :nSOTIR
  attr_accessor :nSCLIPNOSCREENING
  attr_accessor :nSCR
  attr_accessor :nSWAKE_UP
  attr_accessor :nSAOC_D
  attr_accessor :nSAOC_E
  attr_accessor :nSXEXH
  attr_accessor :nSXEGJ
  attr_accessor :nSCWCFNR
  attr_accessor :nSIIFC
  attr_accessor :nSDN_CALL_OUT_BAR
  attr_accessor :nSCCBS
  attr_accessor :nSCCNR
  attr_accessor :nSCCBSR
  attr_accessor :nSCCNRR
  attr_accessor :nS3PTY
  attr_accessor :nSNPTY
  attr_accessor :nSDND
  attr_accessor :nSMCR
  attr_accessor :nSCBA
  attr_accessor :nSTMP_LIN
  attr_accessor :nSCODEC_CNTRL
  attr_accessor :nSMWI
  attr_accessor :nSDC
  attr_accessor :nSHOLD
  attr_accessor :nSECT
  attr_accessor :nSCFTB
  attr_accessor :nSDAN
  attr_accessor :nSSTOP_SECRET
  attr_accessor :nSMCID
  attr_accessor :nSEBO
  attr_accessor :nSICO
  attr_accessor :nSOUTG
  attr_accessor :nSINQYH
  attr_accessor :nSUINFO
  attr_accessor :nSDN_CALL_OUT_ALLOW
  attr_accessor :nSSIC
  attr_accessor :nSSOC
  attr_accessor :nSSETCFNRTIME
  attr_accessor :nSCFS
  attr_accessor :nSCFSB
  attr_accessor :nSFAX
  attr_accessor :nSABRC
  attr_accessor :nSACRTOVM
  attr_accessor :nSPREPAID
  attr_accessor :nSCRBT
  attr_accessor :nSICB
  attr_accessor :nSMRINGING
  attr_accessor :nSCIS
  attr_accessor :nSCBEG
  attr_accessor :nSCOLP
  attr_accessor :nSCOLR
  attr_accessor :nSCOLPOVR
  attr_accessor :nSBAOC
  attr_accessor :nSBOIC
  attr_accessor :nSBOICEXHC
  attr_accessor :nSBAIC
  attr_accessor :nSBICROM
  attr_accessor :nSSPEED_DIAL
  attr_accessor :nSSD1D
  attr_accessor :nSSD2D
  attr_accessor :nSGRNCALL
  attr_accessor :nSCPARK
  attr_accessor :nSGAA
  attr_accessor :nSQSNS
  attr_accessor :nSMSN
  attr_accessor :nSHOTLINE
  attr_accessor :nSAOC_S
  attr_accessor :nSNIGHTSRV
  attr_accessor :nSBACKNUM
  attr_accessor :nSAUTOCON
  attr_accessor :nSCAMPON
  attr_accessor :nSCTD
  attr_accessor :nSCLICKHOLD
  attr_accessor :nSQUEUE
  attr_accessor :nSSANSWER
  attr_accessor :nSICENCF
  attr_accessor :nSCFGO
  attr_accessor :nSCECT
  attr_accessor :nSCTGO
  attr_accessor :nSCTIO
  attr_accessor :nSSETBUSY
  attr_accessor :nSOVERSTEP
  attr_accessor :nSABSENT
  attr_accessor :nSMONITOR
  attr_accessor :nSFMONITOR
  attr_accessor :nSDISCNT
  attr_accessor :nSFDISCNT
  attr_accessor :nSINSERT
  attr_accessor :nSFINSERT
  attr_accessor :nSASI
  attr_accessor :nSPWCB
  attr_accessor :nSRD
  attr_accessor :nSLCPS
  attr_accessor :nSNCPS
  attr_accessor :nSICPS
  attr_accessor :nSHCPS
  attr_accessor :nSCBCLOCK
  attr_accessor :nSMINIBAR
  attr_accessor :nSMCN
  attr_accessor :nSDSTR
  attr_accessor :nSOPRREG
  attr_accessor :nSONEKEY
  attr_accessor :nSINBOUND
  attr_accessor :nSOUTBOUND
  attr_accessor :nSCALLERID
  attr_accessor :nSCUN
  attr_accessor :nSIPTVVC
  attr_accessor :nSNP
  attr_accessor :nSSEC
  attr_accessor :nSSECSTA
  attr_accessor :nSHRCN
  attr_accessor :nSSB
  attr_accessor :nSSCCA
  attr_accessor :nSCCS
  attr_accessor :nSOCCR
  attr_accessor :nSIMSMS
  attr_accessor :lCO
  attr_accessor :lC
  attr_accessor :lCT
  attr_accessor :nTT
  attr_accessor :iTT
  attr_accessor :iCTX
  attr_accessor :oCTX
  attr_accessor :iNTT
  attr_accessor :iITT
  attr_accessor :iCLT
  attr_accessor :iCDDD
  attr_accessor :iCIDD
  attr_accessor :iOLT
  attr_accessor :cTLCO
  attr_accessor :cTLCT
  attr_accessor :cTLD
  attr_accessor :cTINTNANP
  attr_accessor :cTINTWORLD
  attr_accessor :cTDA
  attr_accessor :cTOSM
  attr_accessor :cTOSP
  attr_accessor :cTOSP1
  attr_accessor :cCO1
  attr_accessor :cCO2
  attr_accessor :cCO3
  attr_accessor :cCO4
  attr_accessor :cCO5
  attr_accessor :cCO6
  attr_accessor :cCO7
  attr_accessor :cCO8
  attr_accessor :cCO9
  attr_accessor :cCO10
  attr_accessor :cCO11
  attr_accessor :cCO12
  attr_accessor :cCO13
  attr_accessor :cCO14
  attr_accessor :cCO15
  attr_accessor :cCO16
  attr_accessor :cCO17
  attr_accessor :cCO18
  attr_accessor :cCO19
  attr_accessor :cCO20
  attr_accessor :cCO21
  attr_accessor :cCO22
  attr_accessor :cCO23
  attr_accessor :cCO24
  attr_accessor :cCO25
  attr_accessor :cCO26
  attr_accessor :cCO27
  attr_accessor :cCO28
  attr_accessor :cCO29
  attr_accessor :cCO30
  attr_accessor :cCO31
  attr_accessor :cCO32
  attr_accessor :hIGHENTCO
  attr_accessor :oPERATOR
  attr_accessor :sUPYSRV
  attr_accessor :iDDCI
  attr_accessor :nTCI
  attr_accessor :lTCI
  attr_accessor :rSC
  attr_accessor :cIG
  attr_accessor :oUTRST
  attr_accessor :iNRST
  attr_accessor :nOAT
  attr_accessor :rINGCOUNT
  attr_accessor :vMAIND
  attr_accessor :vDMAIND
  attr_accessor :tGRP
  attr_accessor :tIDHLD
  attr_accessor :tIDCW
  attr_accessor :sCF
  attr_accessor :lMTGRP
  attr_accessor :fLBGRP
  attr_accessor :sLBGRP
  attr_accessor :cOP
  attr_accessor :g711_64K_A_LAW
  attr_accessor :g711_64K_U_LAW
  attr_accessor :g722
  attr_accessor :g723
  attr_accessor :g726
  attr_accessor :g728
  attr_accessor :g729
  attr_accessor :cODEC_MP4A
  attr_accessor :cODEC2833
  attr_accessor :cODEC2198
  attr_accessor :g726_40
  attr_accessor :g726_32
  attr_accessor :g726_24
  attr_accessor :g726_16
  attr_accessor :aMR
  attr_accessor :cLEARMODE
  attr_accessor :iLBC
  attr_accessor :sPEEX
  attr_accessor :g729EV
  attr_accessor :eVRC
  attr_accessor :eVRCB
  attr_accessor :h261
  attr_accessor :h263
  attr_accessor :cODEC_MP4V
  attr_accessor :h264
  attr_accessor :t38
  attr_accessor :t120
  attr_accessor :g711A_VBD
  attr_accessor :g711U_VBD
  attr_accessor :g726_VBD
  attr_accessor :g726_40_VBD
  attr_accessor :g726_32_VBD
  attr_accessor :g726_24_VBD
  attr_accessor :g726_16_VBD
  attr_accessor :wIND_BAND_AMR
  attr_accessor :gSM610
  attr_accessor :h263_2000
  attr_accessor :bROADVOICE_32
  attr_accessor :uNKNOWN_CODEC
  attr_accessor :aCODEC
  attr_accessor :vCODEC
  attr_accessor :pOLIDX
  attr_accessor :nCPI
  attr_accessor :iCPI
  attr_accessor :hCPI
  attr_accessor :eBOCL
  attr_accessor :eBOPL
  attr_accessor :eBOIT
  attr_accessor :rM
  attr_accessor :cPC
  attr_accessor :pCHG
  attr_accessor :tFPT
  attr_accessor :cHT
  attr_accessor :mCIDMODE
  attr_accessor :mCIDCMODE
  attr_accessor :mCIDAMODE
  attr_accessor :pREPAIDIDX
  attr_accessor :cRBTID
  attr_accessor :oDBBICTYPE
  attr_accessor :oDBBOCTYPE
  attr_accessor :oDBBARTYPE
  attr_accessor :oDBSS
  attr_accessor :oDBBRCFTYPE
  attr_accessor :oDBINFORM
  attr_accessor :oDBENTAIN
  attr_accessor :oDBPLMNBAR1
  attr_accessor :oDBPLMNBAR2
  attr_accessor :oDBPLMNBAR3
  attr_accessor :oDBPLMNBAR4
  attr_accessor :pNOTI
  attr_accessor :mAXPARACALL
  attr_accessor :aTSDTMBUSY
  attr_accessor :cALLCOUNT
  attr_accessor :cDNOTICALLER
  attr_accessor :iSCHGFLAG
  attr_accessor :cHC
  attr_accessor :cUSER
  attr_accessor :cGRP
  attr_accessor :cUSERGRP
  attr_accessor :sTCF
  attr_accessor :cHARSC
  attr_accessor :rEGUIDX
  attr_accessor :sOCBFUNC
  attr_accessor :sOCBPTONEIDX
  attr_accessor :aDMINCBA
  attr_accessor :aDCONTROL_DIVERSION
  attr_accessor :dPR
  attr_accessor :pRON
  attr_accessor :cPCRUS
  attr_accessor :cUSCAT
  attr_accessor :sPT100REL
  attr_accessor :aNALYSISMODE
  attr_accessor :gRPIDX
  attr_accessor :sCADDRIDX
  attr_accessor :cDNOCB
  attr_accessor :pBTSBR
  attr_accessor :kVALUE
  attr_accessor :iNPFIDX

  def initialize(iMPU = nil, tEMPLATEIDX = nil, dSPIDX = nil, lP = nil, cSC = nil, uNAME = nil, uTYPE = nil, vCCFLAG = nil, vTFLAG = nil, nSCFU = nil, nSCFUVM = nil, nSCFB = nil, nSCFBVM = nil, nSCFNR = nil, nSCFNRVM = nil, nSCFNL = nil, nSCFNLVM = nil, nSCD = nil, nSCDVM = nil, nSCFNRC = nil, nSCFNRCVM = nil, nSCLIP = nil, nSCIDCW = nil, nSRIO = nil, nSCNIP = nil, nSCLIR = nil, nSRIP = nil, nSCNIR = nil, nSRID = nil, nSNRID = nil, nSRND = nil, nSNRND = nil, nSCW = nil, nSCCW = nil, nSOIP = nil, nSACRM = nil, nSGOIR = nil, nSMOIR = nil, nSTIP = nil, nSTIR = nil, nSOTIR = nil, nSCLIPNOSCREENING = nil, nSCR = nil, nSWAKE_UP = nil, nSAOC_D = nil, nSAOC_E = nil, nSXEXH = nil, nSXEGJ = nil, nSCWCFNR = nil, nSIIFC = nil, nSDN_CALL_OUT_BAR = nil, nSCCBS = nil, nSCCNR = nil, nSCCBSR = nil, nSCCNRR = nil, nS3PTY = nil, nSNPTY = nil, nSDND = nil, nSMCR = nil, nSCBA = nil, nSTMP_LIN = nil, nSCODEC_CNTRL = nil, nSMWI = nil, nSDC = nil, nSHOLD = nil, nSECT = nil, nSCFTB = nil, nSDAN = nil, nSSTOP_SECRET = nil, nSMCID = nil, nSEBO = nil, nSICO = nil, nSOUTG = nil, nSINQYH = nil, nSUINFO = nil, nSDN_CALL_OUT_ALLOW = nil, nSSIC = nil, nSSOC = nil, nSSETCFNRTIME = nil, nSCFS = nil, nSCFSB = nil, nSFAX = nil, nSABRC = nil, nSACRTOVM = nil, nSPREPAID = nil, nSCRBT = nil, nSICB = nil, nSMRINGING = nil, nSCIS = nil, nSCBEG = nil, nSCOLP = nil, nSCOLR = nil, nSCOLPOVR = nil, nSBAOC = nil, nSBOIC = nil, nSBOICEXHC = nil, nSBAIC = nil, nSBICROM = nil, nSSPEED_DIAL = nil, nSSD1D = nil, nSSD2D = nil, nSGRNCALL = nil, nSCPARK = nil, nSGAA = nil, nSQSNS = nil, nSMSN = nil, nSHOTLINE = nil, nSAOC_S = nil, nSNIGHTSRV = nil, nSBACKNUM = nil, nSAUTOCON = nil, nSCAMPON = nil, nSCTD = nil, nSCLICKHOLD = nil, nSQUEUE = nil, nSSANSWER = nil, nSICENCF = nil, nSCFGO = nil, nSCECT = nil, nSCTGO = nil, nSCTIO = nil, nSSETBUSY = nil, nSOVERSTEP = nil, nSABSENT = nil, nSMONITOR = nil, nSFMONITOR = nil, nSDISCNT = nil, nSFDISCNT = nil, nSINSERT = nil, nSFINSERT = nil, nSASI = nil, nSPWCB = nil, nSRD = nil, nSLCPS = nil, nSNCPS = nil, nSICPS = nil, nSHCPS = nil, nSCBCLOCK = nil, nSMINIBAR = nil, nSMCN = nil, nSDSTR = nil, nSOPRREG = nil, nSONEKEY = nil, nSINBOUND = nil, nSOUTBOUND = nil, nSCALLERID = nil, nSCUN = nil, nSIPTVVC = nil, nSNP = nil, nSSEC = nil, nSSECSTA = nil, nSHRCN = nil, nSSB = nil, nSSCCA = nil, nSCCS = nil, nSOCCR = nil, nSIMSMS = nil, lCO = nil, lC = nil, lCT = nil, nTT = nil, iTT = nil, iCTX = nil, oCTX = nil, iNTT = nil, iITT = nil, iCLT = nil, iCDDD = nil, iCIDD = nil, iOLT = nil, cTLCO = nil, cTLCT = nil, cTLD = nil, cTINTNANP = nil, cTINTWORLD = nil, cTDA = nil, cTOSM = nil, cTOSP = nil, cTOSP1 = nil, cCO1 = nil, cCO2 = nil, cCO3 = nil, cCO4 = nil, cCO5 = nil, cCO6 = nil, cCO7 = nil, cCO8 = nil, cCO9 = nil, cCO10 = nil, cCO11 = nil, cCO12 = nil, cCO13 = nil, cCO14 = nil, cCO15 = nil, cCO16 = nil, cCO17 = nil, cCO18 = nil, cCO19 = nil, cCO20 = nil, cCO21 = nil, cCO22 = nil, cCO23 = nil, cCO24 = nil, cCO25 = nil, cCO26 = nil, cCO27 = nil, cCO28 = nil, cCO29 = nil, cCO30 = nil, cCO31 = nil, cCO32 = nil, hIGHENTCO = nil, oPERATOR = nil, sUPYSRV = nil, iDDCI = nil, nTCI = nil, lTCI = nil, rSC = nil, cIG = nil, oUTRST = nil, iNRST = nil, nOAT = nil, rINGCOUNT = nil, vMAIND = nil, vDMAIND = nil, tGRP = nil, tIDHLD = nil, tIDCW = nil, sCF = nil, lMTGRP = nil, fLBGRP = nil, sLBGRP = nil, cOP = nil, g711_64K_A_LAW = nil, g711_64K_U_LAW = nil, g722 = nil, g723 = nil, g726 = nil, g728 = nil, g729 = nil, cODEC_MP4A = nil, cODEC2833 = nil, cODEC2198 = nil, g726_40 = nil, g726_32 = nil, g726_24 = nil, g726_16 = nil, aMR = nil, cLEARMODE = nil, iLBC = nil, sPEEX = nil, g729EV = nil, eVRC = nil, eVRCB = nil, h261 = nil, h263 = nil, cODEC_MP4V = nil, h264 = nil, t38 = nil, t120 = nil, g711A_VBD = nil, g711U_VBD = nil, g726_VBD = nil, g726_40_VBD = nil, g726_32_VBD = nil, g726_24_VBD = nil, g726_16_VBD = nil, wIND_BAND_AMR = nil, gSM610 = nil, h263_2000 = nil, bROADVOICE_32 = nil, uNKNOWN_CODEC = nil, aCODEC = nil, vCODEC = nil, pOLIDX = nil, nCPI = nil, iCPI = nil, hCPI = nil, eBOCL = nil, eBOPL = nil, eBOIT = nil, rM = nil, cPC = nil, pCHG = nil, tFPT = nil, cHT = nil, mCIDMODE = nil, mCIDCMODE = nil, mCIDAMODE = nil, pREPAIDIDX = nil, cRBTID = nil, oDBBICTYPE = nil, oDBBOCTYPE = nil, oDBBARTYPE = nil, oDBSS = nil, oDBBRCFTYPE = nil, oDBINFORM = nil, oDBENTAIN = nil, oDBPLMNBAR1 = nil, oDBPLMNBAR2 = nil, oDBPLMNBAR3 = nil, oDBPLMNBAR4 = nil, pNOTI = nil, mAXPARACALL = nil, aTSDTMBUSY = nil, cALLCOUNT = nil, cDNOTICALLER = nil, iSCHGFLAG = nil, cHC = nil, cUSER = nil, cGRP = nil, cUSERGRP = nil, sTCF = nil, cHARSC = nil, rEGUIDX = nil, sOCBFUNC = nil, sOCBPTONEIDX = nil, aDMINCBA = nil, aDCONTROL_DIVERSION = nil, dPR = nil, pRON = nil, cPCRUS = nil, cUSCAT = nil, sPT100REL = nil, aNALYSISMODE = nil, gRPIDX = nil, sCADDRIDX = nil, cDNOCB = nil, pBTSBR = nil, kVALUE = nil, iNPFIDX = nil)
    @iMPU = iMPU
    @tEMPLATEIDX = tEMPLATEIDX
    @dSPIDX = dSPIDX
    @lP = lP
    @cSC = cSC
    @uNAME = uNAME
    @uTYPE = uTYPE
    @vCCFLAG = vCCFLAG
    @vTFLAG = vTFLAG
    @nSCFU = nSCFU
    @nSCFUVM = nSCFUVM
    @nSCFB = nSCFB
    @nSCFBVM = nSCFBVM
    @nSCFNR = nSCFNR
    @nSCFNRVM = nSCFNRVM
    @nSCFNL = nSCFNL
    @nSCFNLVM = nSCFNLVM
    @nSCD = nSCD
    @nSCDVM = nSCDVM
    @nSCFNRC = nSCFNRC
    @nSCFNRCVM = nSCFNRCVM
    @nSCLIP = nSCLIP
    @nSCIDCW = nSCIDCW
    @nSRIO = nSRIO
    @nSCNIP = nSCNIP
    @nSCLIR = nSCLIR
    @nSRIP = nSRIP
    @nSCNIR = nSCNIR
    @nSRID = nSRID
    @nSNRID = nSNRID
    @nSRND = nSRND
    @nSNRND = nSNRND
    @nSCW = nSCW
    @nSCCW = nSCCW
    @nSOIP = nSOIP
    @nSACRM = nSACRM
    @nSGOIR = nSGOIR
    @nSMOIR = nSMOIR
    @nSTIP = nSTIP
    @nSTIR = nSTIR
    @nSOTIR = nSOTIR
    @nSCLIPNOSCREENING = nSCLIPNOSCREENING
    @nSCR = nSCR
    @nSWAKE_UP = nSWAKE_UP
    @nSAOC_D = nSAOC_D
    @nSAOC_E = nSAOC_E
    @nSXEXH = nSXEXH
    @nSXEGJ = nSXEGJ
    @nSCWCFNR = nSCWCFNR
    @nSIIFC = nSIIFC
    @nSDN_CALL_OUT_BAR = nSDN_CALL_OUT_BAR
    @nSCCBS = nSCCBS
    @nSCCNR = nSCCNR
    @nSCCBSR = nSCCBSR
    @nSCCNRR = nSCCNRR
    @nS3PTY = nS3PTY
    @nSNPTY = nSNPTY
    @nSDND = nSDND
    @nSMCR = nSMCR
    @nSCBA = nSCBA
    @nSTMP_LIN = nSTMP_LIN
    @nSCODEC_CNTRL = nSCODEC_CNTRL
    @nSMWI = nSMWI
    @nSDC = nSDC
    @nSHOLD = nSHOLD
    @nSECT = nSECT
    @nSCFTB = nSCFTB
    @nSDAN = nSDAN
    @nSSTOP_SECRET = nSSTOP_SECRET
    @nSMCID = nSMCID
    @nSEBO = nSEBO
    @nSICO = nSICO
    @nSOUTG = nSOUTG
    @nSINQYH = nSINQYH
    @nSUINFO = nSUINFO
    @nSDN_CALL_OUT_ALLOW = nSDN_CALL_OUT_ALLOW
    @nSSIC = nSSIC
    @nSSOC = nSSOC
    @nSSETCFNRTIME = nSSETCFNRTIME
    @nSCFS = nSCFS
    @nSCFSB = nSCFSB
    @nSFAX = nSFAX
    @nSABRC = nSABRC
    @nSACRTOVM = nSACRTOVM
    @nSPREPAID = nSPREPAID
    @nSCRBT = nSCRBT
    @nSICB = nSICB
    @nSMRINGING = nSMRINGING
    @nSCIS = nSCIS
    @nSCBEG = nSCBEG
    @nSCOLP = nSCOLP
    @nSCOLR = nSCOLR
    @nSCOLPOVR = nSCOLPOVR
    @nSBAOC = nSBAOC
    @nSBOIC = nSBOIC
    @nSBOICEXHC = nSBOICEXHC
    @nSBAIC = nSBAIC
    @nSBICROM = nSBICROM
    @nSSPEED_DIAL = nSSPEED_DIAL
    @nSSD1D = nSSD1D
    @nSSD2D = nSSD2D
    @nSGRNCALL = nSGRNCALL
    @nSCPARK = nSCPARK
    @nSGAA = nSGAA
    @nSQSNS = nSQSNS
    @nSMSN = nSMSN
    @nSHOTLINE = nSHOTLINE
    @nSAOC_S = nSAOC_S
    @nSNIGHTSRV = nSNIGHTSRV
    @nSBACKNUM = nSBACKNUM
    @nSAUTOCON = nSAUTOCON
    @nSCAMPON = nSCAMPON
    @nSCTD = nSCTD
    @nSCLICKHOLD = nSCLICKHOLD
    @nSQUEUE = nSQUEUE
    @nSSANSWER = nSSANSWER
    @nSICENCF = nSICENCF
    @nSCFGO = nSCFGO
    @nSCECT = nSCECT
    @nSCTGO = nSCTGO
    @nSCTIO = nSCTIO
    @nSSETBUSY = nSSETBUSY
    @nSOVERSTEP = nSOVERSTEP
    @nSABSENT = nSABSENT
    @nSMONITOR = nSMONITOR
    @nSFMONITOR = nSFMONITOR
    @nSDISCNT = nSDISCNT
    @nSFDISCNT = nSFDISCNT
    @nSINSERT = nSINSERT
    @nSFINSERT = nSFINSERT
    @nSASI = nSASI
    @nSPWCB = nSPWCB
    @nSRD = nSRD
    @nSLCPS = nSLCPS
    @nSNCPS = nSNCPS
    @nSICPS = nSICPS
    @nSHCPS = nSHCPS
    @nSCBCLOCK = nSCBCLOCK
    @nSMINIBAR = nSMINIBAR
    @nSMCN = nSMCN
    @nSDSTR = nSDSTR
    @nSOPRREG = nSOPRREG
    @nSONEKEY = nSONEKEY
    @nSINBOUND = nSINBOUND
    @nSOUTBOUND = nSOUTBOUND
    @nSCALLERID = nSCALLERID
    @nSCUN = nSCUN
    @nSIPTVVC = nSIPTVVC
    @nSNP = nSNP
    @nSSEC = nSSEC
    @nSSECSTA = nSSECSTA
    @nSHRCN = nSHRCN
    @nSSB = nSSB
    @nSSCCA = nSSCCA
    @nSCCS = nSCCS
    @nSOCCR = nSOCCR
    @nSIMSMS = nSIMSMS
    @lCO = lCO
    @lC = lC
    @lCT = lCT
    @nTT = nTT
    @iTT = iTT
    @iCTX = iCTX
    @oCTX = oCTX
    @iNTT = iNTT
    @iITT = iITT
    @iCLT = iCLT
    @iCDDD = iCDDD
    @iCIDD = iCIDD
    @iOLT = iOLT
    @cTLCO = cTLCO
    @cTLCT = cTLCT
    @cTLD = cTLD
    @cTINTNANP = cTINTNANP
    @cTINTWORLD = cTINTWORLD
    @cTDA = cTDA
    @cTOSM = cTOSM
    @cTOSP = cTOSP
    @cTOSP1 = cTOSP1
    @cCO1 = cCO1
    @cCO2 = cCO2
    @cCO3 = cCO3
    @cCO4 = cCO4
    @cCO5 = cCO5
    @cCO6 = cCO6
    @cCO7 = cCO7
    @cCO8 = cCO8
    @cCO9 = cCO9
    @cCO10 = cCO10
    @cCO11 = cCO11
    @cCO12 = cCO12
    @cCO13 = cCO13
    @cCO14 = cCO14
    @cCO15 = cCO15
    @cCO16 = cCO16
    @cCO17 = cCO17
    @cCO18 = cCO18
    @cCO19 = cCO19
    @cCO20 = cCO20
    @cCO21 = cCO21
    @cCO22 = cCO22
    @cCO23 = cCO23
    @cCO24 = cCO24
    @cCO25 = cCO25
    @cCO26 = cCO26
    @cCO27 = cCO27
    @cCO28 = cCO28
    @cCO29 = cCO29
    @cCO30 = cCO30
    @cCO31 = cCO31
    @cCO32 = cCO32
    @hIGHENTCO = hIGHENTCO
    @oPERATOR = oPERATOR
    @sUPYSRV = sUPYSRV
    @iDDCI = iDDCI
    @nTCI = nTCI
    @lTCI = lTCI
    @rSC = rSC
    @cIG = cIG
    @oUTRST = oUTRST
    @iNRST = iNRST
    @nOAT = nOAT
    @rINGCOUNT = rINGCOUNT
    @vMAIND = vMAIND
    @vDMAIND = vDMAIND
    @tGRP = tGRP
    @tIDHLD = tIDHLD
    @tIDCW = tIDCW
    @sCF = sCF
    @lMTGRP = lMTGRP
    @fLBGRP = fLBGRP
    @sLBGRP = sLBGRP
    @cOP = cOP
    @g711_64K_A_LAW = g711_64K_A_LAW
    @g711_64K_U_LAW = g711_64K_U_LAW
    @g722 = g722
    @g723 = g723
    @g726 = g726
    @g728 = g728
    @g729 = g729
    @cODEC_MP4A = cODEC_MP4A
    @cODEC2833 = cODEC2833
    @cODEC2198 = cODEC2198
    @g726_40 = g726_40
    @g726_32 = g726_32
    @g726_24 = g726_24
    @g726_16 = g726_16
    @aMR = aMR
    @cLEARMODE = cLEARMODE
    @iLBC = iLBC
    @sPEEX = sPEEX
    @g729EV = g729EV
    @eVRC = eVRC
    @eVRCB = eVRCB
    @h261 = h261
    @h263 = h263
    @cODEC_MP4V = cODEC_MP4V
    @h264 = h264
    @t38 = t38
    @t120 = t120
    @g711A_VBD = g711A_VBD
    @g711U_VBD = g711U_VBD
    @g726_VBD = g726_VBD
    @g726_40_VBD = g726_40_VBD
    @g726_32_VBD = g726_32_VBD
    @g726_24_VBD = g726_24_VBD
    @g726_16_VBD = g726_16_VBD
    @wIND_BAND_AMR = wIND_BAND_AMR
    @gSM610 = gSM610
    @h263_2000 = h263_2000
    @bROADVOICE_32 = bROADVOICE_32
    @uNKNOWN_CODEC = uNKNOWN_CODEC
    @aCODEC = aCODEC
    @vCODEC = vCODEC
    @pOLIDX = pOLIDX
    @nCPI = nCPI
    @iCPI = iCPI
    @hCPI = hCPI
    @eBOCL = eBOCL
    @eBOPL = eBOPL
    @eBOIT = eBOIT
    @rM = rM
    @cPC = cPC
    @pCHG = pCHG
    @tFPT = tFPT
    @cHT = cHT
    @mCIDMODE = mCIDMODE
    @mCIDCMODE = mCIDCMODE
    @mCIDAMODE = mCIDAMODE
    @pREPAIDIDX = pREPAIDIDX
    @cRBTID = cRBTID
    @oDBBICTYPE = oDBBICTYPE
    @oDBBOCTYPE = oDBBOCTYPE
    @oDBBARTYPE = oDBBARTYPE
    @oDBSS = oDBSS
    @oDBBRCFTYPE = oDBBRCFTYPE
    @oDBINFORM = oDBINFORM
    @oDBENTAIN = oDBENTAIN
    @oDBPLMNBAR1 = oDBPLMNBAR1
    @oDBPLMNBAR2 = oDBPLMNBAR2
    @oDBPLMNBAR3 = oDBPLMNBAR3
    @oDBPLMNBAR4 = oDBPLMNBAR4
    @pNOTI = pNOTI
    @mAXPARACALL = mAXPARACALL
    @aTSDTMBUSY = aTSDTMBUSY
    @cALLCOUNT = cALLCOUNT
    @cDNOTICALLER = cDNOTICALLER
    @iSCHGFLAG = iSCHGFLAG
    @cHC = cHC
    @cUSER = cUSER
    @cGRP = cGRP
    @cUSERGRP = cUSERGRP
    @sTCF = sTCF
    @cHARSC = cHARSC
    @rEGUIDX = rEGUIDX
    @sOCBFUNC = sOCBFUNC
    @sOCBPTONEIDX = sOCBPTONEIDX
    @aDMINCBA = aDMINCBA
    @aDCONTROL_DIVERSION = aDCONTROL_DIVERSION
    @dPR = dPR
    @pRON = pRON
    @cPCRUS = cPCRUS
    @cUSCAT = cUSCAT
    @sPT100REL = sPT100REL
    @aNALYSISMODE = aNALYSISMODE
    @gRPIDX = gRPIDX
    @sCADDRIDX = sCADDRIDX
    @cDNOCB = cDNOCB
    @pBTSBR = pBTSBR
    @kVALUE = kVALUE
    @iNPFIDX = iNPFIDX
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_SSType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_SSTables
class LST_SSType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_SSTables
#   table1 - LST_SSTable1
class LST_SSTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_SSTable1
class LST_SSTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_SSStruct1
#   iMPU - (any)
#   nSCFU - (any)
#   nSCFUVM - (any)
#   nSCFB - (any)
#   nSCFBVM - (any)
#   nSCFNR - (any)
#   nSCFNRVM - (any)
#   nSCFNL - (any)
#   nSCFNLVM - (any)
#   nSCD - (any)
#   nSCDVM - (any)
#   nSCFNRC - (any)
#   nSCFNRCVM - (any)
#   nSCIDCW - (any)
#   nSRIP - (any)
#   nSRID - (any)
#   nSNRID - (any)
#   nSRND - (any)
#   nSNRND - (any)
#   nSOIP - (any)
#   nSGOIR - (any)
#   nSMOIR - (any)
#   nSTIP - (any)
#   nSTIR - (any)
#   nSOTIR - (any)
#   nSCLIP - (any)
#   nSCLIPNOSCREENING - (any)
#   nSRIO - (any)
#   nSCNIP - (any)
#   nSCLIR - (any)
#   nSCNIR - (any)
#   nSCW - (any)
#   nSCCW - (any)
#   nSACRM - (any)
#   nSCR - (any)
#   nSWAKE_UP - (any)
#   nSAOC_D - (any)
#   nSAOC_E - (any)
#   nSXEXH - (any)
#   nSXEGJ - (any)
#   nSCWCFNR - (any)
#   nSIIFC - (any)
#   nSDN_CALL_OUT_BAR - (any)
#   nSCCBS - (any)
#   nSCCNR - (any)
#   nSCCBSR - (any)
#   nSCCNRR - (any)
#   nS3PTY - (any)
#   nSNPTY - (any)
#   nSDND - (any)
#   nSMCR - (any)
#   nSCBA - (any)
#   nSTMP_LIN - (any)
#   nSCODEC_CNTRL - (any)
#   nSMWI - (any)
#   nSDC - (any)
#   nSHOLD - (any)
#   nSECT - (any)
#   nSCFTB - (any)
#   nSDAN - (any)
#   nSSTOP_SECRET - (any)
#   nSMCID - (any)
#   nSEBO - (any)
#   nSICO - (any)
#   nSOUTG - (any)
#   nSINQYH - (any)
#   nSUINFO - (any)
#   nSDN_CALL_OUT_ALLOW - (any)
#   nSSIC - (any)
#   nSSOC - (any)
#   nSSETCFNRTIME - (any)
#   nSCFS - (any)
#   nSCFSB - (any)
#   nSFAX - (any)
#   nSABRC - (any)
#   nSACRTOVM - (any)
#   nSPREPAID - (any)
#   nSCRBT - (any)
#   nSICB - (any)
#   nSMRINGING - (any)
#   nSCIS - (any)
#   nSCBEG - (any)
#   nSCOLP - (any)
#   nSCOLR - (any)
#   nSCOLPOVR - (any)
#   nSBAOC - (any)
#   nSBOIC - (any)
#   nSBOICEXHC - (any)
#   nSBAIC - (any)
#   nSBICROM - (any)
#   nSSPEED_DIAL - (any)
#   nSSD1D - (any)
#   nSSD2D - (any)
#   nSGRNCALL - (any)
#   nSCPARK - (any)
#   nSGAA - (any)
#   nSQSNS - (any)
#   nSMSN - (any)
#   nSHOTLINE - (any)
#   nSAOC_S - (any)
#   nSNIGHTSRV - (any)
#   nSBACKNUM - (any)
#   nSAUTOCON - (any)
#   nSCAMPON - (any)
#   nSCTD - (any)
#   nSCLICKHOLD - (any)
#   nSQUEUE - (any)
#   nSSANSWER - (any)
#   nSICENCF - (any)
#   nSCFGO - (any)
#   nSCECT - (any)
#   nSCTGO - (any)
#   nSCTIO - (any)
#   nSSETBUSY - (any)
#   nSOVERSTEP - (any)
#   nSABSENT - (any)
#   nSMONITOR - (any)
#   nSFMONITOR - (any)
#   nSDISCNT - (any)
#   nSFDISCNT - (any)
#   nSINSERT - (any)
#   nSFINSERT - (any)
#   nSASI - (any)
#   nSPWCB - (any)
#   nSRD - (any)
#   nSLCPS - (any)
#   nSNCPS - (any)
#   nSICPS - (any)
#   nSHCPS - (any)
#   nSCBCLOCK - (any)
#   nSMINIBAR - (any)
#   nSMCN - (any)
#   nSDSTR - (any)
#   nSOPRREG - (any)
#   nSONEKEY - (any)
#   nSINBOUND - (any)
#   nSOUTBOUND - (any)
#   nSCALLERID - (any)
#   nSCUN - (any)
#   nSIPTVVC - (any)
#   nSNP - (any)
#   nSSEC - (any)
#   nSSECSTA - (any)
#   nSHRCN - (any)
#   nSSB - (any)
#   nSSCCA - (any)
#   nSCCS - (any)
#   nSOCCR - (any)
#   nSIMSMS - (any)
class LST_SSStruct1
  attr_accessor :iMPU
  attr_accessor :nSCFU
  attr_accessor :nSCFUVM
  attr_accessor :nSCFB
  attr_accessor :nSCFBVM
  attr_accessor :nSCFNR
  attr_accessor :nSCFNRVM
  attr_accessor :nSCFNL
  attr_accessor :nSCFNLVM
  attr_accessor :nSCD
  attr_accessor :nSCDVM
  attr_accessor :nSCFNRC
  attr_accessor :nSCFNRCVM
  attr_accessor :nSCIDCW
  attr_accessor :nSRIP
  attr_accessor :nSRID
  attr_accessor :nSNRID
  attr_accessor :nSRND
  attr_accessor :nSNRND
  attr_accessor :nSOIP
  attr_accessor :nSGOIR
  attr_accessor :nSMOIR
  attr_accessor :nSTIP
  attr_accessor :nSTIR
  attr_accessor :nSOTIR
  attr_accessor :nSCLIP
  attr_accessor :nSCLIPNOSCREENING
  attr_accessor :nSRIO
  attr_accessor :nSCNIP
  attr_accessor :nSCLIR
  attr_accessor :nSCNIR
  attr_accessor :nSCW
  attr_accessor :nSCCW
  attr_accessor :nSACRM
  attr_accessor :nSCR
  attr_accessor :nSWAKE_UP
  attr_accessor :nSAOC_D
  attr_accessor :nSAOC_E
  attr_accessor :nSXEXH
  attr_accessor :nSXEGJ
  attr_accessor :nSCWCFNR
  attr_accessor :nSIIFC
  attr_accessor :nSDN_CALL_OUT_BAR
  attr_accessor :nSCCBS
  attr_accessor :nSCCNR
  attr_accessor :nSCCBSR
  attr_accessor :nSCCNRR
  attr_accessor :nS3PTY
  attr_accessor :nSNPTY
  attr_accessor :nSDND
  attr_accessor :nSMCR
  attr_accessor :nSCBA
  attr_accessor :nSTMP_LIN
  attr_accessor :nSCODEC_CNTRL
  attr_accessor :nSMWI
  attr_accessor :nSDC
  attr_accessor :nSHOLD
  attr_accessor :nSECT
  attr_accessor :nSCFTB
  attr_accessor :nSDAN
  attr_accessor :nSSTOP_SECRET
  attr_accessor :nSMCID
  attr_accessor :nSEBO
  attr_accessor :nSICO
  attr_accessor :nSOUTG
  attr_accessor :nSINQYH
  attr_accessor :nSUINFO
  attr_accessor :nSDN_CALL_OUT_ALLOW
  attr_accessor :nSSIC
  attr_accessor :nSSOC
  attr_accessor :nSSETCFNRTIME
  attr_accessor :nSCFS
  attr_accessor :nSCFSB
  attr_accessor :nSFAX
  attr_accessor :nSABRC
  attr_accessor :nSACRTOVM
  attr_accessor :nSPREPAID
  attr_accessor :nSCRBT
  attr_accessor :nSICB
  attr_accessor :nSMRINGING
  attr_accessor :nSCIS
  attr_accessor :nSCBEG
  attr_accessor :nSCOLP
  attr_accessor :nSCOLR
  attr_accessor :nSCOLPOVR
  attr_accessor :nSBAOC
  attr_accessor :nSBOIC
  attr_accessor :nSBOICEXHC
  attr_accessor :nSBAIC
  attr_accessor :nSBICROM
  attr_accessor :nSSPEED_DIAL
  attr_accessor :nSSD1D
  attr_accessor :nSSD2D
  attr_accessor :nSGRNCALL
  attr_accessor :nSCPARK
  attr_accessor :nSGAA
  attr_accessor :nSQSNS
  attr_accessor :nSMSN
  attr_accessor :nSHOTLINE
  attr_accessor :nSAOC_S
  attr_accessor :nSNIGHTSRV
  attr_accessor :nSBACKNUM
  attr_accessor :nSAUTOCON
  attr_accessor :nSCAMPON
  attr_accessor :nSCTD
  attr_accessor :nSCLICKHOLD
  attr_accessor :nSQUEUE
  attr_accessor :nSSANSWER
  attr_accessor :nSICENCF
  attr_accessor :nSCFGO
  attr_accessor :nSCECT
  attr_accessor :nSCTGO
  attr_accessor :nSCTIO
  attr_accessor :nSSETBUSY
  attr_accessor :nSOVERSTEP
  attr_accessor :nSABSENT
  attr_accessor :nSMONITOR
  attr_accessor :nSFMONITOR
  attr_accessor :nSDISCNT
  attr_accessor :nSFDISCNT
  attr_accessor :nSINSERT
  attr_accessor :nSFINSERT
  attr_accessor :nSASI
  attr_accessor :nSPWCB
  attr_accessor :nSRD
  attr_accessor :nSLCPS
  attr_accessor :nSNCPS
  attr_accessor :nSICPS
  attr_accessor :nSHCPS
  attr_accessor :nSCBCLOCK
  attr_accessor :nSMINIBAR
  attr_accessor :nSMCN
  attr_accessor :nSDSTR
  attr_accessor :nSOPRREG
  attr_accessor :nSONEKEY
  attr_accessor :nSINBOUND
  attr_accessor :nSOUTBOUND
  attr_accessor :nSCALLERID
  attr_accessor :nSCUN
  attr_accessor :nSIPTVVC
  attr_accessor :nSNP
  attr_accessor :nSSEC
  attr_accessor :nSSECSTA
  attr_accessor :nSHRCN
  attr_accessor :nSSB
  attr_accessor :nSSCCA
  attr_accessor :nSCCS
  attr_accessor :nSOCCR
  attr_accessor :nSIMSMS

  def initialize(iMPU = nil, nSCFU = nil, nSCFUVM = nil, nSCFB = nil, nSCFBVM = nil, nSCFNR = nil, nSCFNRVM = nil, nSCFNL = nil, nSCFNLVM = nil, nSCD = nil, nSCDVM = nil, nSCFNRC = nil, nSCFNRCVM = nil, nSCIDCW = nil, nSRIP = nil, nSRID = nil, nSNRID = nil, nSRND = nil, nSNRND = nil, nSOIP = nil, nSGOIR = nil, nSMOIR = nil, nSTIP = nil, nSTIR = nil, nSOTIR = nil, nSCLIP = nil, nSCLIPNOSCREENING = nil, nSRIO = nil, nSCNIP = nil, nSCLIR = nil, nSCNIR = nil, nSCW = nil, nSCCW = nil, nSACRM = nil, nSCR = nil, nSWAKE_UP = nil, nSAOC_D = nil, nSAOC_E = nil, nSXEXH = nil, nSXEGJ = nil, nSCWCFNR = nil, nSIIFC = nil, nSDN_CALL_OUT_BAR = nil, nSCCBS = nil, nSCCNR = nil, nSCCBSR = nil, nSCCNRR = nil, nS3PTY = nil, nSNPTY = nil, nSDND = nil, nSMCR = nil, nSCBA = nil, nSTMP_LIN = nil, nSCODEC_CNTRL = nil, nSMWI = nil, nSDC = nil, nSHOLD = nil, nSECT = nil, nSCFTB = nil, nSDAN = nil, nSSTOP_SECRET = nil, nSMCID = nil, nSEBO = nil, nSICO = nil, nSOUTG = nil, nSINQYH = nil, nSUINFO = nil, nSDN_CALL_OUT_ALLOW = nil, nSSIC = nil, nSSOC = nil, nSSETCFNRTIME = nil, nSCFS = nil, nSCFSB = nil, nSFAX = nil, nSABRC = nil, nSACRTOVM = nil, nSPREPAID = nil, nSCRBT = nil, nSICB = nil, nSMRINGING = nil, nSCIS = nil, nSCBEG = nil, nSCOLP = nil, nSCOLR = nil, nSCOLPOVR = nil, nSBAOC = nil, nSBOIC = nil, nSBOICEXHC = nil, nSBAIC = nil, nSBICROM = nil, nSSPEED_DIAL = nil, nSSD1D = nil, nSSD2D = nil, nSGRNCALL = nil, nSCPARK = nil, nSGAA = nil, nSQSNS = nil, nSMSN = nil, nSHOTLINE = nil, nSAOC_S = nil, nSNIGHTSRV = nil, nSBACKNUM = nil, nSAUTOCON = nil, nSCAMPON = nil, nSCTD = nil, nSCLICKHOLD = nil, nSQUEUE = nil, nSSANSWER = nil, nSICENCF = nil, nSCFGO = nil, nSCECT = nil, nSCTGO = nil, nSCTIO = nil, nSSETBUSY = nil, nSOVERSTEP = nil, nSABSENT = nil, nSMONITOR = nil, nSFMONITOR = nil, nSDISCNT = nil, nSFDISCNT = nil, nSINSERT = nil, nSFINSERT = nil, nSASI = nil, nSPWCB = nil, nSRD = nil, nSLCPS = nil, nSNCPS = nil, nSICPS = nil, nSHCPS = nil, nSCBCLOCK = nil, nSMINIBAR = nil, nSMCN = nil, nSDSTR = nil, nSOPRREG = nil, nSONEKEY = nil, nSINBOUND = nil, nSOUTBOUND = nil, nSCALLERID = nil, nSCUN = nil, nSIPTVVC = nil, nSNP = nil, nSSEC = nil, nSSECSTA = nil, nSHRCN = nil, nSSB = nil, nSSCCA = nil, nSCCS = nil, nSOCCR = nil, nSIMSMS = nil)
    @iMPU = iMPU
    @nSCFU = nSCFU
    @nSCFUVM = nSCFUVM
    @nSCFB = nSCFB
    @nSCFBVM = nSCFBVM
    @nSCFNR = nSCFNR
    @nSCFNRVM = nSCFNRVM
    @nSCFNL = nSCFNL
    @nSCFNLVM = nSCFNLVM
    @nSCD = nSCD
    @nSCDVM = nSCDVM
    @nSCFNRC = nSCFNRC
    @nSCFNRCVM = nSCFNRCVM
    @nSCIDCW = nSCIDCW
    @nSRIP = nSRIP
    @nSRID = nSRID
    @nSNRID = nSNRID
    @nSRND = nSRND
    @nSNRND = nSNRND
    @nSOIP = nSOIP
    @nSGOIR = nSGOIR
    @nSMOIR = nSMOIR
    @nSTIP = nSTIP
    @nSTIR = nSTIR
    @nSOTIR = nSOTIR
    @nSCLIP = nSCLIP
    @nSCLIPNOSCREENING = nSCLIPNOSCREENING
    @nSRIO = nSRIO
    @nSCNIP = nSCNIP
    @nSCLIR = nSCLIR
    @nSCNIR = nSCNIR
    @nSCW = nSCW
    @nSCCW = nSCCW
    @nSACRM = nSACRM
    @nSCR = nSCR
    @nSWAKE_UP = nSWAKE_UP
    @nSAOC_D = nSAOC_D
    @nSAOC_E = nSAOC_E
    @nSXEXH = nSXEXH
    @nSXEGJ = nSXEGJ
    @nSCWCFNR = nSCWCFNR
    @nSIIFC = nSIIFC
    @nSDN_CALL_OUT_BAR = nSDN_CALL_OUT_BAR
    @nSCCBS = nSCCBS
    @nSCCNR = nSCCNR
    @nSCCBSR = nSCCBSR
    @nSCCNRR = nSCCNRR
    @nS3PTY = nS3PTY
    @nSNPTY = nSNPTY
    @nSDND = nSDND
    @nSMCR = nSMCR
    @nSCBA = nSCBA
    @nSTMP_LIN = nSTMP_LIN
    @nSCODEC_CNTRL = nSCODEC_CNTRL
    @nSMWI = nSMWI
    @nSDC = nSDC
    @nSHOLD = nSHOLD
    @nSECT = nSECT
    @nSCFTB = nSCFTB
    @nSDAN = nSDAN
    @nSSTOP_SECRET = nSSTOP_SECRET
    @nSMCID = nSMCID
    @nSEBO = nSEBO
    @nSICO = nSICO
    @nSOUTG = nSOUTG
    @nSINQYH = nSINQYH
    @nSUINFO = nSUINFO
    @nSDN_CALL_OUT_ALLOW = nSDN_CALL_OUT_ALLOW
    @nSSIC = nSSIC
    @nSSOC = nSSOC
    @nSSETCFNRTIME = nSSETCFNRTIME
    @nSCFS = nSCFS
    @nSCFSB = nSCFSB
    @nSFAX = nSFAX
    @nSABRC = nSABRC
    @nSACRTOVM = nSACRTOVM
    @nSPREPAID = nSPREPAID
    @nSCRBT = nSCRBT
    @nSICB = nSICB
    @nSMRINGING = nSMRINGING
    @nSCIS = nSCIS
    @nSCBEG = nSCBEG
    @nSCOLP = nSCOLP
    @nSCOLR = nSCOLR
    @nSCOLPOVR = nSCOLPOVR
    @nSBAOC = nSBAOC
    @nSBOIC = nSBOIC
    @nSBOICEXHC = nSBOICEXHC
    @nSBAIC = nSBAIC
    @nSBICROM = nSBICROM
    @nSSPEED_DIAL = nSSPEED_DIAL
    @nSSD1D = nSSD1D
    @nSSD2D = nSSD2D
    @nSGRNCALL = nSGRNCALL
    @nSCPARK = nSCPARK
    @nSGAA = nSGAA
    @nSQSNS = nSQSNS
    @nSMSN = nSMSN
    @nSHOTLINE = nSHOTLINE
    @nSAOC_S = nSAOC_S
    @nSNIGHTSRV = nSNIGHTSRV
    @nSBACKNUM = nSBACKNUM
    @nSAUTOCON = nSAUTOCON
    @nSCAMPON = nSCAMPON
    @nSCTD = nSCTD
    @nSCLICKHOLD = nSCLICKHOLD
    @nSQUEUE = nSQUEUE
    @nSSANSWER = nSSANSWER
    @nSICENCF = nSICENCF
    @nSCFGO = nSCFGO
    @nSCECT = nSCECT
    @nSCTGO = nSCTGO
    @nSCTIO = nSCTIO
    @nSSETBUSY = nSSETBUSY
    @nSOVERSTEP = nSOVERSTEP
    @nSABSENT = nSABSENT
    @nSMONITOR = nSMONITOR
    @nSFMONITOR = nSFMONITOR
    @nSDISCNT = nSDISCNT
    @nSFDISCNT = nSFDISCNT
    @nSINSERT = nSINSERT
    @nSFINSERT = nSFINSERT
    @nSASI = nSASI
    @nSPWCB = nSPWCB
    @nSRD = nSRD
    @nSLCPS = nSLCPS
    @nSNCPS = nSNCPS
    @nSICPS = nSICPS
    @nSHCPS = nSHCPS
    @nSCBCLOCK = nSCBCLOCK
    @nSMINIBAR = nSMINIBAR
    @nSMCN = nSMCN
    @nSDSTR = nSDSTR
    @nSOPRREG = nSOPRREG
    @nSONEKEY = nSONEKEY
    @nSINBOUND = nSINBOUND
    @nSOUTBOUND = nSOUTBOUND
    @nSCALLERID = nSCALLERID
    @nSCUN = nSCUN
    @nSIPTVVC = nSIPTVVC
    @nSNP = nSNP
    @nSSEC = nSSEC
    @nSSECSTA = nSSECSTA
    @nSHRCN = nSHRCN
    @nSSB = nSSB
    @nSSCCA = nSSCCA
    @nSCCS = nSCCS
    @nSOCCR = nSOCCR
    @nSIMSMS = nSIMSMS
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_COMSSType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - REG_COMSSTables
class REG_COMSSType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_COMSSTables
#   table1 - REG_COMSSTable1
class REG_COMSSTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_COMSSTable1
class REG_COMSSTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_COMSSStruct1
#   iMPU - (any)
#   cFUVM - (any)
#   cFBVM - (any)
#   cFNRVM - (any)
#   cFNLVM - (any)
#   cFNRCVM - (any)
#   cD - (any)
#   cDVM - (any)
#   cIDCW - (any)
#   rIP - (any)
#   rID - (any)
#   nRID - (any)
#   rND - (any)
#   nRND - (any)
#   oIP - (any)
#   tIP - (any)
#   oTIR - (any)
#   cLIP - (any)
#   rIO - (any)
#   cNIP - (any)
#   cLIR - (any)
#   cNIR - (any)
#   cW - (any)
#   aCR - (any)
#   cR - (any)
#   aOC_D - (any)
#   aOC_E - (any)
#   xEXH - (any)
#   xEGJ - (any)
#   iIFC - (any)
#   cCBS - (any)
#   cCNR - (any)
#   cCBSR - (any)
#   cCNRR - (any)
#   tPTY - (any)
#   nPTY - (any)
#   mCR - (any)
#   mWI - (any)
#   dC - (any)
#   hOLD - (any)
#   eCT - (any)
#   dAN - (any)
#   sTOP_SECRET - (any)
#   eBO - (any)
#   iCO - (any)
#   oUTG - (any)
#   iNQYH - (any)
#   sETCFNRTIME - (any)
#   aCRTOVM - (any)
#   sETBUSY - (any)
#   pWCB - (any)
#   aOC_S - (any)
#   mCID - (any)
#   cLIPNOSCREENING - (any)
#   cOLP - (any)
#   cOLPOVR - (any)
#   oPRREG - (any)
#   sECSTA - (any)
#   hRCN - (any)
#   cCS - (any)
class REG_COMSSStruct1
  attr_accessor :iMPU
  attr_accessor :cFUVM
  attr_accessor :cFBVM
  attr_accessor :cFNRVM
  attr_accessor :cFNLVM
  attr_accessor :cFNRCVM
  attr_accessor :cD
  attr_accessor :cDVM
  attr_accessor :cIDCW
  attr_accessor :rIP
  attr_accessor :rID
  attr_accessor :nRID
  attr_accessor :rND
  attr_accessor :nRND
  attr_accessor :oIP
  attr_accessor :tIP
  attr_accessor :oTIR
  attr_accessor :cLIP
  attr_accessor :rIO
  attr_accessor :cNIP
  attr_accessor :cLIR
  attr_accessor :cNIR
  attr_accessor :cW
  attr_accessor :aCR
  attr_accessor :cR
  attr_accessor :aOC_D
  attr_accessor :aOC_E
  attr_accessor :xEXH
  attr_accessor :xEGJ
  attr_accessor :iIFC
  attr_accessor :cCBS
  attr_accessor :cCNR
  attr_accessor :cCBSR
  attr_accessor :cCNRR
  attr_accessor :tPTY
  attr_accessor :nPTY
  attr_accessor :mCR
  attr_accessor :mWI
  attr_accessor :dC
  attr_accessor :hOLD
  attr_accessor :eCT
  attr_accessor :dAN
  attr_accessor :sTOP_SECRET
  attr_accessor :eBO
  attr_accessor :iCO
  attr_accessor :oUTG
  attr_accessor :iNQYH
  attr_accessor :sETCFNRTIME
  attr_accessor :aCRTOVM
  attr_accessor :sETBUSY
  attr_accessor :pWCB
  attr_accessor :aOC_S
  attr_accessor :mCID
  attr_accessor :cLIPNOSCREENING
  attr_accessor :cOLP
  attr_accessor :cOLPOVR
  attr_accessor :oPRREG
  attr_accessor :sECSTA
  attr_accessor :hRCN
  attr_accessor :cCS

  def initialize(iMPU = nil, cFUVM = nil, cFBVM = nil, cFNRVM = nil, cFNLVM = nil, cFNRCVM = nil, cD = nil, cDVM = nil, cIDCW = nil, rIP = nil, rID = nil, nRID = nil, rND = nil, nRND = nil, oIP = nil, tIP = nil, oTIR = nil, cLIP = nil, rIO = nil, cNIP = nil, cLIR = nil, cNIR = nil, cW = nil, aCR = nil, cR = nil, aOC_D = nil, aOC_E = nil, xEXH = nil, xEGJ = nil, iIFC = nil, cCBS = nil, cCNR = nil, cCBSR = nil, cCNRR = nil, tPTY = nil, nPTY = nil, mCR = nil, mWI = nil, dC = nil, hOLD = nil, eCT = nil, dAN = nil, sTOP_SECRET = nil, eBO = nil, iCO = nil, oUTG = nil, iNQYH = nil, sETCFNRTIME = nil, aCRTOVM = nil, sETBUSY = nil, pWCB = nil, aOC_S = nil, mCID = nil, cLIPNOSCREENING = nil, cOLP = nil, cOLPOVR = nil, oPRREG = nil, sECSTA = nil, hRCN = nil, cCS = nil)
    @iMPU = iMPU
    @cFUVM = cFUVM
    @cFBVM = cFBVM
    @cFNRVM = cFNRVM
    @cFNLVM = cFNLVM
    @cFNRCVM = cFNRCVM
    @cD = cD
    @cDVM = cDVM
    @cIDCW = cIDCW
    @rIP = rIP
    @rID = rID
    @nRID = nRID
    @rND = rND
    @nRND = nRND
    @oIP = oIP
    @tIP = tIP
    @oTIR = oTIR
    @cLIP = cLIP
    @rIO = rIO
    @cNIP = cNIP
    @cLIR = cLIR
    @cNIR = cNIR
    @cW = cW
    @aCR = aCR
    @cR = cR
    @aOC_D = aOC_D
    @aOC_E = aOC_E
    @xEXH = xEXH
    @xEGJ = xEGJ
    @iIFC = iIFC
    @cCBS = cCBS
    @cCNR = cCNR
    @cCBSR = cCBSR
    @cCNRR = cCNRR
    @tPTY = tPTY
    @nPTY = nPTY
    @mCR = mCR
    @mWI = mWI
    @dC = dC
    @hOLD = hOLD
    @eCT = eCT
    @dAN = dAN
    @sTOP_SECRET = sTOP_SECRET
    @eBO = eBO
    @iCO = iCO
    @oUTG = oUTG
    @iNQYH = iNQYH
    @sETCFNRTIME = sETCFNRTIME
    @aCRTOVM = aCRTOVM
    @sETBUSY = sETBUSY
    @pWCB = pWCB
    @aOC_S = aOC_S
    @mCID = mCID
    @cLIPNOSCREENING = cLIPNOSCREENING
    @cOLP = cOLP
    @cOLPOVR = cOLPOVR
    @oPRREG = oPRREG
    @sECSTA = sECSTA
    @hRCN = hRCN
    @cCS = cCS
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_COMSSType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_COMSSTables
class DSP_COMSSType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_COMSSTables
#   table1 - DSP_COMSSTable1
class DSP_COMSSTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_COMSSTable1
class DSP_COMSSTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_COMSSStruct1
#   iMPU - (any)
#   cFUVM - (any)
#   cFBVM - (any)
#   cFNRVM - (any)
#   cFNLVM - (any)
#   cFNRCVM - (any)
#   cD - (any)
#   cDVM - (any)
#   cIDCW - (any)
#   rIP - (any)
#   rID - (any)
#   nRID - (any)
#   rND - (any)
#   nRND - (any)
#   oIP - (any)
#   tIP - (any)
#   oTIR - (any)
#   cLIP - (any)
#   rIO - (any)
#   cNIP - (any)
#   cLIR - (any)
#   cNIR - (any)
#   cW - (any)
#   aCR - (any)
#   cR - (any)
#   aOC_D - (any)
#   aOC_E - (any)
#   xEXH - (any)
#   xEGJ - (any)
#   iIFC - (any)
#   cCBS - (any)
#   cCNR - (any)
#   cCBSR - (any)
#   cCNRR - (any)
#   tPTY - (any)
#   nPTY - (any)
#   mCR - (any)
#   mWI - (any)
#   dC - (any)
#   hOLD - (any)
#   eCT - (any)
#   dAN - (any)
#   sTOP_SECRET - (any)
#   eBO - (any)
#   iCO - (any)
#   oUTG - (any)
#   iNQYH - (any)
#   sETCFNRTIME - (any)
#   aCRTOVM - (any)
#   sETBUSY - (any)
#   pWCB - (any)
#   aOC_S - (any)
#   mCID - (any)
#   cLIPNOSCREENING - (any)
#   cOLP - (any)
#   cOLPOVR - (any)
#   oPRREG - (any)
#   sECSTA - (any)
#   hRCN - (any)
#   cCS - (any)
#   cRBT - (any)
class DSP_COMSSStruct1
  attr_accessor :iMPU
  attr_accessor :cFUVM
  attr_accessor :cFBVM
  attr_accessor :cFNRVM
  attr_accessor :cFNLVM
  attr_accessor :cFNRCVM
  attr_accessor :cD
  attr_accessor :cDVM
  attr_accessor :cIDCW
  attr_accessor :rIP
  attr_accessor :rID
  attr_accessor :nRID
  attr_accessor :rND
  attr_accessor :nRND
  attr_accessor :oIP
  attr_accessor :tIP
  attr_accessor :oTIR
  attr_accessor :cLIP
  attr_accessor :rIO
  attr_accessor :cNIP
  attr_accessor :cLIR
  attr_accessor :cNIR
  attr_accessor :cW
  attr_accessor :aCR
  attr_accessor :cR
  attr_accessor :aOC_D
  attr_accessor :aOC_E
  attr_accessor :xEXH
  attr_accessor :xEGJ
  attr_accessor :iIFC
  attr_accessor :cCBS
  attr_accessor :cCNR
  attr_accessor :cCBSR
  attr_accessor :cCNRR
  attr_accessor :tPTY
  attr_accessor :nPTY
  attr_accessor :mCR
  attr_accessor :mWI
  attr_accessor :dC
  attr_accessor :hOLD
  attr_accessor :eCT
  attr_accessor :dAN
  attr_accessor :sTOP_SECRET
  attr_accessor :eBO
  attr_accessor :iCO
  attr_accessor :oUTG
  attr_accessor :iNQYH
  attr_accessor :sETCFNRTIME
  attr_accessor :aCRTOVM
  attr_accessor :sETBUSY
  attr_accessor :pWCB
  attr_accessor :aOC_S
  attr_accessor :mCID
  attr_accessor :cLIPNOSCREENING
  attr_accessor :cOLP
  attr_accessor :cOLPOVR
  attr_accessor :oPRREG
  attr_accessor :sECSTA
  attr_accessor :hRCN
  attr_accessor :cCS
  attr_accessor :cRBT

  def initialize(iMPU = nil, cFUVM = nil, cFBVM = nil, cFNRVM = nil, cFNLVM = nil, cFNRCVM = nil, cD = nil, cDVM = nil, cIDCW = nil, rIP = nil, rID = nil, nRID = nil, rND = nil, nRND = nil, oIP = nil, tIP = nil, oTIR = nil, cLIP = nil, rIO = nil, cNIP = nil, cLIR = nil, cNIR = nil, cW = nil, aCR = nil, cR = nil, aOC_D = nil, aOC_E = nil, xEXH = nil, xEGJ = nil, iIFC = nil, cCBS = nil, cCNR = nil, cCBSR = nil, cCNRR = nil, tPTY = nil, nPTY = nil, mCR = nil, mWI = nil, dC = nil, hOLD = nil, eCT = nil, dAN = nil, sTOP_SECRET = nil, eBO = nil, iCO = nil, oUTG = nil, iNQYH = nil, sETCFNRTIME = nil, aCRTOVM = nil, sETBUSY = nil, pWCB = nil, aOC_S = nil, mCID = nil, cLIPNOSCREENING = nil, cOLP = nil, cOLPOVR = nil, oPRREG = nil, sECSTA = nil, hRCN = nil, cCS = nil, cRBT = nil)
    @iMPU = iMPU
    @cFUVM = cFUVM
    @cFBVM = cFBVM
    @cFNRVM = cFNRVM
    @cFNLVM = cFNLVM
    @cFNRCVM = cFNRCVM
    @cD = cD
    @cDVM = cDVM
    @cIDCW = cIDCW
    @rIP = rIP
    @rID = rID
    @nRID = nRID
    @rND = rND
    @nRND = nRND
    @oIP = oIP
    @tIP = tIP
    @oTIR = oTIR
    @cLIP = cLIP
    @rIO = rIO
    @cNIP = cNIP
    @cLIR = cLIR
    @cNIR = cNIR
    @cW = cW
    @aCR = aCR
    @cR = cR
    @aOC_D = aOC_D
    @aOC_E = aOC_E
    @xEXH = xEXH
    @xEGJ = xEGJ
    @iIFC = iIFC
    @cCBS = cCBS
    @cCNR = cCNR
    @cCBSR = cCBSR
    @cCNRR = cCNRR
    @tPTY = tPTY
    @nPTY = nPTY
    @mCR = mCR
    @mWI = mWI
    @dC = dC
    @hOLD = hOLD
    @eCT = eCT
    @dAN = dAN
    @sTOP_SECRET = sTOP_SECRET
    @eBO = eBO
    @iCO = iCO
    @oUTG = oUTG
    @iNQYH = iNQYH
    @sETCFNRTIME = sETCFNRTIME
    @aCRTOVM = aCRTOVM
    @sETBUSY = sETBUSY
    @pWCB = pWCB
    @aOC_S = aOC_S
    @mCID = mCID
    @cLIPNOSCREENING = cLIPNOSCREENING
    @cOLP = cOLP
    @cOLPOVR = cOLPOVR
    @oPRREG = oPRREG
    @sECSTA = sECSTA
    @hRCN = hRCN
    @cCS = cCS
    @cRBT = cRBT
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}QRY_SSType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - QRY_SSTables
class QRY_SSType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}QRY_SSTables
#   table1 - QRY_SSTable1
class QRY_SSTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}QRY_SSTable1
class QRY_SSTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}QRY_SSStruct1
#   iMPU - (any)
#   sIC - (any)
#   dSTR - (any)
#   sB - (any)
class QRY_SSStruct1
  attr_accessor :iMPU
  attr_accessor :sIC
  attr_accessor :dSTR
  attr_accessor :sB

  def initialize(iMPU = nil, sIC = nil, dSTR = nil, sB = nil)
    @iMPU = iMPU
    @sIC = sIC
    @dSTR = dSTR
    @sB = sB
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFUType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_CFUTables
class DSP_CFUType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFUTables
#   table1 - DSP_CFUTable1
class DSP_CFUTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFUTable1
class DSP_CFUTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFUStruct1
#   iMPU - (any)
#   bSV - (any)
#   bSG - (any)
#   dIMPU - (any)
#   sUBINF - (any)
#   nOTIFYCALLER - (any)
#   pRVTOCER - (any)
#   pRVTODES - (any)
#   aCTIVE - (any)
class DSP_CFUStruct1
  attr_accessor :iMPU
  attr_accessor :bSV
  attr_accessor :bSG
  attr_accessor :dIMPU
  attr_accessor :sUBINF
  attr_accessor :nOTIFYCALLER
  attr_accessor :pRVTOCER
  attr_accessor :pRVTODES
  attr_accessor :aCTIVE

  def initialize(iMPU = nil, bSV = nil, bSG = nil, dIMPU = nil, sUBINF = nil, nOTIFYCALLER = nil, pRVTOCER = nil, pRVTODES = nil, aCTIVE = nil)
    @iMPU = iMPU
    @bSV = bSV
    @bSG = bSG
    @dIMPU = dIMPU
    @sUBINF = sUBINF
    @nOTIFYCALLER = nOTIFYCALLER
    @pRVTOCER = pRVTOCER
    @pRVTODES = pRVTODES
    @aCTIVE = aCTIVE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CLIRType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_CLIRTables
class DSP_CLIRType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CLIRTables
#   table1 - DSP_CLIRTable1
class DSP_CLIRTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CLIRTable1
class DSP_CLIRTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CLIRStruct1
#   iMPU - (any)
#   gMODE - (any)
class DSP_CLIRStruct1
  attr_accessor :iMPU
  attr_accessor :gMODE

  def initialize(iMPU = nil, gMODE = nil)
    @iMPU = iMPU
    @gMODE = gMODE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_COLRType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_COLRTables
class DSP_COLRType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_COLRTables
#   table1 - DSP_COLRTable1
class DSP_COLRTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_COLRTable1
class DSP_COLRTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_COLRStruct1
#   iMPU - (any)
#   tMODE - (any)
#   sTYPE - (any)
#   sHOUR - (any)
#   sMINUTE - (any)
#   eHOUR - (any)
#   eMINUTE - (any)
class DSP_COLRStruct1
  attr_accessor :iMPU
  attr_accessor :tMODE
  attr_accessor :sTYPE
  attr_accessor :sHOUR
  attr_accessor :sMINUTE
  attr_accessor :eHOUR
  attr_accessor :eMINUTE

  def initialize(iMPU = nil, tMODE = nil, sTYPE = nil, sHOUR = nil, sMINUTE = nil, eHOUR = nil, eMINUTE = nil)
    @iMPU = iMPU
    @tMODE = tMODE
    @sTYPE = sTYPE
    @sHOUR = sHOUR
    @sMINUTE = sMINUTE
    @eHOUR = eHOUR
    @eMINUTE = eMINUTE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_WAKE_UPType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_WAKE_UPTables
class DSP_WAKE_UPType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_WAKE_UPTables
#   table1 - DSP_WAKE_UPTable1
class DSP_WAKE_UPTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_WAKE_UPTable1
class DSP_WAKE_UPTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_WAKE_UPStruct1
#   iMPU - (any)
#   wCH - (any)
#   wCM - (any)
#   wCLAN - (any)
#   wCMODE - (any)
#   wCWP - (any)
#   wCWTN - (any)
#   wCDTN - (any)
class DSP_WAKE_UPStruct1
  attr_accessor :iMPU
  attr_accessor :wCH
  attr_accessor :wCM
  attr_accessor :wCLAN
  attr_accessor :wCMODE
  attr_accessor :wCWP
  attr_accessor :wCWTN
  attr_accessor :wCDTN

  def initialize(iMPU = nil, wCH = nil, wCM = nil, wCLAN = nil, wCMODE = nil, wCWP = nil, wCWTN = nil, wCDTN = nil)
    @iMPU = iMPU
    @wCH = wCH
    @wCM = wCM
    @wCLAN = wCLAN
    @wCMODE = wCMODE
    @wCWP = wCWP
    @wCWTN = wCWTN
    @wCDTN = wCDTN
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFTBType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_CFTBTables
class DSP_CFTBType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFTBTables
#   table1 - DSP_CFTBTable1
class DSP_CFTBTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFTBTable1
class DSP_CFTBTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFTBStruct1
#   iMPU - (any)
#   cFTBSV - (any)
#   sVT - (any)
#   cTIMPU - (any)
#   cTSBIF - (any)
#   pT - (any)
#   rIDX - (any)
#   sYEAR - (any)
#   sMONTH - (any)
#   sDATE - (any)
#   sHOUR - (any)
#   sMINUTE - (any)
#   eYEAR - (any)
#   eMONTH - (any)
#   eDATE - (any)
#   eHOUR - (any)
#   eMINUTE - (any)
#   dINW - (any)
class DSP_CFTBStruct1
  attr_accessor :iMPU
  attr_accessor :cFTBSV
  attr_accessor :sVT
  attr_accessor :cTIMPU
  attr_accessor :cTSBIF
  attr_accessor :pT
  attr_accessor :rIDX
  attr_accessor :sYEAR
  attr_accessor :sMONTH
  attr_accessor :sDATE
  attr_accessor :sHOUR
  attr_accessor :sMINUTE
  attr_accessor :eYEAR
  attr_accessor :eMONTH
  attr_accessor :eDATE
  attr_accessor :eHOUR
  attr_accessor :eMINUTE
  attr_accessor :dINW

  def initialize(iMPU = nil, cFTBSV = nil, sVT = nil, cTIMPU = nil, cTSBIF = nil, pT = nil, rIDX = nil, sYEAR = nil, sMONTH = nil, sDATE = nil, sHOUR = nil, sMINUTE = nil, eYEAR = nil, eMONTH = nil, eDATE = nil, eHOUR = nil, eMINUTE = nil, dINW = nil)
    @iMPU = iMPU
    @cFTBSV = cFTBSV
    @sVT = sVT
    @cTIMPU = cTIMPU
    @cTSBIF = cTSBIF
    @pT = pT
    @rIDX = rIDX
    @sYEAR = sYEAR
    @sMONTH = sMONTH
    @sDATE = sDATE
    @sHOUR = sHOUR
    @sMINUTE = sMINUTE
    @eYEAR = eYEAR
    @eMONTH = eMONTH
    @eDATE = eDATE
    @eHOUR = eHOUR
    @eMINUTE = eMINUTE
    @dINW = dINW
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_UINFOType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_UINFOTables
class DSP_UINFOType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_UINFOTables
#   table1 - DSP_UINFOTable1
class DSP_UINFOTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_UINFOTable1
class DSP_UINFOTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_UINFOStruct1
#   iMPU - (any)
#   iMG - (any)
#   pCI - (any)
#   wINFO - (any)
class DSP_UINFOStruct1
  attr_accessor :iMPU
  attr_accessor :iMG
  attr_accessor :pCI
  attr_accessor :wINFO

  def initialize(iMPU = nil, iMG = nil, pCI = nil, wINFO = nil)
    @iMPU = iMPU
    @iMG = iMG
    @pCI = pCI
    @wINFO = wINFO
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SOCType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_SOCTables
class DSP_SOCType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SOCTables
#   table1 - DSP_SOCTable1
class DSP_SOCTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SOCTable1
class DSP_SOCTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SOCStruct1
#   iMPU - (any)
#   sOCIDX - (any)
#   sOIMPU - (any)
#   sYEAR - (any)
#   sMONTH - (any)
#   sDATE - (any)
#   sHOUR - (any)
#   sMINUTE - (any)
#   eYEAR - (any)
#   eMONTH - (any)
#   eDATE - (any)
#   eHOUR - (any)
#   eMINUTE - (any)
#   sOCPER - (any)
#   aCTIVE - (any)
class DSP_SOCStruct1
  attr_accessor :iMPU
  attr_accessor :sOCIDX
  attr_accessor :sOIMPU
  attr_accessor :sYEAR
  attr_accessor :sMONTH
  attr_accessor :sDATE
  attr_accessor :sHOUR
  attr_accessor :sMINUTE
  attr_accessor :eYEAR
  attr_accessor :eMONTH
  attr_accessor :eDATE
  attr_accessor :eHOUR
  attr_accessor :eMINUTE
  attr_accessor :sOCPER
  attr_accessor :aCTIVE

  def initialize(iMPU = nil, sOCIDX = nil, sOIMPU = nil, sYEAR = nil, sMONTH = nil, sDATE = nil, sHOUR = nil, sMINUTE = nil, eYEAR = nil, eMONTH = nil, eDATE = nil, eHOUR = nil, eMINUTE = nil, sOCPER = nil, aCTIVE = nil)
    @iMPU = iMPU
    @sOCIDX = sOCIDX
    @sOIMPU = sOIMPU
    @sYEAR = sYEAR
    @sMONTH = sMONTH
    @sDATE = sDATE
    @sHOUR = sHOUR
    @sMINUTE = sMINUTE
    @eYEAR = eYEAR
    @eMONTH = eMONTH
    @eDATE = eDATE
    @eHOUR = eHOUR
    @eMINUTE = eMINUTE
    @sOCPER = sOCPER
    @aCTIVE = aCTIVE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DN_CALL_OUT_ALLOWType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_DN_CALL_OUT_ALLOWTables
class DSP_DN_CALL_OUT_ALLOWType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DN_CALL_OUT_ALLOWTables
#   table1 - DSP_DN_CALL_OUT_ALLOWTable1
class DSP_DN_CALL_OUT_ALLOWTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DN_CALL_OUT_ALLOWTable1
class DSP_DN_CALL_OUT_ALLOWTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DN_CALL_OUT_ALLOWStruct1
#   iMPU - (any)
#   cOAD - (any)
class DSP_DN_CALL_OUT_ALLOWStruct1
  attr_accessor :iMPU
  attr_accessor :cOAD

  def initialize(iMPU = nil, cOAD = nil)
    @iMPU = iMPU
    @cOAD = cOAD
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DNDType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_DNDTables
class DSP_DNDType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DNDTables
#   table1 - DSP_DNDTable1
class DSP_DNDTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DNDTable1
class DSP_DNDTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DNDStruct1
#   iMPU - (any)
#   sG - (any)
#   sYEAR - (any)
#   sMONTH - (any)
#   sDATE - (any)
#   sHOUR - (any)
#   sMINUTE - (any)
#   eYEAR - (any)
#   eMONTH - (any)
#   eDATE - (any)
#   eHOUR - (any)
#   eMINUTE - (any)
#   eMODE - (any)
#   dNDWP - (any)
#   sETMON - (any)
#   sETDAY - (any)
#   tREAT - (any)
#   bTREAT - (any)
class DSP_DNDStruct1
  attr_accessor :iMPU
  attr_accessor :sG
  attr_accessor :sYEAR
  attr_accessor :sMONTH
  attr_accessor :sDATE
  attr_accessor :sHOUR
  attr_accessor :sMINUTE
  attr_accessor :eYEAR
  attr_accessor :eMONTH
  attr_accessor :eDATE
  attr_accessor :eHOUR
  attr_accessor :eMINUTE
  attr_accessor :eMODE
  attr_accessor :dNDWP
  attr_accessor :sETMON
  attr_accessor :sETDAY
  attr_accessor :tREAT
  attr_accessor :bTREAT

  def initialize(iMPU = nil, sG = nil, sYEAR = nil, sMONTH = nil, sDATE = nil, sHOUR = nil, sMINUTE = nil, eYEAR = nil, eMONTH = nil, eDATE = nil, eHOUR = nil, eMINUTE = nil, eMODE = nil, dNDWP = nil, sETMON = nil, sETDAY = nil, tREAT = nil, bTREAT = nil)
    @iMPU = iMPU
    @sG = sG
    @sYEAR = sYEAR
    @sMONTH = sMONTH
    @sDATE = sDATE
    @sHOUR = sHOUR
    @sMINUTE = sMINUTE
    @eYEAR = eYEAR
    @eMONTH = eMONTH
    @eDATE = eDATE
    @eHOUR = eHOUR
    @eMINUTE = eMINUTE
    @eMODE = eMODE
    @dNDWP = dNDWP
    @sETMON = sETMON
    @sETDAY = sETDAY
    @tREAT = tREAT
    @bTREAT = bTREAT
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CBAType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_CBATables
class DSP_CBAType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CBATables
#   table1 - DSP_CBATable1
class DSP_CBATables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CBATable1
class DSP_CBATable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CBAStruct1
#   iMPU - (any)
#   cBABLV - (any)
class DSP_CBAStruct1
  attr_accessor :iMPU
  attr_accessor :cBABLV

  def initialize(iMPU = nil, cBABLV = nil)
    @iMPU = iMPU
    @cBABLV = cBABLV
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_TMP_LINType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_TMP_LINTables
class DSP_TMP_LINType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_TMP_LINTables
#   table1 - DSP_TMP_LINTable1
class DSP_TMP_LINTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_TMP_LINTable1
class DSP_TMP_LINTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_TMP_LINStruct1
#   iMPU - (any)
#   yEAR - (any)
#   mONTH - (any)
#   dAY - (any)
#   tLDUR - (any)
class DSP_TMP_LINStruct1
  attr_accessor :iMPU
  attr_accessor :yEAR
  attr_accessor :mONTH
  attr_accessor :dAY
  attr_accessor :tLDUR

  def initialize(iMPU = nil, yEAR = nil, mONTH = nil, dAY = nil, tLDUR = nil)
    @iMPU = iMPU
    @yEAR = yEAR
    @mONTH = mONTH
    @dAY = dAY
    @tLDUR = tLDUR
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CODEC_CNTRLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_CODEC_CNTRLTables
class DSP_CODEC_CNTRLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CODEC_CNTRLTables
#   table1 - DSP_CODEC_CNTRLTable1
class DSP_CODEC_CNTRLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CODEC_CNTRLTable1
class DSP_CODEC_CNTRLTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CODEC_CNTRLStruct1
#   iMPU - (any)
#   g711_64K_A_LAW - (any)
#   g711_64K_U_LAW - (any)
#   g723 - (any)
#   g726 - (any)
#   g729 - (any)
#   aMR - (any)
#   eVRC - (any)
#   eVRCB - (any)
class DSP_CODEC_CNTRLStruct1
  attr_accessor :iMPU
  attr_accessor :g711_64K_A_LAW
  attr_accessor :g711_64K_U_LAW
  attr_accessor :g723
  attr_accessor :g726
  attr_accessor :g729
  attr_accessor :aMR
  attr_accessor :eVRC
  attr_accessor :eVRCB

  def initialize(iMPU = nil, g711_64K_A_LAW = nil, g711_64K_U_LAW = nil, g723 = nil, g726 = nil, g729 = nil, aMR = nil, eVRC = nil, eVRCB = nil)
    @iMPU = iMPU
    @g711_64K_A_LAW = g711_64K_A_LAW
    @g711_64K_U_LAW = g711_64K_U_LAW
    @g723 = g723
    @g726 = g726
    @g729 = g729
    @aMR = aMR
    @eVRC = eVRC
    @eVRCB = eVRCB
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SICType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_SICTables
class DSP_SICType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SICTables
#   table1 - DSP_SICTable1
class DSP_SICTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SICTable1
class DSP_SICTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SICStruct1
#   iMPU - (any)
#   sICIDX - (any)
#   aCTIVE - (any)
#   sIIMPU - (any)
#   sYEAR - (any)
#   sMONTH - (any)
#   sDATE - (any)
#   sHOUR - (any)
#   sMINUTE - (any)
#   eYEAR - (any)
#   eMONTH - (any)
#   eDATE - (any)
#   eHOUR - (any)
#   eMINUTE - (any)
#   sICPER - (any)
class DSP_SICStruct1
  attr_accessor :iMPU
  attr_accessor :sICIDX
  attr_accessor :aCTIVE
  attr_accessor :sIIMPU
  attr_accessor :sYEAR
  attr_accessor :sMONTH
  attr_accessor :sDATE
  attr_accessor :sHOUR
  attr_accessor :sMINUTE
  attr_accessor :eYEAR
  attr_accessor :eMONTH
  attr_accessor :eDATE
  attr_accessor :eHOUR
  attr_accessor :eMINUTE
  attr_accessor :sICPER

  def initialize(iMPU = nil, sICIDX = nil, aCTIVE = nil, sIIMPU = nil, sYEAR = nil, sMONTH = nil, sDATE = nil, sHOUR = nil, sMINUTE = nil, eYEAR = nil, eMONTH = nil, eDATE = nil, eHOUR = nil, eMINUTE = nil, sICPER = nil)
    @iMPU = iMPU
    @sICIDX = sICIDX
    @aCTIVE = aCTIVE
    @sIIMPU = sIIMPU
    @sYEAR = sYEAR
    @sMONTH = sMONTH
    @sDATE = sDATE
    @sHOUR = sHOUR
    @sMINUTE = sMINUTE
    @eYEAR = eYEAR
    @eMONTH = eMONTH
    @eDATE = eDATE
    @eHOUR = eHOUR
    @eMINUTE = eMINUTE
    @sICPER = sICPER
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFSType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_CFSTables
class DSP_CFSType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFSTables
#   table1 - DSP_CFSTable1
class DSP_CFSTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFSTable1
class DSP_CFSTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFSStruct1
#   iMPU - (any)
#   eP - (any)
#   aCTIVE - (any)
#   cSIMPU - (any)
#   sHOUR - (any)
#   sMINUTE - (any)
#   eHOUR - (any)
#   eMINUTE - (any)
#   oFWEEK - (any)
#   fTIMPU - (any)
class DSP_CFSStruct1
  attr_accessor :iMPU
  attr_accessor :eP
  attr_accessor :aCTIVE
  attr_accessor :cSIMPU
  attr_accessor :sHOUR
  attr_accessor :sMINUTE
  attr_accessor :eHOUR
  attr_accessor :eMINUTE
  attr_accessor :oFWEEK
  attr_accessor :fTIMPU

  def initialize(iMPU = nil, eP = nil, aCTIVE = nil, cSIMPU = nil, sHOUR = nil, sMINUTE = nil, eHOUR = nil, eMINUTE = nil, oFWEEK = nil, fTIMPU = nil)
    @iMPU = iMPU
    @eP = eP
    @aCTIVE = aCTIVE
    @cSIMPU = cSIMPU
    @sHOUR = sHOUR
    @sMINUTE = sMINUTE
    @eHOUR = eHOUR
    @eMINUTE = eMINUTE
    @oFWEEK = oFWEEK
    @fTIMPU = fTIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DN_CALL_OUT_BARType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_DN_CALL_OUT_BARTables
class DSP_DN_CALL_OUT_BARType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DN_CALL_OUT_BARTables
#   table1 - DSP_DN_CALL_OUT_BARTable1
class DSP_DN_CALL_OUT_BARTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DN_CALL_OUT_BARTable1
class DSP_DN_CALL_OUT_BARTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DN_CALL_OUT_BARStruct1
#   iMPU - (any)
#   cOBPNO - (any)
class DSP_DN_CALL_OUT_BARStruct1
  attr_accessor :iMPU
  attr_accessor :cOBPNO

  def initialize(iMPU = nil, cOBPNO = nil)
    @iMPU = iMPU
    @cOBPNO = cOBPNO
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFSBType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_CFSBTables
class DSP_CFSBType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFSBTables
#   table1 - DSP_CFSBTable1
class DSP_CFSBTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFSBTable1
class DSP_CFSBTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFSBStruct1
#   iMPU - (any)
#   cSBSVT - (any)
class DSP_CFSBStruct1
  attr_accessor :iMPU
  attr_accessor :cSBSVT

  def initialize(iMPU = nil, cSBSVT = nil)
    @iMPU = iMPU
    @cSBSVT = cSBSVT
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFBType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_CFBTables
class DSP_CFBType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFBTables
#   table1 - DSP_CFBTable1
class DSP_CFBTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFBTable1
class DSP_CFBTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFBStruct1
#   iMPU - (any)
#   bSV - (any)
#   bSG - (any)
#   dIMPU - (any)
#   sUBINF - (any)
#   nOTIFYCALLER - (any)
#   nOTIFYFORWARDER - (any)
#   pRVTOCER - (any)
#   pRVTODES - (any)
#   aCTIVE - (any)
class DSP_CFBStruct1
  attr_accessor :iMPU
  attr_accessor :bSV
  attr_accessor :bSG
  attr_accessor :dIMPU
  attr_accessor :sUBINF
  attr_accessor :nOTIFYCALLER
  attr_accessor :nOTIFYFORWARDER
  attr_accessor :pRVTOCER
  attr_accessor :pRVTODES
  attr_accessor :aCTIVE

  def initialize(iMPU = nil, bSV = nil, bSG = nil, dIMPU = nil, sUBINF = nil, nOTIFYCALLER = nil, nOTIFYFORWARDER = nil, pRVTOCER = nil, pRVTODES = nil, aCTIVE = nil)
    @iMPU = iMPU
    @bSV = bSV
    @bSG = bSG
    @dIMPU = dIMPU
    @sUBINF = sUBINF
    @nOTIFYCALLER = nOTIFYCALLER
    @nOTIFYFORWARDER = nOTIFYFORWARDER
    @pRVTOCER = pRVTOCER
    @pRVTODES = pRVTODES
    @aCTIVE = aCTIVE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFNRType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_CFNRTables
class DSP_CFNRType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFNRTables
#   table1 - DSP_CFNRTable1
class DSP_CFNRTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFNRTable1
class DSP_CFNRTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFNRStruct1
#   iMPU - (any)
#   bSV - (any)
#   bSG - (any)
#   dIMPU - (any)
#   sUBINF - (any)
#   nOTIFYCALLER - (any)
#   nOTIFYFORWARDER - (any)
#   pRVTOCER - (any)
#   pRVTODES - (any)
#   aCTIVE - (any)
class DSP_CFNRStruct1
  attr_accessor :iMPU
  attr_accessor :bSV
  attr_accessor :bSG
  attr_accessor :dIMPU
  attr_accessor :sUBINF
  attr_accessor :nOTIFYCALLER
  attr_accessor :nOTIFYFORWARDER
  attr_accessor :pRVTOCER
  attr_accessor :pRVTODES
  attr_accessor :aCTIVE

  def initialize(iMPU = nil, bSV = nil, bSG = nil, dIMPU = nil, sUBINF = nil, nOTIFYCALLER = nil, nOTIFYFORWARDER = nil, pRVTOCER = nil, pRVTODES = nil, aCTIVE = nil)
    @iMPU = iMPU
    @bSV = bSV
    @bSG = bSG
    @dIMPU = dIMPU
    @sUBINF = sUBINF
    @nOTIFYCALLER = nOTIFYCALLER
    @nOTIFYFORWARDER = nOTIFYFORWARDER
    @pRVTOCER = pRVTOCER
    @pRVTODES = pRVTODES
    @aCTIVE = aCTIVE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFNLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_CFNLTables
class DSP_CFNLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFNLTables
#   table1 - DSP_CFNLTable1
class DSP_CFNLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFNLTable1
class DSP_CFNLTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFNLStruct1
#   iMPU - (any)
#   bSV - (any)
#   dIMPU - (any)
#   sUBINF - (any)
class DSP_CFNLStruct1
  attr_accessor :iMPU
  attr_accessor :bSV
  attr_accessor :dIMPU
  attr_accessor :sUBINF

  def initialize(iMPU = nil, bSV = nil, dIMPU = nil, sUBINF = nil)
    @iMPU = iMPU
    @bSV = bSV
    @dIMPU = dIMPU
    @sUBINF = sUBINF
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFNRCType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_CFNRCTables
class DSP_CFNRCType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFNRCTables
#   table1 - DSP_CFNRCTable1
class DSP_CFNRCTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFNRCTable1
class DSP_CFNRCTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFNRCStruct1
#   iMPU - (any)
#   bSV - (any)
#   bSG - (any)
#   dIMPU - (any)
#   sUBINF - (any)
#   nOTIFYCALLER - (any)
#   nOTIFYFORWARDER - (any)
#   aCTIVE - (any)
class DSP_CFNRCStruct1
  attr_accessor :iMPU
  attr_accessor :bSV
  attr_accessor :bSG
  attr_accessor :dIMPU
  attr_accessor :sUBINF
  attr_accessor :nOTIFYCALLER
  attr_accessor :nOTIFYFORWARDER
  attr_accessor :aCTIVE

  def initialize(iMPU = nil, bSV = nil, bSG = nil, dIMPU = nil, sUBINF = nil, nOTIFYCALLER = nil, nOTIFYFORWARDER = nil, aCTIVE = nil)
    @iMPU = iMPU
    @bSV = bSV
    @bSG = bSG
    @dIMPU = dIMPU
    @sUBINF = sUBINF
    @nOTIFYCALLER = nOTIFYCALLER
    @nOTIFYFORWARDER = nOTIFYFORWARDER
    @aCTIVE = aCTIVE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CWCFNRType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_CWCFNRTables
class DSP_CWCFNRType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CWCFNRTables
#   table1 - DSP_CWCFNRTable1
class DSP_CWCFNRTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CWCFNRTable1
class DSP_CWCFNRTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CWCFNRStruct1
#   iMPU - (any)
#   bSV - (any)
#   dIMPU - (any)
#   sUBINF - (any)
class DSP_CWCFNRStruct1
  attr_accessor :iMPU
  attr_accessor :bSV
  attr_accessor :dIMPU
  attr_accessor :sUBINF

  def initialize(iMPU = nil, bSV = nil, dIMPU = nil, sUBINF = nil)
    @iMPU = iMPU
    @bSV = bSV
    @dIMPU = dIMPU
    @sUBINF = sUBINF
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_MRINGMODEType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_MRINGMODETables
class DSP_MRINGMODEType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_MRINGMODETables
#   table1 - DSP_MRINGMODETable1
class DSP_MRINGMODETables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_MRINGMODETable1
class DSP_MRINGMODETable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_MRINGMODEStruct1
#   iMPU - (any)
#   mRINGMODE - (any)
#   rELBUSY - (any)
#   rELREJ - (any)
#   rINGTIME - (any)
#   cFMODE - (any)
#   iMPU1 - (any)
#   iMPU2 - (any)
#   iMPU3 - (any)
#   iMPU4 - (any)
#   iMPU5 - (any)
#   iMPU6 - (any)
#   iMPU7 - (any)
#   iMPU8 - (any)
#   iMPU9 - (any)
#   iMPU10 - (any)
class DSP_MRINGMODEStruct1
  attr_accessor :iMPU
  attr_accessor :mRINGMODE
  attr_accessor :rELBUSY
  attr_accessor :rELREJ
  attr_accessor :rINGTIME
  attr_accessor :cFMODE
  attr_accessor :iMPU1
  attr_accessor :iMPU2
  attr_accessor :iMPU3
  attr_accessor :iMPU4
  attr_accessor :iMPU5
  attr_accessor :iMPU6
  attr_accessor :iMPU7
  attr_accessor :iMPU8
  attr_accessor :iMPU9
  attr_accessor :iMPU10

  def initialize(iMPU = nil, mRINGMODE = nil, rELBUSY = nil, rELREJ = nil, rINGTIME = nil, cFMODE = nil, iMPU1 = nil, iMPU2 = nil, iMPU3 = nil, iMPU4 = nil, iMPU5 = nil, iMPU6 = nil, iMPU7 = nil, iMPU8 = nil, iMPU9 = nil, iMPU10 = nil)
    @iMPU = iMPU
    @mRINGMODE = mRINGMODE
    @rELBUSY = rELBUSY
    @rELREJ = rELREJ
    @rINGTIME = rINGTIME
    @cFMODE = cFMODE
    @iMPU1 = iMPU1
    @iMPU2 = iMPU2
    @iMPU3 = iMPU3
    @iMPU4 = iMPU4
    @iMPU5 = iMPU5
    @iMPU6 = iMPU6
    @iMPU7 = iMPU7
    @iMPU8 = iMPU8
    @iMPU9 = iMPU9
    @iMPU10 = iMPU10
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CISType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_CISTables
class DSP_CISType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CISTables
#   table1 - DSP_CISTable1
class DSP_CISTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CISTable1
class DSP_CISTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CISStruct1
#   iMPU - (any)
#   dUALRING - (any)
#   iMPUPC - (any)
#   rELBUSY - (any)
#   rELREJ - (any)
class DSP_CISStruct1
  attr_accessor :iMPU
  attr_accessor :dUALRING
  attr_accessor :iMPUPC
  attr_accessor :rELBUSY
  attr_accessor :rELREJ

  def initialize(iMPU = nil, dUALRING = nil, iMPUPC = nil, rELBUSY = nil, rELREJ = nil)
    @iMPU = iMPU
    @dUALRING = dUALRING
    @iMPUPC = iMPUPC
    @rELBUSY = rELBUSY
    @rELREJ = rELREJ
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CFDATAType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_CFDATATables
class LST_CFDATAType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CFDATATables
#   table1 - LST_CFDATATable1
class LST_CFDATATables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CFDATATable1
class LST_CFDATATable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CFDATAStruct1
#   iMPU - (any)
#   cFR - (any)
#   dIMPU - (any)
class LST_CFDATAStruct1
  attr_accessor :iMPU
  attr_accessor :cFR
  attr_accessor :dIMPU

  def initialize(iMPU = nil, cFR = nil, dIMPU = nil)
    @iMPU = iMPU
    @cFR = cFR
    @dIMPU = dIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_NUMCHGType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_NUMCHGTables
class LST_NUMCHGType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_NUMCHGTables
#   table1 - LST_NUMCHGTable1
class LST_NUMCHGTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_NUMCHGTable1
class LST_NUMCHGTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_NUMCHGStruct1
#   iMPU - (any)
#   nIMPU - (any)
#   cMODE - (any)
#   sMFLAG - (any)
class LST_NUMCHGStruct1
  attr_accessor :iMPU
  attr_accessor :nIMPU
  attr_accessor :cMODE
  attr_accessor :sMFLAG

  def initialize(iMPU = nil, nIMPU = nil, cMODE = nil, sMFLAG = nil)
    @iMPU = iMPU
    @nIMPU = nIMPU
    @cMODE = cMODE
    @sMFLAG = sMFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_BLKNUMType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_BLKNUMTables
class LST_BLKNUMType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_BLKNUMTables
#   table1 - LST_BLKNUMTable1
class LST_BLKNUMTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_BLKNUMTable1
class LST_BLKNUMTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_BLKNUMStruct1
#   iMPU - (any)
#   bIMPU - (any)
class LST_BLKNUMStruct1
  attr_accessor :iMPU
  attr_accessor :bIMPU

  def initialize(iMPU = nil, bIMPU = nil)
    @iMPU = iMPU
    @bIMPU = bIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WTNUMType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_WTNUMTables
class LST_WTNUMType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WTNUMTables
#   table1 - LST_WTNUMTable1
class LST_WTNUMTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WTNUMTable1
class LST_WTNUMTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WTNUMStruct1
#   iMPU - (any)
#   wTIMPU - (any)
class LST_WTNUMStruct1
  attr_accessor :iMPU
  attr_accessor :wTIMPU

  def initialize(iMPU = nil, wTIMPU = nil)
    @iMPU = iMPU
    @wTIMPU = wTIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_OWSBRType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_OWSBRTables
class LST_OWSBRType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_OWSBRTables
#   table1 - LST_OWSBRTable1
class LST_OWSBRTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_OWSBRTable1
class LST_OWSBRTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_OWSBRStruct1
#   iMPU - (any)
#   uS - (any)
#   lTOS - (any)
class LST_OWSBRStruct1
  attr_accessor :iMPU
  attr_accessor :uS
  attr_accessor :lTOS

  def initialize(iMPU = nil, uS = nil, lTOS = nil)
    @iMPU = iMPU
    @uS = uS
    @lTOS = lTOS
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_STRATEGYType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_STRATEGYTables
class LST_STRATEGYType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_STRATEGYTables
#   table1 - LST_STRATEGYTable1
class LST_STRATEGYTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_STRATEGYTable1
class LST_STRATEGYTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_STRATEGYStruct1
#   iMPU - (any)
#   gREENSTR - (any)
#   rEDSTR - (any)
#   oTHSTR - (any)
class LST_STRATEGYStruct1
  attr_accessor :iMPU
  attr_accessor :gREENSTR
  attr_accessor :rEDSTR
  attr_accessor :oTHSTR

  def initialize(iMPU = nil, gREENSTR = nil, rEDSTR = nil, oTHSTR = nil)
    @iMPU = iMPU
    @gREENSTR = gREENSTR
    @rEDSTR = rEDSTR
    @oTHSTR = oTHSTR
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_GREENNUMType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_GREENNUMTables
class LST_GREENNUMType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_GREENNUMTables
#   table1 - LST_GREENNUMTable1
class LST_GREENNUMTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_GREENNUMTable1
class LST_GREENNUMTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_GREENNUMStruct1
#   iMPU - (any)
#   gIMPU - (any)
class LST_GREENNUMStruct1
  attr_accessor :iMPU
  attr_accessor :gIMPU

  def initialize(iMPU = nil, gIMPU = nil)
    @iMPU = iMPU
    @gIMPU = gIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_REDNUMType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_REDNUMTables
class LST_REDNUMType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_REDNUMTables
#   table1 - LST_REDNUMTable1
class LST_REDNUMTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_REDNUMTable1
class LST_REDNUMTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_REDNUMStruct1
#   iMPU - (any)
#   rIMPU - (any)
class LST_REDNUMStruct1
  attr_accessor :iMPU
  attr_accessor :rIMPU

  def initialize(iMPU = nil, rIMPU = nil)
    @iMPU = iMPU
    @rIMPU = rIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BAOCType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_BAOCTables
class DSP_BAOCType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BAOCTables
#   table1 - DSP_BAOCTable1
class DSP_BAOCTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BAOCTable1
class DSP_BAOCTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BAOCStruct1
#   iMPU - (any)
#   bSG - (any)
#   aCTIVE - (any)
class DSP_BAOCStruct1
  attr_accessor :iMPU
  attr_accessor :bSG
  attr_accessor :aCTIVE

  def initialize(iMPU = nil, bSG = nil, aCTIVE = nil)
    @iMPU = iMPU
    @bSG = bSG
    @aCTIVE = aCTIVE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BOICType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_BOICTables
class DSP_BOICType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BOICTables
#   table1 - DSP_BOICTable1
class DSP_BOICTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BOICTable1
class DSP_BOICTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BOICStruct1
#   iMPU - (any)
#   bSG - (any)
#   aCTIVE - (any)
class DSP_BOICStruct1
  attr_accessor :iMPU
  attr_accessor :bSG
  attr_accessor :aCTIVE

  def initialize(iMPU = nil, bSG = nil, aCTIVE = nil)
    @iMPU = iMPU
    @bSG = bSG
    @aCTIVE = aCTIVE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BOICEXHCType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_BOICEXHCTables
class DSP_BOICEXHCType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BOICEXHCTables
#   table1 - DSP_BOICEXHCTable1
class DSP_BOICEXHCTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BOICEXHCTable1
class DSP_BOICEXHCTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BOICEXHCStruct1
#   iMPU - (any)
#   bSG - (any)
#   aCTIVE - (any)
class DSP_BOICEXHCStruct1
  attr_accessor :iMPU
  attr_accessor :bSG
  attr_accessor :aCTIVE

  def initialize(iMPU = nil, bSG = nil, aCTIVE = nil)
    @iMPU = iMPU
    @bSG = bSG
    @aCTIVE = aCTIVE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BAICType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_BAICTables
class DSP_BAICType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BAICTables
#   table1 - DSP_BAICTable1
class DSP_BAICTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BAICTable1
class DSP_BAICTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BAICStruct1
#   iMPU - (any)
#   bSG - (any)
#   aCTIVE - (any)
class DSP_BAICStruct1
  attr_accessor :iMPU
  attr_accessor :bSG
  attr_accessor :aCTIVE

  def initialize(iMPU = nil, bSG = nil, aCTIVE = nil)
    @iMPU = iMPU
    @bSG = bSG
    @aCTIVE = aCTIVE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BICROMType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_BICROMTables
class DSP_BICROMType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BICROMTables
#   table1 - DSP_BICROMTable1
class DSP_BICROMTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BICROMTable1
class DSP_BICROMTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BICROMStruct1
#   iMPU - (any)
#   bSG - (any)
#   aCTIVE - (any)
class DSP_BICROMStruct1
  attr_accessor :iMPU
  attr_accessor :bSG
  attr_accessor :aCTIVE

  def initialize(iMPU = nil, bSG = nil, aCTIVE = nil)
    @iMPU = iMPU
    @bSG = bSG
    @aCTIVE = aCTIVE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SPEED_DIALType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_SPEED_DIALTables
class DSP_SPEED_DIALType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SPEED_DIALTables
#   table1 - DSP_SPEED_DIALTable1
class DSP_SPEED_DIALTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SPEED_DIALTable1
class DSP_SPEED_DIALTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SPEED_DIALStruct1
#   iMPU - (any)
#   aBBRNUMBER - (any)
#   dESTIMPU - (any)
class DSP_SPEED_DIALStruct1
  attr_accessor :iMPU
  attr_accessor :aBBRNUMBER
  attr_accessor :dESTIMPU

  def initialize(iMPU = nil, aBBRNUMBER = nil, dESTIMPU = nil)
    @iMPU = iMPU
    @aBBRNUMBER = aBBRNUMBER
    @dESTIMPU = dESTIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_GRNCALLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_GRNCALLTables
class DSP_GRNCALLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_GRNCALLTables
#   table1 - DSP_GRNCALLTable1
class DSP_GRNCALLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_GRNCALLTable1
class DSP_GRNCALLTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_GRNCALLStruct1
#   iMPU - (any)
#   bIMPU - (any)
#   bMODE - (any)
#   tHRPTY - (any)
#   tHRPTYTIME - (any)
class DSP_GRNCALLStruct1
  attr_accessor :iMPU
  attr_accessor :bIMPU
  attr_accessor :bMODE
  attr_accessor :tHRPTY
  attr_accessor :tHRPTYTIME

  def initialize(iMPU = nil, bIMPU = nil, bMODE = nil, tHRPTY = nil, tHRPTYTIME = nil)
    @iMPU = iMPU
    @bIMPU = bIMPU
    @bMODE = bMODE
    @tHRPTY = tHRPTY
    @tHRPTYTIME = tHRPTYTIME
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_AUTOCONType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_AUTOCONTables
class DSP_AUTOCONType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_AUTOCONTables
#   table1 - DSP_AUTOCONTable1
class DSP_AUTOCONTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_AUTOCONTable1
class DSP_AUTOCONTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_AUTOCONStruct1
#   iMPU - (any)
#   sRVIMPU - (any)
class DSP_AUTOCONStruct1
  attr_accessor :iMPU
  attr_accessor :sRVIMPU

  def initialize(iMPU = nil, sRVIMPU = nil)
    @iMPU = iMPU
    @sRVIMPU = sRVIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_NIGHTSRVType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_NIGHTSRVTables
class DSP_NIGHTSRVType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_NIGHTSRVTables
#   table1 - DSP_NIGHTSRVTable1
class DSP_NIGHTSRVTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_NIGHTSRVTable1
class DSP_NIGHTSRVTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_NIGHTSRVStruct1
#   iMPU - (any)
#   sRVIMPU - (any)
class DSP_NIGHTSRVStruct1
  attr_accessor :iMPU
  attr_accessor :sRVIMPU

  def initialize(iMPU = nil, sRVIMPU = nil)
    @iMPU = iMPU
    @sRVIMPU = sRVIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BACKNUMType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_BACKNUMTables
class DSP_BACKNUMType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BACKNUMTables
#   table1 - DSP_BACKNUMTable1
class DSP_BACKNUMTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BACKNUMTable1
class DSP_BACKNUMTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BACKNUMStruct1
#   iMPU - (any)
#   sRVIMPU - (any)
class DSP_BACKNUMStruct1
  attr_accessor :iMPU
  attr_accessor :sRVIMPU

  def initialize(iMPU = nil, sRVIMPU = nil)
    @iMPU = iMPU
    @sRVIMPU = sRVIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ABSENTType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_ABSENTTables
class DSP_ABSENTType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ABSENTTables
#   table1 - DSP_ABSENTTable1
class DSP_ABSENTTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ABSENTTable1
class DSP_ABSENTTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ABSENTStruct1
#   iMPU - (any)
#   vOICE - (any)
class DSP_ABSENTStruct1
  attr_accessor :iMPU
  attr_accessor :vOICE

  def initialize(iMPU = nil, vOICE = nil)
    @iMPU = iMPU
    @vOICE = vOICE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ASIType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_ASITables
class DSP_ASIType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ASITables
#   table1 - DSP_ASITable1
class DSP_ASITables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ASITable1
class DSP_ASITable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ASIStruct1
#   iMPU - (any)
#   sTATE - (any)
class DSP_ASIStruct1
  attr_accessor :iMPU
  attr_accessor :sTATE

  def initialize(iMPU = nil, sTATE = nil)
    @iMPU = iMPU
    @sTATE = sTATE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_HOTLINEType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_HOTLINETables
class DSP_HOTLINEType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_HOTLINETables
#   table1 - DSP_HOTLINETable1
class DSP_HOTLINETables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_HOTLINETable1
class DSP_HOTLINETable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_HOTLINEStruct1
#   iMPU - (any)
#   hLITYPE - (any)
#   hLIIMPU - (any)
#   hLIDELAYTIME - (any)
class DSP_HOTLINEStruct1
  attr_accessor :iMPU
  attr_accessor :hLITYPE
  attr_accessor :hLIIMPU
  attr_accessor :hLIDELAYTIME

  def initialize(iMPU = nil, hLITYPE = nil, hLIIMPU = nil, hLIDELAYTIME = nil)
    @iMPU = iMPU
    @hLITYPE = hLITYPE
    @hLIIMPU = hLIIMPU
    @hLIDELAYTIME = hLIDELAYTIME
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CETMCIDType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_CETMCIDTables
class DSP_CETMCIDType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CETMCIDTables
#   table1 - DSP_CETMCIDTable1
class DSP_CETMCIDTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CETMCIDTable1
class DSP_CETMCIDTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CETMCIDStruct1
#   iMPU - (any)
#   pHASE - (any)
class DSP_CETMCIDStruct1
  attr_accessor :iMPU
  attr_accessor :pHASE

  def initialize(iMPU = nil, pHASE = nil)
    @iMPU = iMPU
    @pHASE = pHASE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_MCNType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_MCNTables
class DSP_MCNType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_MCNTables
#   table1 - DSP_MCNTable1
class DSP_MCNTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_MCNTable1
class DSP_MCNTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_MCNStruct1
#   iMPU - (any)
#   bIMPU - (any)
#   bNTY - (any)
#   nANTY - (any)
#   nRCNTY - (any)
class DSP_MCNStruct1
  attr_accessor :iMPU
  attr_accessor :bIMPU
  attr_accessor :bNTY
  attr_accessor :nANTY
  attr_accessor :nRCNTY

  def initialize(iMPU = nil, bIMPU = nil, bNTY = nil, nANTY = nil, nRCNTY = nil)
    @iMPU = iMPU
    @bIMPU = bIMPU
    @bNTY = bNTY
    @nANTY = nANTY
    @nRCNTY = nRCNTY
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_SUBSType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_SUBSTables
class LST_SUBSType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_SUBSTables
#   table1 - LST_SUBSTable1
class LST_SUBSTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_SUBSTable1
class LST_SUBSTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_SUBSStruct1
#   iMPU - (any)
#   sUBS - (any)
class LST_SUBSStruct1
  attr_accessor :iMPU
  attr_accessor :sUBS

  def initialize(iMPU = nil, sUBS = nil)
    @iMPU = iMPU
    @sUBS = sUBS
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ONEKEYType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_ONEKEYTables
class DSP_ONEKEYType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ONEKEYTables
#   table1 - DSP_ONEKEYTable1
class DSP_ONEKEYTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ONEKEYTable1
class DSP_ONEKEYTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ONEKEYStruct1
#   iMPU - (any)
#   dUALRING - (any)
#   iMPUPC - (any)
#   rELBUSY - (any)
#   rELREJ - (any)
class DSP_ONEKEYStruct1
  attr_accessor :iMPU
  attr_accessor :dUALRING
  attr_accessor :iMPUPC
  attr_accessor :rELBUSY
  attr_accessor :rELREJ

  def initialize(iMPU = nil, dUALRING = nil, iMPUPC = nil, rELBUSY = nil, rELREJ = nil)
    @iMPU = iMPU
    @dUALRING = dUALRING
    @iMPUPC = iMPUPC
    @rELBUSY = rELBUSY
    @rELREJ = rELREJ
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_IBDSType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_IBDSTables
class DSP_IBDSType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_IBDSTables
#   table1 - DSP_IBDSTable1
class DSP_IBDSTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_IBDSTable1
class DSP_IBDSTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_IBDSStruct1
#   iMPU - (any)
#   vIMPU - (any)
#   sUBNETID - (any)
class DSP_IBDSStruct1
  attr_accessor :iMPU
  attr_accessor :vIMPU
  attr_accessor :sUBNETID

  def initialize(iMPU = nil, vIMPU = nil, sUBNETID = nil)
    @iMPU = iMPU
    @vIMPU = vIMPU
    @sUBNETID = sUBNETID
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}QRY_IBDSType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - QRY_IBDSTables
class QRY_IBDSType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}QRY_IBDSTables
#   table1 - QRY_IBDSTable1
class QRY_IBDSTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}QRY_IBDSTable1
class QRY_IBDSTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}QRY_IBDSStruct1
#   iMPU - (any)
#   vIMPU - (any)
#   sUBNETID - (any)
class QRY_IBDSStruct1
  attr_accessor :iMPU
  attr_accessor :vIMPU
  attr_accessor :sUBNETID

  def initialize(iMPU = nil, vIMPU = nil, sUBNETID = nil)
    @iMPU = iMPU
    @vIMPU = vIMPU
    @sUBNETID = sUBNETID
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_OBDSType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_OBDSTables
class DSP_OBDSType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_OBDSTables
#   table1 - DSP_OBDSTable1
class DSP_OBDSTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_OBDSTable1
class DSP_OBDSTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_OBDSStruct1
#   iMPU - (any)
#   vIMPU - (any)
#   sUBNETID - (any)
class DSP_OBDSStruct1
  attr_accessor :iMPU
  attr_accessor :vIMPU
  attr_accessor :sUBNETID

  def initialize(iMPU = nil, vIMPU = nil, sUBNETID = nil)
    @iMPU = iMPU
    @vIMPU = vIMPU
    @sUBNETID = sUBNETID
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_NPASType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_NPASTables
class LST_NPASType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_NPASTables
#   table1 - LST_NPASTable1
class LST_NPASTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_NPASTable1
class LST_NPASTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_NPASStruct1
#   iMPU - (any)
#   nTN - (any)
#   nSIPN - (any)
#   pYEAR - (any)
#   pMONTH - (any)
#   pDAY - (any)
#   pHOUR - (any)
#   pMINUTE - (any)
#   aYEAR - (any)
#   aMONTH - (any)
#   aDAY - (any)
#   aHOUR - (any)
#   aMINUTE - (any)
#   eYEAR - (any)
#   eMONTH - (any)
#   eDAY - (any)
#   pAMODE - (any)
#   aAMODE - (any)
class LST_NPASStruct1
  attr_accessor :iMPU
  attr_accessor :nTN
  attr_accessor :nSIPN
  attr_accessor :pYEAR
  attr_accessor :pMONTH
  attr_accessor :pDAY
  attr_accessor :pHOUR
  attr_accessor :pMINUTE
  attr_accessor :aYEAR
  attr_accessor :aMONTH
  attr_accessor :aDAY
  attr_accessor :aHOUR
  attr_accessor :aMINUTE
  attr_accessor :eYEAR
  attr_accessor :eMONTH
  attr_accessor :eDAY
  attr_accessor :pAMODE
  attr_accessor :aAMODE

  def initialize(iMPU = nil, nTN = nil, nSIPN = nil, pYEAR = nil, pMONTH = nil, pDAY = nil, pHOUR = nil, pMINUTE = nil, aYEAR = nil, aMONTH = nil, aDAY = nil, aHOUR = nil, aMINUTE = nil, eYEAR = nil, eMONTH = nil, eDAY = nil, pAMODE = nil, aAMODE = nil)
    @iMPU = iMPU
    @nTN = nTN
    @nSIPN = nSIPN
    @pYEAR = pYEAR
    @pMONTH = pMONTH
    @pDAY = pDAY
    @pHOUR = pHOUR
    @pMINUTE = pMINUTE
    @aYEAR = aYEAR
    @aMONTH = aMONTH
    @aDAY = aDAY
    @aHOUR = aHOUR
    @aMINUTE = aMINUTE
    @eYEAR = eYEAR
    @eMONTH = eMONTH
    @eDAY = eDAY
    @pAMODE = pAMODE
    @aAMODE = aAMODE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_GOIRType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_GOIRTables
class DSP_GOIRType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_GOIRTables
#   table1 - DSP_GOIRTable1
class DSP_GOIRTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_GOIRTable1
class DSP_GOIRTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_GOIRStruct1
#   iMPU - (any)
#   gMODE - (any)
class DSP_GOIRStruct1
  attr_accessor :iMPU
  attr_accessor :gMODE

  def initialize(iMPU = nil, gMODE = nil)
    @iMPU = iMPU
    @gMODE = gMODE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_MOIRType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_MOIRTables
class DSP_MOIRType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_MOIRTables
#   table1 - DSP_MOIRTable1
class DSP_MOIRTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_MOIRTable1
class DSP_MOIRTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_MOIRStruct1
#   iMPU - (any)
#   mMODE - (any)
class DSP_MOIRStruct1
  attr_accessor :iMPU
  attr_accessor :mMODE

  def initialize(iMPU = nil, mMODE = nil)
    @iMPU = iMPU
    @mMODE = mMODE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_TIRType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_TIRTables
class DSP_TIRType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_TIRTables
#   table1 - DSP_TIRTable1
class DSP_TIRTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_TIRTable1
class DSP_TIRTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_TIRStruct1
#   iMPU - (any)
#   tMODE - (any)
#   sTYPE - (any)
#   sHOUR - (any)
#   sMINUTE - (any)
#   eHOUR - (any)
#   eMINUTE - (any)
class DSP_TIRStruct1
  attr_accessor :iMPU
  attr_accessor :tMODE
  attr_accessor :sTYPE
  attr_accessor :sHOUR
  attr_accessor :sMINUTE
  attr_accessor :eHOUR
  attr_accessor :eMINUTE

  def initialize(iMPU = nil, tMODE = nil, sTYPE = nil, sHOUR = nil, sMINUTE = nil, eHOUR = nil, eMINUTE = nil)
    @iMPU = iMPU
    @tMODE = tMODE
    @sTYPE = sTYPE
    @sHOUR = sHOUR
    @sMINUTE = sMINUTE
    @eHOUR = eHOUR
    @eMINUTE = eMINUTE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DSTRType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_DSTRTables
class DSP_DSTRType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DSTRTables
#   table1 - DSP_DSTRTable1
class DSP_DSTRTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DSTRTable1
class DSP_DSTRTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DSTRStruct1
#   iMPU - (any)
#   pATTERN - (any)
#   cWPATTERN - (any)
#   sIMPU - (any)
class DSP_DSTRStruct1
  attr_accessor :iMPU
  attr_accessor :pATTERN
  attr_accessor :cWPATTERN
  attr_accessor :sIMPU

  def initialize(iMPU = nil, pATTERN = nil, cWPATTERN = nil, sIMPU = nil)
    @iMPU = iMPU
    @pATTERN = pATTERN
    @cWPATTERN = cWPATTERN
    @sIMPU = sIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_VIMPUType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_VIMPUTables
class LST_VIMPUType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_VIMPUTables
#   table1 - LST_VIMPUTable1
class LST_VIMPUTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_VIMPUTable1
class LST_VIMPUTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_VIMPUStruct1
#   vIMPU - (any)
#   sUBNETID - (any)
#   oCPFLAG - (any)
class LST_VIMPUStruct1
  attr_accessor :vIMPU
  attr_accessor :sUBNETID
  attr_accessor :oCPFLAG

  def initialize(vIMPU = nil, sUBNETID = nil, oCPFLAG = nil)
    @vIMPU = vIMPU
    @sUBNETID = sUBNETID
    @oCPFLAG = oCPFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_IBDVIMPUType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_IBDVIMPUTables
class LST_IBDVIMPUType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_IBDVIMPUTables
#   table1 - LST_IBDVIMPUTable1
class LST_IBDVIMPUTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_IBDVIMPUTable1
class LST_IBDVIMPUTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_IBDVIMPUStruct1
#   sUBNETID - (any)
#   vIMPU - (any)
class LST_IBDVIMPUStruct1
  attr_accessor :sUBNETID
  attr_accessor :vIMPU

  def initialize(sUBNETID = nil, vIMPU = nil)
    @sUBNETID = sUBNETID
    @vIMPU = vIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PRKSBRType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_PRKSBRTables
class LST_PRKSBRType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PRKSBRTables
#   table1 - LST_PRKSBRTable1
class LST_PRKSBRTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PRKSBRTable1
class LST_PRKSBRTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PRKSBRStruct1
#   iMPU - (any)
#   sTYPE - (any)
#   tREAT - (any)
#   rNUM - (any)
class LST_PRKSBRStruct1
  attr_accessor :iMPU
  attr_accessor :sTYPE
  attr_accessor :tREAT
  attr_accessor :rNUM

  def initialize(iMPU = nil, sTYPE = nil, tREAT = nil, rNUM = nil)
    @iMPU = iMPU
    @sTYPE = sTYPE
    @tREAT = tREAT
    @rNUM = rNUM
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_NUMINVAType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_NUMINVATables
class LST_NUMINVAType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_NUMINVATables
#   table1 - LST_NUMINVATable1
class LST_NUMINVATables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_NUMINVATable1
class LST_NUMINVATable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_NUMINVAStruct1
#   iMPU - (any)
#   dURATION - (any)
#   tN - (any)
#   yEAR - (any)
#   mONTH - (any)
#   dAY - (any)
class LST_NUMINVAStruct1
  attr_accessor :iMPU
  attr_accessor :dURATION
  attr_accessor :tN
  attr_accessor :yEAR
  attr_accessor :mONTH
  attr_accessor :dAY

  def initialize(iMPU = nil, dURATION = nil, tN = nil, yEAR = nil, mONTH = nil, dAY = nil)
    @iMPU = iMPU
    @dURATION = dURATION
    @tN = tN
    @yEAR = yEAR
    @mONTH = mONTH
    @dAY = dAY
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_IBDSUBNUMType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_IBDSUBNUMTables
class LST_IBDSUBNUMType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_IBDSUBNUMTables
#   table1 - LST_IBDSUBNUMTable1
class LST_IBDSUBNUMTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_IBDSUBNUMTable1
class LST_IBDSUBNUMTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_IBDSUBNUMStruct1
#   hOMENUM - (any)
#   sUBID - (any)
class LST_IBDSUBNUMStruct1
  attr_accessor :hOMENUM
  attr_accessor :sUBID

  def initialize(hOMENUM = nil, sUBID = nil)
    @hOMENUM = hOMENUM
    @sUBID = sUBID
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CALLERIDType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_CALLERIDTables
class DSP_CALLERIDType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CALLERIDTables
#   table1 - DSP_CALLERIDTable1
class DSP_CALLERIDTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CALLERIDTable1
class DSP_CALLERIDTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CALLERIDStruct1
#   iMPU - (any)
#   bIMPU - (any)
#   aCTIVE - (any)
class DSP_CALLERIDStruct1
  attr_accessor :iMPU
  attr_accessor :bIMPU
  attr_accessor :aCTIVE

  def initialize(iMPU = nil, bIMPU = nil, aCTIVE = nil)
    @iMPU = iMPU
    @bIMPU = bIMPU
    @aCTIVE = aCTIVE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_IPTVVCType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_IPTVVCTables
class DSP_IPTVVCType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_IPTVVCTables
#   table1 - DSP_IPTVVCTable1
class DSP_IPTVVCTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_IPTVVCTable1
class DSP_IPTVVCTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_IPTVVCStruct1
#   iMPU - (any)
#   sTBIMPU - (any)
class DSP_IPTVVCStruct1
  attr_accessor :iMPU
  attr_accessor :sTBIMPU

  def initialize(iMPU = nil, sTBIMPU = nil)
    @iMPU = iMPU
    @sTBIMPU = sTBIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_NPType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_NPTables
class DSP_NPType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_NPTables
#   table1 - DSP_NPTable1
class DSP_NPTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_NPTable1
class DSP_NPTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_NPStruct1
#   iMPU - (any)
#   pIMPU - (any)
class DSP_NPStruct1
  attr_accessor :iMPU
  attr_accessor :pIMPU

  def initialize(iMPU = nil, pIMPU = nil)
    @iMPU = iMPU
    @pIMPU = pIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SECType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_SECTables
class DSP_SECType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SECTables
#   table1 - DSP_SECTable1
class DSP_SECTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SECTable1
class DSP_SECTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SECStruct1
#   iMPU - (any)
#   sECIMPU - (any)
class DSP_SECStruct1
  attr_accessor :iMPU
  attr_accessor :sECIMPU

  def initialize(iMPU = nil, sECIMPU = nil)
    @iMPU = iMPU
    @sECIMPU = sECIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SBType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_SBTables
class DSP_SBType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SBTables
#   table1 - DSP_SBTable1
class DSP_SBTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SBTable1
class DSP_SBTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SBStruct1
#   iMPU - (any)
#   pRIONUM - (any)
#   sTARTTIME - (any)
#   sTOPTIME - (any)
#   rECURRENCE - (any)
class DSP_SBStruct1
  attr_accessor :iMPU
  attr_accessor :pRIONUM
  attr_accessor :sTARTTIME
  attr_accessor :sTOPTIME
  attr_accessor :rECURRENCE

  def initialize(iMPU = nil, pRIONUM = [], sTARTTIME = nil, sTOPTIME = nil, rECURRENCE = nil)
    @iMPU = iMPU
    @pRIONUM = pRIONUM
    @sTARTTIME = sTARTTIME
    @sTOPTIME = sTOPTIME
    @rECURRENCE = rECURRENCE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_FILCRITType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_FILCRITTables
class LST_FILCRITType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_FILCRITTables
#   table1 - LST_FILCRITTable1
class LST_FILCRITTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_FILCRITTable1
class LST_FILCRITTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_FILCRITStruct1
#   iMPU - (any)
#   nAME - (any)
#   cOMBIN - (any)
#   cALLERINFO - (any)
#   pRESTATUS - (any)
#   hOLDGRP - (any)
#   dATEMODE - (any)
#   mONTH - (any)
#   oRDER - (any)
#   dAYOFWEEK - (any)
#   sTARTDAY - (any)
#   eNDDAY - (any)
#   sTARTDATE - (any)
#   eNDDATE - (any)
#   sTARTTIME - (any)
#   eNDTIME - (any)
class LST_FILCRITStruct1
  attr_accessor :iMPU
  attr_accessor :nAME
  attr_accessor :cOMBIN
  attr_accessor :cALLERINFO
  attr_accessor :pRESTATUS
  attr_accessor :hOLDGRP
  attr_accessor :dATEMODE
  attr_accessor :mONTH
  attr_accessor :oRDER
  attr_accessor :dAYOFWEEK
  attr_accessor :sTARTDAY
  attr_accessor :eNDDAY
  attr_accessor :sTARTDATE
  attr_accessor :eNDDATE
  attr_accessor :sTARTTIME
  attr_accessor :eNDTIME

  def initialize(iMPU = nil, nAME = nil, cOMBIN = nil, cALLERINFO = nil, pRESTATUS = nil, hOLDGRP = nil, dATEMODE = nil, mONTH = nil, oRDER = nil, dAYOFWEEK = nil, sTARTDAY = nil, eNDDAY = nil, sTARTDATE = nil, eNDDATE = nil, sTARTTIME = nil, eNDTIME = nil)
    @iMPU = iMPU
    @nAME = nAME
    @cOMBIN = cOMBIN
    @cALLERINFO = cALLERINFO
    @pRESTATUS = pRESTATUS
    @hOLDGRP = hOLDGRP
    @dATEMODE = dATEMODE
    @mONTH = mONTH
    @oRDER = oRDER
    @dAYOFWEEK = dAYOFWEEK
    @sTARTDAY = sTARTDAY
    @eNDDAY = eNDDAY
    @sTARTDATE = sTARTDATE
    @eNDDATE = eNDDATE
    @sTARTTIME = sTARTTIME
    @eNDTIME = eNDTIME
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CALLERINFOType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_CALLERINFOTables
class LST_CALLERINFOType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CALLERINFOTables
#   table1 - LST_CALLERINFOTable1
class LST_CALLERINFOTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CALLERINFOTable1
class LST_CALLERINFOTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CALLERINFOStruct1
#   iMPU - (any)
#   cALLERNUM - (any)
#   cALLERTYPE - (any)
class LST_CALLERINFOStruct1
  attr_accessor :iMPU
  attr_accessor :cALLERNUM
  attr_accessor :cALLERTYPE

  def initialize(iMPU = nil, cALLERNUM = nil, cALLERTYPE = nil)
    @iMPU = iMPU
    @cALLERNUM = cALLERNUM
    @cALLERTYPE = cALLERTYPE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PRESSTUSType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_PRESSTUSTables
class LST_PRESSTUSType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PRESSTUSTables
#   table1 - LST_PRESSTUSTable1
class LST_PRESSTUSTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PRESSTUSTable1
class LST_PRESSTUSTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PRESSTUSStruct1
#   iMPU - (any)
#   pRESSTUS - (any)
class LST_PRESSTUSStruct1
  attr_accessor :iMPU
  attr_accessor :pRESSTUS

  def initialize(iMPU = nil, pRESSTUS = nil)
    @iMPU = iMPU
    @pRESSTUS = pRESSTUS
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ONENUMType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_ONENUMTables
class LST_ONENUMType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ONENUMTables
#   table1 - LST_ONENUMTable1
class LST_ONENUMTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ONENUMTable1
class LST_ONENUMTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ONENUMStruct1
#   iMPU - (any)
#   iDX - (any)
#   pRIO - (any)
#   sRVTYPE - (any)
#   nUMTYPE - (any)
#   rELNUMLST - (any)
#   pROMODE302 - (any)
#   rINGTONE - (any)
#   cWRTONE - (any)
#   rTYPE - (any)
#   cFMODE - (any)
#   fLTCOMB - (any)
#   cALLEEDSPNUM - (any)
#   aSSIDX - (any)
class LST_ONENUMStruct1
  attr_accessor :iMPU
  attr_accessor :iDX
  attr_accessor :pRIO
  attr_accessor :sRVTYPE
  attr_accessor :nUMTYPE
  attr_accessor :rELNUMLST
  attr_accessor :pROMODE302
  attr_accessor :rINGTONE
  attr_accessor :cWRTONE
  attr_accessor :rTYPE
  attr_accessor :cFMODE
  attr_accessor :fLTCOMB
  attr_accessor :cALLEEDSPNUM
  attr_accessor :aSSIDX

  def initialize(iMPU = nil, iDX = nil, pRIO = nil, sRVTYPE = nil, nUMTYPE = nil, rELNUMLST = [], pROMODE302 = nil, rINGTONE = nil, cWRTONE = nil, rTYPE = nil, cFMODE = nil, fLTCOMB = nil, cALLEEDSPNUM = nil, aSSIDX = nil)
    @iMPU = iMPU
    @iDX = iDX
    @pRIO = pRIO
    @sRVTYPE = sRVTYPE
    @nUMTYPE = nUMTYPE
    @rELNUMLST = rELNUMLST
    @pROMODE302 = pROMODE302
    @rINGTONE = rINGTONE
    @cWRTONE = cWRTONE
    @rTYPE = rTYPE
    @cFMODE = cFMODE
    @fLTCOMB = fLTCOMB
    @cALLEEDSPNUM = cALLEEDSPNUM
    @aSSIDX = aSSIDX
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ASSLSTType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_ASSLSTTables
class LST_ASSLSTType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ASSLSTTables
#   table1 - LST_ASSLSTTable1
class LST_ASSLSTTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ASSLSTTable1
class LST_ASSLSTTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ASSLSTStruct1
#   iMPU - (any)
#   aSSIDX - (any)
#   aSSTYPE - (any)
#   aSSDATA - LST_ASSLSTStruct1::ASSDATA
class LST_ASSLSTStruct1

  # inner class for member: ASSDATA
  # {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ASSDATA
  #   aCTED - (any)
  #   dSPNUM - (any)
  #   pRMNUM - (any)
  #   mAXNUM - (any)
  #   rTIME - (any)
  #   aND - LST_ASSLSTStruct1::ASSDATA::AND
  class ASSDATA

    # inner class for member: AND
    # {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}AND
    #   aN - (any)
    #   uT - (any)
    #   nA - (any)
    #   nRT - (any)
    class AND
      attr_accessor :aN
      attr_accessor :uT
      attr_accessor :nA
      attr_accessor :nRT

      def initialize(aN = nil, uT = nil, nA = nil, nRT = nil)
        @aN = aN
        @uT = uT
        @nA = nA
        @nRT = nRT
      end
    end

    attr_accessor :aCTED
    attr_accessor :dSPNUM
    attr_accessor :pRMNUM
    attr_accessor :mAXNUM
    attr_accessor :rTIME
    attr_accessor :aND

    def initialize(aCTED = nil, dSPNUM = nil, pRMNUM = nil, mAXNUM = nil, rTIME = nil, aND = [])
      @aCTED = aCTED
      @dSPNUM = dSPNUM
      @pRMNUM = pRMNUM
      @mAXNUM = mAXNUM
      @rTIME = rTIME
      @aND = aND
    end
  end

  attr_accessor :iMPU
  attr_accessor :aSSIDX
  attr_accessor :aSSTYPE
  attr_accessor :aSSDATA

  def initialize(iMPU = nil, aSSIDX = nil, aSSTYPE = nil, aSSDATA = nil)
    @iMPU = iMPU
    @aSSIDX = aSSIDX
    @aSSTYPE = aSSTYPE
    @aSSDATA = aSSDATA
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CUGINFOType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_CUGINFOTables
class LST_CUGINFOType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CUGINFOTables
#   table1 - LST_CUGINFOTable1
class LST_CUGINFOTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CUGINFOTable1
class LST_CUGINFOTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CUGINFOStruct1
#   iMPU - (any)
#   nETWORKID - (any)
#   iNTERLOCKCODE - (any)
#   pRIORITY - (any)
class LST_CUGINFOStruct1
  attr_accessor :iMPU
  attr_accessor :nETWORKID
  attr_accessor :iNTERLOCKCODE
  attr_accessor :pRIORITY

  def initialize(iMPU = nil, nETWORKID = nil, iNTERLOCKCODE = nil, pRIORITY = nil)
    @iMPU = iMPU
    @nETWORKID = nETWORKID
    @iNTERLOCKCODE = iNTERLOCKCODE
    @pRIORITY = pRIORITY
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_PINType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_PINTables
class DSP_PINType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_PINTables
#   table1 - DSP_PINTable1
class DSP_PINTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_PINTable1
class DSP_PINTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_PINStruct1
#   iMPU - (any)
#   sTATUS - (any)
#   iNCNT - (any)
#   lCKTIME - (any)
class DSP_PINStruct1
  attr_accessor :iMPU
  attr_accessor :sTATUS
  attr_accessor :iNCNT
  attr_accessor :lCKTIME

  def initialize(iMPU = nil, sTATUS = nil, iNCNT = nil, lCKTIME = nil)
    @iMPU = iMPU
    @sTATUS = sTATUS
    @iNCNT = iNCNT
    @lCKTIME = lCKTIME
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PINMODEType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_PINMODETables
class LST_PINMODEType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PINMODETables
#   table1 - LST_PINMODETable1
class LST_PINMODETables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PINMODETable1
class LST_PINMODETable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PINMODEStruct1
#   iMPU - (any)
#   uPF - (any)
class LST_PINMODEStruct1
  attr_accessor :iMPU
  attr_accessor :uPF

  def initialize(iMPU = nil, uPF = nil)
    @iMPU = iMPU
    @uPF = uPF
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CDIVBARGRPType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_CDIVBARGRPTables
class LST_CDIVBARGRPType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CDIVBARGRPTables
#   table1 - LST_CDIVBARGRPTable1
class LST_CDIVBARGRPTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CDIVBARGRPTable1
class LST_CDIVBARGRPTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CDIVBARGRPStruct1
#   iMPU - (any)
#   cDIVBARGRP - (any)
class LST_CDIVBARGRPStruct1
  attr_accessor :iMPU
  attr_accessor :cDIVBARGRP

  def initialize(iMPU = nil, cDIVBARGRP = nil)
    @iMPU = iMPU
    @cDIVBARGRP = cDIVBARGRP
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SS_USE_ALLOWEDType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_SS_USE_ALLOWEDTables
class DSP_SS_USE_ALLOWEDType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SS_USE_ALLOWEDTables
#   table1 - DSP_SS_USE_ALLOWEDTable1
class DSP_SS_USE_ALLOWEDTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SS_USE_ALLOWEDTable1
class DSP_SS_USE_ALLOWEDTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SS_USE_ALLOWEDStruct1
#   iMPU - (any)
#   nSCFU - (any)
#   nSCFUVM - (any)
#   nSCFB - (any)
#   nSCFBVM - (any)
#   nSCFNR - (any)
#   nSCFNRVM - (any)
#   nSCFNL - (any)
#   nSCFNLVM - (any)
#   nSCD - (any)
#   nSCDVM - (any)
#   nSCFNRC - (any)
#   nSCFNRCVM - (any)
#   nSCIDCW - (any)
#   nSRIP - (any)
#   nSRID - (any)
#   nSNRID - (any)
#   nSRND - (any)
#   nSNRND - (any)
#   nSOIP - (any)
#   nSGOIR - (any)
#   nSMOIR - (any)
#   nSTIP - (any)
#   nSTIR - (any)
#   nSOTIR - (any)
#   nSCLIP - (any)
#   nSCLIPNOSCREENING - (any)
#   nSRIO - (any)
#   nSCNIP - (any)
#   nSCLIR - (any)
#   nSCNIR - (any)
#   nSCW - (any)
#   nSCCW - (any)
#   nSACR - (any)
#   nSCR - (any)
#   nSWAKE_UP - (any)
#   nSAOC_D - (any)
#   nSAOC_E - (any)
#   nSXEXH - (any)
#   nSXEGJ - (any)
#   nSCWCFNR - (any)
#   nSIIFC - (any)
#   nSDN_CALL_OUT_BAR - (any)
#   nSCCBS - (any)
#   nSCCNR - (any)
#   nSCCBSR - (any)
#   nSCCNRR - (any)
#   nS3PTY - (any)
#   nSNPTY - (any)
#   nSDND - (any)
#   nSMCR - (any)
#   nSCBA - (any)
#   nSTMP_LIN - (any)
#   nSCODEC_CNTRL - (any)
#   nSMWI - (any)
#   nSDC - (any)
#   nSHOLD - (any)
#   nSECT - (any)
#   nSCFTB - (any)
#   nSDAN - (any)
#   nSSTOP_SECRET - (any)
#   nSMCID - (any)
#   nSEBO - (any)
#   nSICO - (any)
#   nSOUTG - (any)
#   nSINQYH - (any)
#   nSUINFO - (any)
#   nSDN_CALL_OUT_ALLOW - (any)
#   nSSIC - (any)
#   nSSOC - (any)
#   nSSETCFNRTIME - (any)
#   nSCFS - (any)
#   nSCFSB - (any)
#   nSFAX - (any)
#   nSABRC - (any)
#   nSACRTOVM - (any)
#   nSPREPAID - (any)
#   nSCRBT - (any)
#   nSICB - (any)
#   nSMRINGING - (any)
#   nSCIS - (any)
#   nSCBEG - (any)
#   nSCOLP - (any)
#   nSCOLR - (any)
#   nSCOLPOVR - (any)
#   nSBAOC - (any)
#   nSBOIC - (any)
#   nSBOICEXHC - (any)
#   nSBAIC - (any)
#   nSBICROM - (any)
#   nSSPEED_DIAL - (any)
#   nSSD1D - (any)
#   nSSD2D - (any)
#   nSGRNCALL - (any)
#   nSCPARK - (any)
#   nSGAA - (any)
#   nSQSNS - (any)
#   nSMSN - (any)
#   nSHOTLINE - (any)
#   nSAOC_S - (any)
#   nSNIGHTSRV - (any)
#   nSBACKNUM - (any)
#   nSAUTOCON - (any)
#   nSCAMPON - (any)
#   nSCTD - (any)
#   nSCLICKHOLD - (any)
#   nSQUEUE - (any)
#   nSSANSWER - (any)
#   nSICENCF - (any)
#   nSCFGO - (any)
#   nSCECT - (any)
#   nSCTGO - (any)
#   nSCTIO - (any)
#   nSSETBUSY - (any)
#   nSOVERSTEP - (any)
#   nSABSENT - (any)
#   nSMONITOR - (any)
#   nSFMONITOR - (any)
#   nSDISCNT - (any)
#   nSFDISCNT - (any)
#   nSINSERT - (any)
#   nSFINSERT - (any)
#   nSASI - (any)
#   nSPWCB - (any)
#   nSRD - (any)
#   nSLCPS - (any)
#   nSNCPS - (any)
#   nSICPS - (any)
#   nSHCPS - (any)
#   nSCBCLOCK - (any)
#   nSMINIBAR - (any)
#   nSMCN - (any)
#   nSDSTR - (any)
#   nSOPRREG - (any)
#   nSONEKEY - (any)
#   nSINBOUND - (any)
#   nSOUTBOUND - (any)
#   nSCALLERID - (any)
#   nSCUN - (any)
#   nSIPTVVC - (any)
#   nSNP - (any)
#   nSSEC - (any)
#   nSSECSTA - (any)
#   nSHRCN - (any)
#   nSSB - (any)
#   nSSCCA - (any)
#   nSCCS - (any)
#   nSOCCR - (any)
#   nSIMSMS - (any)
class DSP_SS_USE_ALLOWEDStruct1
  attr_accessor :iMPU
  attr_accessor :nSCFU
  attr_accessor :nSCFUVM
  attr_accessor :nSCFB
  attr_accessor :nSCFBVM
  attr_accessor :nSCFNR
  attr_accessor :nSCFNRVM
  attr_accessor :nSCFNL
  attr_accessor :nSCFNLVM
  attr_accessor :nSCD
  attr_accessor :nSCDVM
  attr_accessor :nSCFNRC
  attr_accessor :nSCFNRCVM
  attr_accessor :nSCIDCW
  attr_accessor :nSRIP
  attr_accessor :nSRID
  attr_accessor :nSNRID
  attr_accessor :nSRND
  attr_accessor :nSNRND
  attr_accessor :nSOIP
  attr_accessor :nSGOIR
  attr_accessor :nSMOIR
  attr_accessor :nSTIP
  attr_accessor :nSTIR
  attr_accessor :nSOTIR
  attr_accessor :nSCLIP
  attr_accessor :nSCLIPNOSCREENING
  attr_accessor :nSRIO
  attr_accessor :nSCNIP
  attr_accessor :nSCLIR
  attr_accessor :nSCNIR
  attr_accessor :nSCW
  attr_accessor :nSCCW
  attr_accessor :nSACR
  attr_accessor :nSCR
  attr_accessor :nSWAKE_UP
  attr_accessor :nSAOC_D
  attr_accessor :nSAOC_E
  attr_accessor :nSXEXH
  attr_accessor :nSXEGJ
  attr_accessor :nSCWCFNR
  attr_accessor :nSIIFC
  attr_accessor :nSDN_CALL_OUT_BAR
  attr_accessor :nSCCBS
  attr_accessor :nSCCNR
  attr_accessor :nSCCBSR
  attr_accessor :nSCCNRR
  attr_accessor :nS3PTY
  attr_accessor :nSNPTY
  attr_accessor :nSDND
  attr_accessor :nSMCR
  attr_accessor :nSCBA
  attr_accessor :nSTMP_LIN
  attr_accessor :nSCODEC_CNTRL
  attr_accessor :nSMWI
  attr_accessor :nSDC
  attr_accessor :nSHOLD
  attr_accessor :nSECT
  attr_accessor :nSCFTB
  attr_accessor :nSDAN
  attr_accessor :nSSTOP_SECRET
  attr_accessor :nSMCID
  attr_accessor :nSEBO
  attr_accessor :nSICO
  attr_accessor :nSOUTG
  attr_accessor :nSINQYH
  attr_accessor :nSUINFO
  attr_accessor :nSDN_CALL_OUT_ALLOW
  attr_accessor :nSSIC
  attr_accessor :nSSOC
  attr_accessor :nSSETCFNRTIME
  attr_accessor :nSCFS
  attr_accessor :nSCFSB
  attr_accessor :nSFAX
  attr_accessor :nSABRC
  attr_accessor :nSACRTOVM
  attr_accessor :nSPREPAID
  attr_accessor :nSCRBT
  attr_accessor :nSICB
  attr_accessor :nSMRINGING
  attr_accessor :nSCIS
  attr_accessor :nSCBEG
  attr_accessor :nSCOLP
  attr_accessor :nSCOLR
  attr_accessor :nSCOLPOVR
  attr_accessor :nSBAOC
  attr_accessor :nSBOIC
  attr_accessor :nSBOICEXHC
  attr_accessor :nSBAIC
  attr_accessor :nSBICROM
  attr_accessor :nSSPEED_DIAL
  attr_accessor :nSSD1D
  attr_accessor :nSSD2D
  attr_accessor :nSGRNCALL
  attr_accessor :nSCPARK
  attr_accessor :nSGAA
  attr_accessor :nSQSNS
  attr_accessor :nSMSN
  attr_accessor :nSHOTLINE
  attr_accessor :nSAOC_S
  attr_accessor :nSNIGHTSRV
  attr_accessor :nSBACKNUM
  attr_accessor :nSAUTOCON
  attr_accessor :nSCAMPON
  attr_accessor :nSCTD
  attr_accessor :nSCLICKHOLD
  attr_accessor :nSQUEUE
  attr_accessor :nSSANSWER
  attr_accessor :nSICENCF
  attr_accessor :nSCFGO
  attr_accessor :nSCECT
  attr_accessor :nSCTGO
  attr_accessor :nSCTIO
  attr_accessor :nSSETBUSY
  attr_accessor :nSOVERSTEP
  attr_accessor :nSABSENT
  attr_accessor :nSMONITOR
  attr_accessor :nSFMONITOR
  attr_accessor :nSDISCNT
  attr_accessor :nSFDISCNT
  attr_accessor :nSINSERT
  attr_accessor :nSFINSERT
  attr_accessor :nSASI
  attr_accessor :nSPWCB
  attr_accessor :nSRD
  attr_accessor :nSLCPS
  attr_accessor :nSNCPS
  attr_accessor :nSICPS
  attr_accessor :nSHCPS
  attr_accessor :nSCBCLOCK
  attr_accessor :nSMINIBAR
  attr_accessor :nSMCN
  attr_accessor :nSDSTR
  attr_accessor :nSOPRREG
  attr_accessor :nSONEKEY
  attr_accessor :nSINBOUND
  attr_accessor :nSOUTBOUND
  attr_accessor :nSCALLERID
  attr_accessor :nSCUN
  attr_accessor :nSIPTVVC
  attr_accessor :nSNP
  attr_accessor :nSSEC
  attr_accessor :nSSECSTA
  attr_accessor :nSHRCN
  attr_accessor :nSSB
  attr_accessor :nSSCCA
  attr_accessor :nSCCS
  attr_accessor :nSOCCR
  attr_accessor :nSIMSMS

  def initialize(iMPU = nil, nSCFU = nil, nSCFUVM = nil, nSCFB = nil, nSCFBVM = nil, nSCFNR = nil, nSCFNRVM = nil, nSCFNL = nil, nSCFNLVM = nil, nSCD = nil, nSCDVM = nil, nSCFNRC = nil, nSCFNRCVM = nil, nSCIDCW = nil, nSRIP = nil, nSRID = nil, nSNRID = nil, nSRND = nil, nSNRND = nil, nSOIP = nil, nSGOIR = nil, nSMOIR = nil, nSTIP = nil, nSTIR = nil, nSOTIR = nil, nSCLIP = nil, nSCLIPNOSCREENING = nil, nSRIO = nil, nSCNIP = nil, nSCLIR = nil, nSCNIR = nil, nSCW = nil, nSCCW = nil, nSACR = nil, nSCR = nil, nSWAKE_UP = nil, nSAOC_D = nil, nSAOC_E = nil, nSXEXH = nil, nSXEGJ = nil, nSCWCFNR = nil, nSIIFC = nil, nSDN_CALL_OUT_BAR = nil, nSCCBS = nil, nSCCNR = nil, nSCCBSR = nil, nSCCNRR = nil, nS3PTY = nil, nSNPTY = nil, nSDND = nil, nSMCR = nil, nSCBA = nil, nSTMP_LIN = nil, nSCODEC_CNTRL = nil, nSMWI = nil, nSDC = nil, nSHOLD = nil, nSECT = nil, nSCFTB = nil, nSDAN = nil, nSSTOP_SECRET = nil, nSMCID = nil, nSEBO = nil, nSICO = nil, nSOUTG = nil, nSINQYH = nil, nSUINFO = nil, nSDN_CALL_OUT_ALLOW = nil, nSSIC = nil, nSSOC = nil, nSSETCFNRTIME = nil, nSCFS = nil, nSCFSB = nil, nSFAX = nil, nSABRC = nil, nSACRTOVM = nil, nSPREPAID = nil, nSCRBT = nil, nSICB = nil, nSMRINGING = nil, nSCIS = nil, nSCBEG = nil, nSCOLP = nil, nSCOLR = nil, nSCOLPOVR = nil, nSBAOC = nil, nSBOIC = nil, nSBOICEXHC = nil, nSBAIC = nil, nSBICROM = nil, nSSPEED_DIAL = nil, nSSD1D = nil, nSSD2D = nil, nSGRNCALL = nil, nSCPARK = nil, nSGAA = nil, nSQSNS = nil, nSMSN = nil, nSHOTLINE = nil, nSAOC_S = nil, nSNIGHTSRV = nil, nSBACKNUM = nil, nSAUTOCON = nil, nSCAMPON = nil, nSCTD = nil, nSCLICKHOLD = nil, nSQUEUE = nil, nSSANSWER = nil, nSICENCF = nil, nSCFGO = nil, nSCECT = nil, nSCTGO = nil, nSCTIO = nil, nSSETBUSY = nil, nSOVERSTEP = nil, nSABSENT = nil, nSMONITOR = nil, nSFMONITOR = nil, nSDISCNT = nil, nSFDISCNT = nil, nSINSERT = nil, nSFINSERT = nil, nSASI = nil, nSPWCB = nil, nSRD = nil, nSLCPS = nil, nSNCPS = nil, nSICPS = nil, nSHCPS = nil, nSCBCLOCK = nil, nSMINIBAR = nil, nSMCN = nil, nSDSTR = nil, nSOPRREG = nil, nSONEKEY = nil, nSINBOUND = nil, nSOUTBOUND = nil, nSCALLERID = nil, nSCUN = nil, nSIPTVVC = nil, nSNP = nil, nSSEC = nil, nSSECSTA = nil, nSHRCN = nil, nSSB = nil, nSSCCA = nil, nSCCS = nil, nSOCCR = nil, nSIMSMS = nil)
    @iMPU = iMPU
    @nSCFU = nSCFU
    @nSCFUVM = nSCFUVM
    @nSCFB = nSCFB
    @nSCFBVM = nSCFBVM
    @nSCFNR = nSCFNR
    @nSCFNRVM = nSCFNRVM
    @nSCFNL = nSCFNL
    @nSCFNLVM = nSCFNLVM
    @nSCD = nSCD
    @nSCDVM = nSCDVM
    @nSCFNRC = nSCFNRC
    @nSCFNRCVM = nSCFNRCVM
    @nSCIDCW = nSCIDCW
    @nSRIP = nSRIP
    @nSRID = nSRID
    @nSNRID = nSNRID
    @nSRND = nSRND
    @nSNRND = nSNRND
    @nSOIP = nSOIP
    @nSGOIR = nSGOIR
    @nSMOIR = nSMOIR
    @nSTIP = nSTIP
    @nSTIR = nSTIR
    @nSOTIR = nSOTIR
    @nSCLIP = nSCLIP
    @nSCLIPNOSCREENING = nSCLIPNOSCREENING
    @nSRIO = nSRIO
    @nSCNIP = nSCNIP
    @nSCLIR = nSCLIR
    @nSCNIR = nSCNIR
    @nSCW = nSCW
    @nSCCW = nSCCW
    @nSACR = nSACR
    @nSCR = nSCR
    @nSWAKE_UP = nSWAKE_UP
    @nSAOC_D = nSAOC_D
    @nSAOC_E = nSAOC_E
    @nSXEXH = nSXEXH
    @nSXEGJ = nSXEGJ
    @nSCWCFNR = nSCWCFNR
    @nSIIFC = nSIIFC
    @nSDN_CALL_OUT_BAR = nSDN_CALL_OUT_BAR
    @nSCCBS = nSCCBS
    @nSCCNR = nSCCNR
    @nSCCBSR = nSCCBSR
    @nSCCNRR = nSCCNRR
    @nS3PTY = nS3PTY
    @nSNPTY = nSNPTY
    @nSDND = nSDND
    @nSMCR = nSMCR
    @nSCBA = nSCBA
    @nSTMP_LIN = nSTMP_LIN
    @nSCODEC_CNTRL = nSCODEC_CNTRL
    @nSMWI = nSMWI
    @nSDC = nSDC
    @nSHOLD = nSHOLD
    @nSECT = nSECT
    @nSCFTB = nSCFTB
    @nSDAN = nSDAN
    @nSSTOP_SECRET = nSSTOP_SECRET
    @nSMCID = nSMCID
    @nSEBO = nSEBO
    @nSICO = nSICO
    @nSOUTG = nSOUTG
    @nSINQYH = nSINQYH
    @nSUINFO = nSUINFO
    @nSDN_CALL_OUT_ALLOW = nSDN_CALL_OUT_ALLOW
    @nSSIC = nSSIC
    @nSSOC = nSSOC
    @nSSETCFNRTIME = nSSETCFNRTIME
    @nSCFS = nSCFS
    @nSCFSB = nSCFSB
    @nSFAX = nSFAX
    @nSABRC = nSABRC
    @nSACRTOVM = nSACRTOVM
    @nSPREPAID = nSPREPAID
    @nSCRBT = nSCRBT
    @nSICB = nSICB
    @nSMRINGING = nSMRINGING
    @nSCIS = nSCIS
    @nSCBEG = nSCBEG
    @nSCOLP = nSCOLP
    @nSCOLR = nSCOLR
    @nSCOLPOVR = nSCOLPOVR
    @nSBAOC = nSBAOC
    @nSBOIC = nSBOIC
    @nSBOICEXHC = nSBOICEXHC
    @nSBAIC = nSBAIC
    @nSBICROM = nSBICROM
    @nSSPEED_DIAL = nSSPEED_DIAL
    @nSSD1D = nSSD1D
    @nSSD2D = nSSD2D
    @nSGRNCALL = nSGRNCALL
    @nSCPARK = nSCPARK
    @nSGAA = nSGAA
    @nSQSNS = nSQSNS
    @nSMSN = nSMSN
    @nSHOTLINE = nSHOTLINE
    @nSAOC_S = nSAOC_S
    @nSNIGHTSRV = nSNIGHTSRV
    @nSBACKNUM = nSBACKNUM
    @nSAUTOCON = nSAUTOCON
    @nSCAMPON = nSCAMPON
    @nSCTD = nSCTD
    @nSCLICKHOLD = nSCLICKHOLD
    @nSQUEUE = nSQUEUE
    @nSSANSWER = nSSANSWER
    @nSICENCF = nSICENCF
    @nSCFGO = nSCFGO
    @nSCECT = nSCECT
    @nSCTGO = nSCTGO
    @nSCTIO = nSCTIO
    @nSSETBUSY = nSSETBUSY
    @nSOVERSTEP = nSOVERSTEP
    @nSABSENT = nSABSENT
    @nSMONITOR = nSMONITOR
    @nSFMONITOR = nSFMONITOR
    @nSDISCNT = nSDISCNT
    @nSFDISCNT = nSFDISCNT
    @nSINSERT = nSINSERT
    @nSFINSERT = nSFINSERT
    @nSASI = nSASI
    @nSPWCB = nSPWCB
    @nSRD = nSRD
    @nSLCPS = nSLCPS
    @nSNCPS = nSNCPS
    @nSICPS = nSICPS
    @nSHCPS = nSHCPS
    @nSCBCLOCK = nSCBCLOCK
    @nSMINIBAR = nSMINIBAR
    @nSMCN = nSMCN
    @nSDSTR = nSDSTR
    @nSOPRREG = nSOPRREG
    @nSONEKEY = nSONEKEY
    @nSINBOUND = nSINBOUND
    @nSOUTBOUND = nSOUTBOUND
    @nSCALLERID = nSCALLERID
    @nSCUN = nSCUN
    @nSIPTVVC = nSIPTVVC
    @nSNP = nSNP
    @nSSEC = nSSEC
    @nSSECSTA = nSSECSTA
    @nSHRCN = nSHRCN
    @nSSB = nSSB
    @nSSCCA = nSSCCA
    @nSCCS = nSCCS
    @nSOCCR = nSOCCR
    @nSIMSMS = nSIMSMS
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_TPType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_TPTables
class LST_TPType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_TPTables
#   table1 - LST_TPTable1
class LST_TPTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_TPTable1
class LST_TPTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_TPStruct1
#   tEMPLATEIDX - (any)
#   tEMPLATENAME - (any)
#   dSPIDX - (any)
#   lP - (any)
#   cSC - (any)
#   uTYPE - (any)
#   vCCFLAG - (any)
#   vTFLAG - (any)
#   nSCFU - (any)
#   nSCFUVM - (any)
#   nSCFB - (any)
#   nSCFBVM - (any)
#   nSCFNR - (any)
#   nSCFNRVM - (any)
#   nSCFNL - (any)
#   nSCFNLVM - (any)
#   nSCD - (any)
#   nSCDVM - (any)
#   nSCFNRC - (any)
#   nSCFNRCVM - (any)
#   nSCLIP - (any)
#   nSCIDCW - (any)
#   nSRIO - (any)
#   nSCNIP - (any)
#   nSCLIR - (any)
#   nSRIP - (any)
#   nSCNIR - (any)
#   nSRID - (any)
#   nSNRID - (any)
#   nSRND - (any)
#   nSNRND - (any)
#   nSCW - (any)
#   nSCCW - (any)
#   nSOIP - (any)
#   nSACRM - (any)
#   nSGOIR - (any)
#   nSMOIR - (any)
#   nSTIP - (any)
#   nSTIR - (any)
#   nSOTIR - (any)
#   nSCLIPNOSCREENING - (any)
#   nSCR - (any)
#   nSWAKE_UP - (any)
#   nSAOC_D - (any)
#   nSAOC_E - (any)
#   nSXEXH - (any)
#   nSXEGJ - (any)
#   nSCWCFNR - (any)
#   nSIIFC - (any)
#   nSDN_CALL_OUT_BAR - (any)
#   nSCCBS - (any)
#   nSCCNR - (any)
#   nSCCBSR - (any)
#   nSCCNRR - (any)
#   nS3PTY - (any)
#   nSNPTY - (any)
#   nSDND - (any)
#   nSMCR - (any)
#   nSCBA - (any)
#   nSTMP_LIN - (any)
#   nSCODEC_CNTRL - (any)
#   nSMWI - (any)
#   nSDC - (any)
#   nSHOLD - (any)
#   nSECT - (any)
#   nSCFTB - (any)
#   nSDAN - (any)
#   nSSTOP_SECRET - (any)
#   nSMCID - (any)
#   nSEBO - (any)
#   nSICO - (any)
#   nSOUTG - (any)
#   nSINQYH - (any)
#   nSUINFO - (any)
#   nSDN_CALL_OUT_ALLOW - (any)
#   nSSIC - (any)
#   nSSOC - (any)
#   nSSETCFNRTIME - (any)
#   nSCFS - (any)
#   nSCFSB - (any)
#   nSFAX - (any)
#   nSABRC - (any)
#   nSACRTOVM - (any)
#   nSPREPAID - (any)
#   nSCRBT - (any)
#   nSICB - (any)
#   nSMRINGING - (any)
#   nSCIS - (any)
#   nSCBEG - (any)
#   nSCOLP - (any)
#   nSCOLR - (any)
#   nSCOLPOVR - (any)
#   nSBAOC - (any)
#   nSBOIC - (any)
#   nSBOICEXHC - (any)
#   nSBAIC - (any)
#   nSBICROM - (any)
#   nSSPEED_DIAL - (any)
#   nSSD1D - (any)
#   nSSD2D - (any)
#   nSGRNCALL - (any)
#   nSCPARK - (any)
#   nSGAA - (any)
#   nSQSNS - (any)
#   nSMSN - (any)
#   nSHOTLINE - (any)
#   nSAOC_S - (any)
#   nSNIGHTSRV - (any)
#   nSBACKNUM - (any)
#   nSAUTOCON - (any)
#   nSCAMPON - (any)
#   nSCTD - (any)
#   nSCLICKHOLD - (any)
#   nSQUEUE - (any)
#   nSSANSWER - (any)
#   nSICENCF - (any)
#   nSCFGO - (any)
#   nSCECT - (any)
#   nSCTGO - (any)
#   nSCTIO - (any)
#   nSSETBUSY - (any)
#   nSOVERSTEP - (any)
#   nSABSENT - (any)
#   nSMONITOR - (any)
#   nSFMONITOR - (any)
#   nSDISCNT - (any)
#   nSFDISCNT - (any)
#   nSINSERT - (any)
#   nSFINSERT - (any)
#   nSASI - (any)
#   nSPWCB - (any)
#   nSRD - (any)
#   nSLCPS - (any)
#   nSNCPS - (any)
#   nSICPS - (any)
#   nSHCPS - (any)
#   nSCBCLOCK - (any)
#   nSMINIBAR - (any)
#   nSMCN - (any)
#   nSDSTR - (any)
#   nSOPRREG - (any)
#   nSONEKEY - (any)
#   nSINBOUND - (any)
#   nSOUTBOUND - (any)
#   nSCALLERID - (any)
#   nSCUN - (any)
#   nSIPTVVC - (any)
#   nSNP - (any)
#   nSSEC - (any)
#   nSSECSTA - (any)
#   nSHRCN - (any)
#   nSSB - (any)
#   nSSCCA - (any)
#   nSCCS - (any)
#   nSOCCR - (any)
#   nSIMSMS - (any)
#   lCO - (any)
#   lC - (any)
#   lCT - (any)
#   nTT - (any)
#   iTT - (any)
#   iCTX - (any)
#   oCTX - (any)
#   iNTT - (any)
#   iITT - (any)
#   iCLT - (any)
#   iCDDD - (any)
#   iCIDD - (any)
#   iOLT - (any)
#   cTLCO - (any)
#   cTLCT - (any)
#   cTLD - (any)
#   cTINTNANP - (any)
#   cTINTWORLD - (any)
#   cTDA - (any)
#   cTOSM - (any)
#   cTOSP - (any)
#   cTOSP1 - (any)
#   cCO1 - (any)
#   cCO2 - (any)
#   cCO3 - (any)
#   cCO4 - (any)
#   cCO5 - (any)
#   cCO6 - (any)
#   cCO7 - (any)
#   cCO8 - (any)
#   cCO9 - (any)
#   cCO10 - (any)
#   cCO11 - (any)
#   cCO12 - (any)
#   cCO13 - (any)
#   cCO14 - (any)
#   cCO15 - (any)
#   cCO16 - (any)
#   cCO17 - (any)
#   cCO18 - (any)
#   cCO19 - (any)
#   cCO20 - (any)
#   cCO21 - (any)
#   cCO22 - (any)
#   cCO23 - (any)
#   cCO24 - (any)
#   cCO25 - (any)
#   cCO26 - (any)
#   cCO27 - (any)
#   cCO28 - (any)
#   cCO29 - (any)
#   cCO30 - (any)
#   cCO31 - (any)
#   cCO32 - (any)
#   hIGHENTCO - (any)
#   oPERATOR - (any)
#   sUPYSRV - (any)
#   iDDCI - (any)
#   nTCI - (any)
#   lTCI - (any)
#   rSC - (any)
#   cIG - (any)
#   oUTRST - (any)
#   iNRST - (any)
#   nOAT - (any)
#   rINGCOUNT - (any)
#   vMAIND - (any)
#   vDMAIND - (any)
#   tGRP - (any)
#   tIDHLD - (any)
#   tIDCW - (any)
#   sCF - (any)
#   lMTGRP - (any)
#   fLBGRP - (any)
#   sLBGRP - (any)
#   cOP - (any)
#   g711_64K_A_LAW - (any)
#   g711_64K_U_LAW - (any)
#   g722 - (any)
#   g723 - (any)
#   g726 - (any)
#   g728 - (any)
#   g729 - (any)
#   cODEC_MP4A - (any)
#   cODEC2833 - (any)
#   cODEC2198 - (any)
#   g726_40 - (any)
#   g726_32 - (any)
#   g726_24 - (any)
#   g726_16 - (any)
#   aMR - (any)
#   cLEARMODE - (any)
#   iLBC - (any)
#   sPEEX - (any)
#   g729EV - (any)
#   eVRC - (any)
#   eVRCB - (any)
#   h261 - (any)
#   h263 - (any)
#   cODEC_MP4V - (any)
#   h264 - (any)
#   t38 - (any)
#   t120 - (any)
#   g711A_VBD - (any)
#   g711U_VBD - (any)
#   g726_VBD - (any)
#   g726_40_VBD - (any)
#   g726_32_VBD - (any)
#   g726_24_VBD - (any)
#   g726_16_VBD - (any)
#   wIND_BAND_AMR - (any)
#   gSM610 - (any)
#   h263_2000 - (any)
#   bROADVOICE_32 - (any)
#   uNKNOWN_CODEC - (any)
#   aCODEC - (any)
#   vCODEC - (any)
#   pOLIDX - (any)
#   nCPI - (any)
#   iCPI - (any)
#   hCPI - (any)
#   eBOCL - (any)
#   eBOPL - (any)
#   eBOIT - (any)
#   rM - (any)
#   cPC - (any)
#   pCHG - (any)
#   tFPT - (any)
#   cHT - (any)
#   mCIDMODE - (any)
#   mCIDCMODE - (any)
#   mCIDAMODE - (any)
#   pREPAIDIDX - (any)
#   cRBTID - (any)
#   oDBBICTYPE - (any)
#   oDBBOCTYPE - (any)
#   oDBBARTYPE - (any)
#   oDBSS - (any)
#   oDBBRCFTYPE - (any)
#   oDBINFORM - (any)
#   oDBENTAIN - (any)
#   oDBPLMNBAR1 - (any)
#   oDBPLMNBAR2 - (any)
#   oDBPLMNBAR3 - (any)
#   oDBPLMNBAR4 - (any)
#   pNOTI - (any)
#   mAXPARACALL - (any)
#   aTSDTMBUSY - (any)
#   cALLCOUNT - (any)
#   cDNOTICALLER - (any)
#   iSCHGFLAG - (any)
#   cHC - (any)
#   cUSER - (any)
#   cGRP - (any)
#   cUSERGRP - (any)
#   sTCF - (any)
#   cHARSC - (any)
#   rEGUIDX - (any)
#   sOCBFUNC - (any)
#   sOCBPTONEIDX - (any)
#   aDMINCBA - (any)
#   aDCONTROL_DIVERSION - (any)
#   dPR - (any)
#   pRON - (any)
#   cPCRUS - (any)
#   cUSCAT - (any)
#   sPT100REL - (any)
#   aNALYSISMODE - (any)
#   gRPIDX - (any)
#   sCADDRIDX - (any)
#   cDNOCB - (any)
#   kVALUE - (any)
#   iNPFIDX - (any)
class LST_TPStruct1
  attr_accessor :tEMPLATEIDX
  attr_accessor :tEMPLATENAME
  attr_accessor :dSPIDX
  attr_accessor :lP
  attr_accessor :cSC
  attr_accessor :uTYPE
  attr_accessor :vCCFLAG
  attr_accessor :vTFLAG
  attr_accessor :nSCFU
  attr_accessor :nSCFUVM
  attr_accessor :nSCFB
  attr_accessor :nSCFBVM
  attr_accessor :nSCFNR
  attr_accessor :nSCFNRVM
  attr_accessor :nSCFNL
  attr_accessor :nSCFNLVM
  attr_accessor :nSCD
  attr_accessor :nSCDVM
  attr_accessor :nSCFNRC
  attr_accessor :nSCFNRCVM
  attr_accessor :nSCLIP
  attr_accessor :nSCIDCW
  attr_accessor :nSRIO
  attr_accessor :nSCNIP
  attr_accessor :nSCLIR
  attr_accessor :nSRIP
  attr_accessor :nSCNIR
  attr_accessor :nSRID
  attr_accessor :nSNRID
  attr_accessor :nSRND
  attr_accessor :nSNRND
  attr_accessor :nSCW
  attr_accessor :nSCCW
  attr_accessor :nSOIP
  attr_accessor :nSACRM
  attr_accessor :nSGOIR
  attr_accessor :nSMOIR
  attr_accessor :nSTIP
  attr_accessor :nSTIR
  attr_accessor :nSOTIR
  attr_accessor :nSCLIPNOSCREENING
  attr_accessor :nSCR
  attr_accessor :nSWAKE_UP
  attr_accessor :nSAOC_D
  attr_accessor :nSAOC_E
  attr_accessor :nSXEXH
  attr_accessor :nSXEGJ
  attr_accessor :nSCWCFNR
  attr_accessor :nSIIFC
  attr_accessor :nSDN_CALL_OUT_BAR
  attr_accessor :nSCCBS
  attr_accessor :nSCCNR
  attr_accessor :nSCCBSR
  attr_accessor :nSCCNRR
  attr_accessor :nS3PTY
  attr_accessor :nSNPTY
  attr_accessor :nSDND
  attr_accessor :nSMCR
  attr_accessor :nSCBA
  attr_accessor :nSTMP_LIN
  attr_accessor :nSCODEC_CNTRL
  attr_accessor :nSMWI
  attr_accessor :nSDC
  attr_accessor :nSHOLD
  attr_accessor :nSECT
  attr_accessor :nSCFTB
  attr_accessor :nSDAN
  attr_accessor :nSSTOP_SECRET
  attr_accessor :nSMCID
  attr_accessor :nSEBO
  attr_accessor :nSICO
  attr_accessor :nSOUTG
  attr_accessor :nSINQYH
  attr_accessor :nSUINFO
  attr_accessor :nSDN_CALL_OUT_ALLOW
  attr_accessor :nSSIC
  attr_accessor :nSSOC
  attr_accessor :nSSETCFNRTIME
  attr_accessor :nSCFS
  attr_accessor :nSCFSB
  attr_accessor :nSFAX
  attr_accessor :nSABRC
  attr_accessor :nSACRTOVM
  attr_accessor :nSPREPAID
  attr_accessor :nSCRBT
  attr_accessor :nSICB
  attr_accessor :nSMRINGING
  attr_accessor :nSCIS
  attr_accessor :nSCBEG
  attr_accessor :nSCOLP
  attr_accessor :nSCOLR
  attr_accessor :nSCOLPOVR
  attr_accessor :nSBAOC
  attr_accessor :nSBOIC
  attr_accessor :nSBOICEXHC
  attr_accessor :nSBAIC
  attr_accessor :nSBICROM
  attr_accessor :nSSPEED_DIAL
  attr_accessor :nSSD1D
  attr_accessor :nSSD2D
  attr_accessor :nSGRNCALL
  attr_accessor :nSCPARK
  attr_accessor :nSGAA
  attr_accessor :nSQSNS
  attr_accessor :nSMSN
  attr_accessor :nSHOTLINE
  attr_accessor :nSAOC_S
  attr_accessor :nSNIGHTSRV
  attr_accessor :nSBACKNUM
  attr_accessor :nSAUTOCON
  attr_accessor :nSCAMPON
  attr_accessor :nSCTD
  attr_accessor :nSCLICKHOLD
  attr_accessor :nSQUEUE
  attr_accessor :nSSANSWER
  attr_accessor :nSICENCF
  attr_accessor :nSCFGO
  attr_accessor :nSCECT
  attr_accessor :nSCTGO
  attr_accessor :nSCTIO
  attr_accessor :nSSETBUSY
  attr_accessor :nSOVERSTEP
  attr_accessor :nSABSENT
  attr_accessor :nSMONITOR
  attr_accessor :nSFMONITOR
  attr_accessor :nSDISCNT
  attr_accessor :nSFDISCNT
  attr_accessor :nSINSERT
  attr_accessor :nSFINSERT
  attr_accessor :nSASI
  attr_accessor :nSPWCB
  attr_accessor :nSRD
  attr_accessor :nSLCPS
  attr_accessor :nSNCPS
  attr_accessor :nSICPS
  attr_accessor :nSHCPS
  attr_accessor :nSCBCLOCK
  attr_accessor :nSMINIBAR
  attr_accessor :nSMCN
  attr_accessor :nSDSTR
  attr_accessor :nSOPRREG
  attr_accessor :nSONEKEY
  attr_accessor :nSINBOUND
  attr_accessor :nSOUTBOUND
  attr_accessor :nSCALLERID
  attr_accessor :nSCUN
  attr_accessor :nSIPTVVC
  attr_accessor :nSNP
  attr_accessor :nSSEC
  attr_accessor :nSSECSTA
  attr_accessor :nSHRCN
  attr_accessor :nSSB
  attr_accessor :nSSCCA
  attr_accessor :nSCCS
  attr_accessor :nSOCCR
  attr_accessor :nSIMSMS
  attr_accessor :lCO
  attr_accessor :lC
  attr_accessor :lCT
  attr_accessor :nTT
  attr_accessor :iTT
  attr_accessor :iCTX
  attr_accessor :oCTX
  attr_accessor :iNTT
  attr_accessor :iITT
  attr_accessor :iCLT
  attr_accessor :iCDDD
  attr_accessor :iCIDD
  attr_accessor :iOLT
  attr_accessor :cTLCO
  attr_accessor :cTLCT
  attr_accessor :cTLD
  attr_accessor :cTINTNANP
  attr_accessor :cTINTWORLD
  attr_accessor :cTDA
  attr_accessor :cTOSM
  attr_accessor :cTOSP
  attr_accessor :cTOSP1
  attr_accessor :cCO1
  attr_accessor :cCO2
  attr_accessor :cCO3
  attr_accessor :cCO4
  attr_accessor :cCO5
  attr_accessor :cCO6
  attr_accessor :cCO7
  attr_accessor :cCO8
  attr_accessor :cCO9
  attr_accessor :cCO10
  attr_accessor :cCO11
  attr_accessor :cCO12
  attr_accessor :cCO13
  attr_accessor :cCO14
  attr_accessor :cCO15
  attr_accessor :cCO16
  attr_accessor :cCO17
  attr_accessor :cCO18
  attr_accessor :cCO19
  attr_accessor :cCO20
  attr_accessor :cCO21
  attr_accessor :cCO22
  attr_accessor :cCO23
  attr_accessor :cCO24
  attr_accessor :cCO25
  attr_accessor :cCO26
  attr_accessor :cCO27
  attr_accessor :cCO28
  attr_accessor :cCO29
  attr_accessor :cCO30
  attr_accessor :cCO31
  attr_accessor :cCO32
  attr_accessor :hIGHENTCO
  attr_accessor :oPERATOR
  attr_accessor :sUPYSRV
  attr_accessor :iDDCI
  attr_accessor :nTCI
  attr_accessor :lTCI
  attr_accessor :rSC
  attr_accessor :cIG
  attr_accessor :oUTRST
  attr_accessor :iNRST
  attr_accessor :nOAT
  attr_accessor :rINGCOUNT
  attr_accessor :vMAIND
  attr_accessor :vDMAIND
  attr_accessor :tGRP
  attr_accessor :tIDHLD
  attr_accessor :tIDCW
  attr_accessor :sCF
  attr_accessor :lMTGRP
  attr_accessor :fLBGRP
  attr_accessor :sLBGRP
  attr_accessor :cOP
  attr_accessor :g711_64K_A_LAW
  attr_accessor :g711_64K_U_LAW
  attr_accessor :g722
  attr_accessor :g723
  attr_accessor :g726
  attr_accessor :g728
  attr_accessor :g729
  attr_accessor :cODEC_MP4A
  attr_accessor :cODEC2833
  attr_accessor :cODEC2198
  attr_accessor :g726_40
  attr_accessor :g726_32
  attr_accessor :g726_24
  attr_accessor :g726_16
  attr_accessor :aMR
  attr_accessor :cLEARMODE
  attr_accessor :iLBC
  attr_accessor :sPEEX
  attr_accessor :g729EV
  attr_accessor :eVRC
  attr_accessor :eVRCB
  attr_accessor :h261
  attr_accessor :h263
  attr_accessor :cODEC_MP4V
  attr_accessor :h264
  attr_accessor :t38
  attr_accessor :t120
  attr_accessor :g711A_VBD
  attr_accessor :g711U_VBD
  attr_accessor :g726_VBD
  attr_accessor :g726_40_VBD
  attr_accessor :g726_32_VBD
  attr_accessor :g726_24_VBD
  attr_accessor :g726_16_VBD
  attr_accessor :wIND_BAND_AMR
  attr_accessor :gSM610
  attr_accessor :h263_2000
  attr_accessor :bROADVOICE_32
  attr_accessor :uNKNOWN_CODEC
  attr_accessor :aCODEC
  attr_accessor :vCODEC
  attr_accessor :pOLIDX
  attr_accessor :nCPI
  attr_accessor :iCPI
  attr_accessor :hCPI
  attr_accessor :eBOCL
  attr_accessor :eBOPL
  attr_accessor :eBOIT
  attr_accessor :rM
  attr_accessor :cPC
  attr_accessor :pCHG
  attr_accessor :tFPT
  attr_accessor :cHT
  attr_accessor :mCIDMODE
  attr_accessor :mCIDCMODE
  attr_accessor :mCIDAMODE
  attr_accessor :pREPAIDIDX
  attr_accessor :cRBTID
  attr_accessor :oDBBICTYPE
  attr_accessor :oDBBOCTYPE
  attr_accessor :oDBBARTYPE
  attr_accessor :oDBSS
  attr_accessor :oDBBRCFTYPE
  attr_accessor :oDBINFORM
  attr_accessor :oDBENTAIN
  attr_accessor :oDBPLMNBAR1
  attr_accessor :oDBPLMNBAR2
  attr_accessor :oDBPLMNBAR3
  attr_accessor :oDBPLMNBAR4
  attr_accessor :pNOTI
  attr_accessor :mAXPARACALL
  attr_accessor :aTSDTMBUSY
  attr_accessor :cALLCOUNT
  attr_accessor :cDNOTICALLER
  attr_accessor :iSCHGFLAG
  attr_accessor :cHC
  attr_accessor :cUSER
  attr_accessor :cGRP
  attr_accessor :cUSERGRP
  attr_accessor :sTCF
  attr_accessor :cHARSC
  attr_accessor :rEGUIDX
  attr_accessor :sOCBFUNC
  attr_accessor :sOCBPTONEIDX
  attr_accessor :aDMINCBA
  attr_accessor :aDCONTROL_DIVERSION
  attr_accessor :dPR
  attr_accessor :pRON
  attr_accessor :cPCRUS
  attr_accessor :cUSCAT
  attr_accessor :sPT100REL
  attr_accessor :aNALYSISMODE
  attr_accessor :gRPIDX
  attr_accessor :sCADDRIDX
  attr_accessor :cDNOCB
  attr_accessor :kVALUE
  attr_accessor :iNPFIDX

  def initialize(tEMPLATEIDX = nil, tEMPLATENAME = nil, dSPIDX = nil, lP = nil, cSC = nil, uTYPE = nil, vCCFLAG = nil, vTFLAG = nil, nSCFU = nil, nSCFUVM = nil, nSCFB = nil, nSCFBVM = nil, nSCFNR = nil, nSCFNRVM = nil, nSCFNL = nil, nSCFNLVM = nil, nSCD = nil, nSCDVM = nil, nSCFNRC = nil, nSCFNRCVM = nil, nSCLIP = nil, nSCIDCW = nil, nSRIO = nil, nSCNIP = nil, nSCLIR = nil, nSRIP = nil, nSCNIR = nil, nSRID = nil, nSNRID = nil, nSRND = nil, nSNRND = nil, nSCW = nil, nSCCW = nil, nSOIP = nil, nSACRM = nil, nSGOIR = nil, nSMOIR = nil, nSTIP = nil, nSTIR = nil, nSOTIR = nil, nSCLIPNOSCREENING = nil, nSCR = nil, nSWAKE_UP = nil, nSAOC_D = nil, nSAOC_E = nil, nSXEXH = nil, nSXEGJ = nil, nSCWCFNR = nil, nSIIFC = nil, nSDN_CALL_OUT_BAR = nil, nSCCBS = nil, nSCCNR = nil, nSCCBSR = nil, nSCCNRR = nil, nS3PTY = nil, nSNPTY = nil, nSDND = nil, nSMCR = nil, nSCBA = nil, nSTMP_LIN = nil, nSCODEC_CNTRL = nil, nSMWI = nil, nSDC = nil, nSHOLD = nil, nSECT = nil, nSCFTB = nil, nSDAN = nil, nSSTOP_SECRET = nil, nSMCID = nil, nSEBO = nil, nSICO = nil, nSOUTG = nil, nSINQYH = nil, nSUINFO = nil, nSDN_CALL_OUT_ALLOW = nil, nSSIC = nil, nSSOC = nil, nSSETCFNRTIME = nil, nSCFS = nil, nSCFSB = nil, nSFAX = nil, nSABRC = nil, nSACRTOVM = nil, nSPREPAID = nil, nSCRBT = nil, nSICB = nil, nSMRINGING = nil, nSCIS = nil, nSCBEG = nil, nSCOLP = nil, nSCOLR = nil, nSCOLPOVR = nil, nSBAOC = nil, nSBOIC = nil, nSBOICEXHC = nil, nSBAIC = nil, nSBICROM = nil, nSSPEED_DIAL = nil, nSSD1D = nil, nSSD2D = nil, nSGRNCALL = nil, nSCPARK = nil, nSGAA = nil, nSQSNS = nil, nSMSN = nil, nSHOTLINE = nil, nSAOC_S = nil, nSNIGHTSRV = nil, nSBACKNUM = nil, nSAUTOCON = nil, nSCAMPON = nil, nSCTD = nil, nSCLICKHOLD = nil, nSQUEUE = nil, nSSANSWER = nil, nSICENCF = nil, nSCFGO = nil, nSCECT = nil, nSCTGO = nil, nSCTIO = nil, nSSETBUSY = nil, nSOVERSTEP = nil, nSABSENT = nil, nSMONITOR = nil, nSFMONITOR = nil, nSDISCNT = nil, nSFDISCNT = nil, nSINSERT = nil, nSFINSERT = nil, nSASI = nil, nSPWCB = nil, nSRD = nil, nSLCPS = nil, nSNCPS = nil, nSICPS = nil, nSHCPS = nil, nSCBCLOCK = nil, nSMINIBAR = nil, nSMCN = nil, nSDSTR = nil, nSOPRREG = nil, nSONEKEY = nil, nSINBOUND = nil, nSOUTBOUND = nil, nSCALLERID = nil, nSCUN = nil, nSIPTVVC = nil, nSNP = nil, nSSEC = nil, nSSECSTA = nil, nSHRCN = nil, nSSB = nil, nSSCCA = nil, nSCCS = nil, nSOCCR = nil, nSIMSMS = nil, lCO = nil, lC = nil, lCT = nil, nTT = nil, iTT = nil, iCTX = nil, oCTX = nil, iNTT = nil, iITT = nil, iCLT = nil, iCDDD = nil, iCIDD = nil, iOLT = nil, cTLCO = nil, cTLCT = nil, cTLD = nil, cTINTNANP = nil, cTINTWORLD = nil, cTDA = nil, cTOSM = nil, cTOSP = nil, cTOSP1 = nil, cCO1 = nil, cCO2 = nil, cCO3 = nil, cCO4 = nil, cCO5 = nil, cCO6 = nil, cCO7 = nil, cCO8 = nil, cCO9 = nil, cCO10 = nil, cCO11 = nil, cCO12 = nil, cCO13 = nil, cCO14 = nil, cCO15 = nil, cCO16 = nil, cCO17 = nil, cCO18 = nil, cCO19 = nil, cCO20 = nil, cCO21 = nil, cCO22 = nil, cCO23 = nil, cCO24 = nil, cCO25 = nil, cCO26 = nil, cCO27 = nil, cCO28 = nil, cCO29 = nil, cCO30 = nil, cCO31 = nil, cCO32 = nil, hIGHENTCO = nil, oPERATOR = nil, sUPYSRV = nil, iDDCI = nil, nTCI = nil, lTCI = nil, rSC = nil, cIG = nil, oUTRST = nil, iNRST = nil, nOAT = nil, rINGCOUNT = nil, vMAIND = nil, vDMAIND = nil, tGRP = nil, tIDHLD = nil, tIDCW = nil, sCF = nil, lMTGRP = nil, fLBGRP = nil, sLBGRP = nil, cOP = nil, g711_64K_A_LAW = nil, g711_64K_U_LAW = nil, g722 = nil, g723 = nil, g726 = nil, g728 = nil, g729 = nil, cODEC_MP4A = nil, cODEC2833 = nil, cODEC2198 = nil, g726_40 = nil, g726_32 = nil, g726_24 = nil, g726_16 = nil, aMR = nil, cLEARMODE = nil, iLBC = nil, sPEEX = nil, g729EV = nil, eVRC = nil, eVRCB = nil, h261 = nil, h263 = nil, cODEC_MP4V = nil, h264 = nil, t38 = nil, t120 = nil, g711A_VBD = nil, g711U_VBD = nil, g726_VBD = nil, g726_40_VBD = nil, g726_32_VBD = nil, g726_24_VBD = nil, g726_16_VBD = nil, wIND_BAND_AMR = nil, gSM610 = nil, h263_2000 = nil, bROADVOICE_32 = nil, uNKNOWN_CODEC = nil, aCODEC = nil, vCODEC = nil, pOLIDX = nil, nCPI = nil, iCPI = nil, hCPI = nil, eBOCL = nil, eBOPL = nil, eBOIT = nil, rM = nil, cPC = nil, pCHG = nil, tFPT = nil, cHT = nil, mCIDMODE = nil, mCIDCMODE = nil, mCIDAMODE = nil, pREPAIDIDX = nil, cRBTID = nil, oDBBICTYPE = nil, oDBBOCTYPE = nil, oDBBARTYPE = nil, oDBSS = nil, oDBBRCFTYPE = nil, oDBINFORM = nil, oDBENTAIN = nil, oDBPLMNBAR1 = nil, oDBPLMNBAR2 = nil, oDBPLMNBAR3 = nil, oDBPLMNBAR4 = nil, pNOTI = nil, mAXPARACALL = nil, aTSDTMBUSY = nil, cALLCOUNT = nil, cDNOTICALLER = nil, iSCHGFLAG = nil, cHC = nil, cUSER = nil, cGRP = nil, cUSERGRP = nil, sTCF = nil, cHARSC = nil, rEGUIDX = nil, sOCBFUNC = nil, sOCBPTONEIDX = nil, aDMINCBA = nil, aDCONTROL_DIVERSION = nil, dPR = nil, pRON = nil, cPCRUS = nil, cUSCAT = nil, sPT100REL = nil, aNALYSISMODE = nil, gRPIDX = nil, sCADDRIDX = nil, cDNOCB = nil, kVALUE = nil, iNPFIDX = nil)
    @tEMPLATEIDX = tEMPLATEIDX
    @tEMPLATENAME = tEMPLATENAME
    @dSPIDX = dSPIDX
    @lP = lP
    @cSC = cSC
    @uTYPE = uTYPE
    @vCCFLAG = vCCFLAG
    @vTFLAG = vTFLAG
    @nSCFU = nSCFU
    @nSCFUVM = nSCFUVM
    @nSCFB = nSCFB
    @nSCFBVM = nSCFBVM
    @nSCFNR = nSCFNR
    @nSCFNRVM = nSCFNRVM
    @nSCFNL = nSCFNL
    @nSCFNLVM = nSCFNLVM
    @nSCD = nSCD
    @nSCDVM = nSCDVM
    @nSCFNRC = nSCFNRC
    @nSCFNRCVM = nSCFNRCVM
    @nSCLIP = nSCLIP
    @nSCIDCW = nSCIDCW
    @nSRIO = nSRIO
    @nSCNIP = nSCNIP
    @nSCLIR = nSCLIR
    @nSRIP = nSRIP
    @nSCNIR = nSCNIR
    @nSRID = nSRID
    @nSNRID = nSNRID
    @nSRND = nSRND
    @nSNRND = nSNRND
    @nSCW = nSCW
    @nSCCW = nSCCW
    @nSOIP = nSOIP
    @nSACRM = nSACRM
    @nSGOIR = nSGOIR
    @nSMOIR = nSMOIR
    @nSTIP = nSTIP
    @nSTIR = nSTIR
    @nSOTIR = nSOTIR
    @nSCLIPNOSCREENING = nSCLIPNOSCREENING
    @nSCR = nSCR
    @nSWAKE_UP = nSWAKE_UP
    @nSAOC_D = nSAOC_D
    @nSAOC_E = nSAOC_E
    @nSXEXH = nSXEXH
    @nSXEGJ = nSXEGJ
    @nSCWCFNR = nSCWCFNR
    @nSIIFC = nSIIFC
    @nSDN_CALL_OUT_BAR = nSDN_CALL_OUT_BAR
    @nSCCBS = nSCCBS
    @nSCCNR = nSCCNR
    @nSCCBSR = nSCCBSR
    @nSCCNRR = nSCCNRR
    @nS3PTY = nS3PTY
    @nSNPTY = nSNPTY
    @nSDND = nSDND
    @nSMCR = nSMCR
    @nSCBA = nSCBA
    @nSTMP_LIN = nSTMP_LIN
    @nSCODEC_CNTRL = nSCODEC_CNTRL
    @nSMWI = nSMWI
    @nSDC = nSDC
    @nSHOLD = nSHOLD
    @nSECT = nSECT
    @nSCFTB = nSCFTB
    @nSDAN = nSDAN
    @nSSTOP_SECRET = nSSTOP_SECRET
    @nSMCID = nSMCID
    @nSEBO = nSEBO
    @nSICO = nSICO
    @nSOUTG = nSOUTG
    @nSINQYH = nSINQYH
    @nSUINFO = nSUINFO
    @nSDN_CALL_OUT_ALLOW = nSDN_CALL_OUT_ALLOW
    @nSSIC = nSSIC
    @nSSOC = nSSOC
    @nSSETCFNRTIME = nSSETCFNRTIME
    @nSCFS = nSCFS
    @nSCFSB = nSCFSB
    @nSFAX = nSFAX
    @nSABRC = nSABRC
    @nSACRTOVM = nSACRTOVM
    @nSPREPAID = nSPREPAID
    @nSCRBT = nSCRBT
    @nSICB = nSICB
    @nSMRINGING = nSMRINGING
    @nSCIS = nSCIS
    @nSCBEG = nSCBEG
    @nSCOLP = nSCOLP
    @nSCOLR = nSCOLR
    @nSCOLPOVR = nSCOLPOVR
    @nSBAOC = nSBAOC
    @nSBOIC = nSBOIC
    @nSBOICEXHC = nSBOICEXHC
    @nSBAIC = nSBAIC
    @nSBICROM = nSBICROM
    @nSSPEED_DIAL = nSSPEED_DIAL
    @nSSD1D = nSSD1D
    @nSSD2D = nSSD2D
    @nSGRNCALL = nSGRNCALL
    @nSCPARK = nSCPARK
    @nSGAA = nSGAA
    @nSQSNS = nSQSNS
    @nSMSN = nSMSN
    @nSHOTLINE = nSHOTLINE
    @nSAOC_S = nSAOC_S
    @nSNIGHTSRV = nSNIGHTSRV
    @nSBACKNUM = nSBACKNUM
    @nSAUTOCON = nSAUTOCON
    @nSCAMPON = nSCAMPON
    @nSCTD = nSCTD
    @nSCLICKHOLD = nSCLICKHOLD
    @nSQUEUE = nSQUEUE
    @nSSANSWER = nSSANSWER
    @nSICENCF = nSICENCF
    @nSCFGO = nSCFGO
    @nSCECT = nSCECT
    @nSCTGO = nSCTGO
    @nSCTIO = nSCTIO
    @nSSETBUSY = nSSETBUSY
    @nSOVERSTEP = nSOVERSTEP
    @nSABSENT = nSABSENT
    @nSMONITOR = nSMONITOR
    @nSFMONITOR = nSFMONITOR
    @nSDISCNT = nSDISCNT
    @nSFDISCNT = nSFDISCNT
    @nSINSERT = nSINSERT
    @nSFINSERT = nSFINSERT
    @nSASI = nSASI
    @nSPWCB = nSPWCB
    @nSRD = nSRD
    @nSLCPS = nSLCPS
    @nSNCPS = nSNCPS
    @nSICPS = nSICPS
    @nSHCPS = nSHCPS
    @nSCBCLOCK = nSCBCLOCK
    @nSMINIBAR = nSMINIBAR
    @nSMCN = nSMCN
    @nSDSTR = nSDSTR
    @nSOPRREG = nSOPRREG
    @nSONEKEY = nSONEKEY
    @nSINBOUND = nSINBOUND
    @nSOUTBOUND = nSOUTBOUND
    @nSCALLERID = nSCALLERID
    @nSCUN = nSCUN
    @nSIPTVVC = nSIPTVVC
    @nSNP = nSNP
    @nSSEC = nSSEC
    @nSSECSTA = nSSECSTA
    @nSHRCN = nSHRCN
    @nSSB = nSSB
    @nSSCCA = nSSCCA
    @nSCCS = nSCCS
    @nSOCCR = nSOCCR
    @nSIMSMS = nSIMSMS
    @lCO = lCO
    @lC = lC
    @lCT = lCT
    @nTT = nTT
    @iTT = iTT
    @iCTX = iCTX
    @oCTX = oCTX
    @iNTT = iNTT
    @iITT = iITT
    @iCLT = iCLT
    @iCDDD = iCDDD
    @iCIDD = iCIDD
    @iOLT = iOLT
    @cTLCO = cTLCO
    @cTLCT = cTLCT
    @cTLD = cTLD
    @cTINTNANP = cTINTNANP
    @cTINTWORLD = cTINTWORLD
    @cTDA = cTDA
    @cTOSM = cTOSM
    @cTOSP = cTOSP
    @cTOSP1 = cTOSP1
    @cCO1 = cCO1
    @cCO2 = cCO2
    @cCO3 = cCO3
    @cCO4 = cCO4
    @cCO5 = cCO5
    @cCO6 = cCO6
    @cCO7 = cCO7
    @cCO8 = cCO8
    @cCO9 = cCO9
    @cCO10 = cCO10
    @cCO11 = cCO11
    @cCO12 = cCO12
    @cCO13 = cCO13
    @cCO14 = cCO14
    @cCO15 = cCO15
    @cCO16 = cCO16
    @cCO17 = cCO17
    @cCO18 = cCO18
    @cCO19 = cCO19
    @cCO20 = cCO20
    @cCO21 = cCO21
    @cCO22 = cCO22
    @cCO23 = cCO23
    @cCO24 = cCO24
    @cCO25 = cCO25
    @cCO26 = cCO26
    @cCO27 = cCO27
    @cCO28 = cCO28
    @cCO29 = cCO29
    @cCO30 = cCO30
    @cCO31 = cCO31
    @cCO32 = cCO32
    @hIGHENTCO = hIGHENTCO
    @oPERATOR = oPERATOR
    @sUPYSRV = sUPYSRV
    @iDDCI = iDDCI
    @nTCI = nTCI
    @lTCI = lTCI
    @rSC = rSC
    @cIG = cIG
    @oUTRST = oUTRST
    @iNRST = iNRST
    @nOAT = nOAT
    @rINGCOUNT = rINGCOUNT
    @vMAIND = vMAIND
    @vDMAIND = vDMAIND
    @tGRP = tGRP
    @tIDHLD = tIDHLD
    @tIDCW = tIDCW
    @sCF = sCF
    @lMTGRP = lMTGRP
    @fLBGRP = fLBGRP
    @sLBGRP = sLBGRP
    @cOP = cOP
    @g711_64K_A_LAW = g711_64K_A_LAW
    @g711_64K_U_LAW = g711_64K_U_LAW
    @g722 = g722
    @g723 = g723
    @g726 = g726
    @g728 = g728
    @g729 = g729
    @cODEC_MP4A = cODEC_MP4A
    @cODEC2833 = cODEC2833
    @cODEC2198 = cODEC2198
    @g726_40 = g726_40
    @g726_32 = g726_32
    @g726_24 = g726_24
    @g726_16 = g726_16
    @aMR = aMR
    @cLEARMODE = cLEARMODE
    @iLBC = iLBC
    @sPEEX = sPEEX
    @g729EV = g729EV
    @eVRC = eVRC
    @eVRCB = eVRCB
    @h261 = h261
    @h263 = h263
    @cODEC_MP4V = cODEC_MP4V
    @h264 = h264
    @t38 = t38
    @t120 = t120
    @g711A_VBD = g711A_VBD
    @g711U_VBD = g711U_VBD
    @g726_VBD = g726_VBD
    @g726_40_VBD = g726_40_VBD
    @g726_32_VBD = g726_32_VBD
    @g726_24_VBD = g726_24_VBD
    @g726_16_VBD = g726_16_VBD
    @wIND_BAND_AMR = wIND_BAND_AMR
    @gSM610 = gSM610
    @h263_2000 = h263_2000
    @bROADVOICE_32 = bROADVOICE_32
    @uNKNOWN_CODEC = uNKNOWN_CODEC
    @aCODEC = aCODEC
    @vCODEC = vCODEC
    @pOLIDX = pOLIDX
    @nCPI = nCPI
    @iCPI = iCPI
    @hCPI = hCPI
    @eBOCL = eBOCL
    @eBOPL = eBOPL
    @eBOIT = eBOIT
    @rM = rM
    @cPC = cPC
    @pCHG = pCHG
    @tFPT = tFPT
    @cHT = cHT
    @mCIDMODE = mCIDMODE
    @mCIDCMODE = mCIDCMODE
    @mCIDAMODE = mCIDAMODE
    @pREPAIDIDX = pREPAIDIDX
    @cRBTID = cRBTID
    @oDBBICTYPE = oDBBICTYPE
    @oDBBOCTYPE = oDBBOCTYPE
    @oDBBARTYPE = oDBBARTYPE
    @oDBSS = oDBSS
    @oDBBRCFTYPE = oDBBRCFTYPE
    @oDBINFORM = oDBINFORM
    @oDBENTAIN = oDBENTAIN
    @oDBPLMNBAR1 = oDBPLMNBAR1
    @oDBPLMNBAR2 = oDBPLMNBAR2
    @oDBPLMNBAR3 = oDBPLMNBAR3
    @oDBPLMNBAR4 = oDBPLMNBAR4
    @pNOTI = pNOTI
    @mAXPARACALL = mAXPARACALL
    @aTSDTMBUSY = aTSDTMBUSY
    @cALLCOUNT = cALLCOUNT
    @cDNOTICALLER = cDNOTICALLER
    @iSCHGFLAG = iSCHGFLAG
    @cHC = cHC
    @cUSER = cUSER
    @cGRP = cGRP
    @cUSERGRP = cUSERGRP
    @sTCF = sTCF
    @cHARSC = cHARSC
    @rEGUIDX = rEGUIDX
    @sOCBFUNC = sOCBFUNC
    @sOCBPTONEIDX = sOCBPTONEIDX
    @aDMINCBA = aDMINCBA
    @aDCONTROL_DIVERSION = aDCONTROL_DIVERSION
    @dPR = dPR
    @pRON = pRON
    @cPCRUS = cPCRUS
    @cUSCAT = cUSCAT
    @sPT100REL = sPT100REL
    @aNALYSISMODE = aNALYSISMODE
    @gRPIDX = gRPIDX
    @sCADDRIDX = sCADDRIDX
    @cDNOCB = cDNOCB
    @kVALUE = kVALUE
    @iNPFIDX = iNPFIDX
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSBRType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_CXSBRTables
class LST_CXSBRType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSBRTables
#   table1 - LST_CXSBRTable1
class LST_CXSBRTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSBRTable1
class LST_CXSBRTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSBRStruct1
#   cXG - (any)
#   cXSG - (any)
#   iMPU - (any)
#   cXD - (any)
#   pBXFG - (any)
#   pKUPID - (any)
#   gRPICO - (any)
#   gRPWCO - (any)
#   gRPCO - (any)
#   gRPICI - (any)
#   gRPWCI - (any)
#   gRPINCO - (any)
#   aUTOCON - (any)
#   oDSPMODE - (any)
#   cONFLG - (any)
#   rESERVED - (any)
#   iMPU1 - (any)
#   iMPU2 - (any)
#   iMPU3 - (any)
#   iMPU4 - (any)
#   iMPU5 - (any)
#   iMPU6 - (any)
#   iMPU7 - (any)
#   iMPU8 - (any)
class LST_CXSBRStruct1
  attr_accessor :cXG
  attr_accessor :cXSG
  attr_accessor :iMPU
  attr_accessor :cXD
  attr_accessor :pBXFG
  attr_accessor :pKUPID
  attr_accessor :gRPICO
  attr_accessor :gRPWCO
  attr_accessor :gRPCO
  attr_accessor :gRPICI
  attr_accessor :gRPWCI
  attr_accessor :gRPINCO
  attr_accessor :aUTOCON
  attr_accessor :oDSPMODE
  attr_accessor :cONFLG
  attr_accessor :rESERVED
  attr_accessor :iMPU1
  attr_accessor :iMPU2
  attr_accessor :iMPU3
  attr_accessor :iMPU4
  attr_accessor :iMPU5
  attr_accessor :iMPU6
  attr_accessor :iMPU7
  attr_accessor :iMPU8

  def initialize(cXG = nil, cXSG = nil, iMPU = nil, cXD = nil, pBXFG = nil, pKUPID = nil, gRPICO = nil, gRPWCO = nil, gRPCO = nil, gRPICI = nil, gRPWCI = nil, gRPINCO = nil, aUTOCON = nil, oDSPMODE = nil, cONFLG = nil, rESERVED = nil, iMPU1 = nil, iMPU2 = nil, iMPU3 = nil, iMPU4 = nil, iMPU5 = nil, iMPU6 = nil, iMPU7 = nil, iMPU8 = nil)
    @cXG = cXG
    @cXSG = cXSG
    @iMPU = iMPU
    @cXD = cXD
    @pBXFG = pBXFG
    @pKUPID = pKUPID
    @gRPICO = gRPICO
    @gRPWCO = gRPWCO
    @gRPCO = gRPCO
    @gRPICI = gRPICI
    @gRPWCI = gRPWCI
    @gRPINCO = gRPINCO
    @aUTOCON = aUTOCON
    @oDSPMODE = oDSPMODE
    @cONFLG = cONFLG
    @rESERVED = rESERVED
    @iMPU1 = iMPU1
    @iMPU2 = iMPU2
    @iMPU3 = iMPU3
    @iMPU4 = iMPU4
    @iMPU5 = iMPU5
    @iMPU6 = iMPU6
    @iMPU7 = iMPU7
    @iMPU8 = iMPU8
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXGRPType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_CXGRPTables
class LST_CXGRPType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXGRPTables
#   table1 - LST_CXGRPTable1
class LST_CXGRPTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXGRPTable1
class LST_CXGRPTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXGRPStruct1
#   cGN - (any)
#   cXG - (any)
#   mAXM - (any)
#   oGC - (any)
#   cXCFTR - (any)
#   fOUTOCXPFX - (any)
#   mOUTOCXPFX - (any)
#   gPFALG - (any)
#   fONNET - (any)
#   sPDT - (any)
#   oUTCHGPAI - (any)
#   mTCHGPAI - (any)
#   mTDPAI - (any)
#   iGRM - (any)
#   oGRM - (any)
#   wACRM - (any)
#   eCRBTF - (any)
#   eCRBTTID - (any)
#   oNNETOUTBAL - (any)
#   oNNETINBAL - (any)
#   wACOUTBAL - (any)
#   wACINBAL - (any)
#   oVPNF - (any)
#   bALRULEIND - (any)
#   oVPNPF - (any)
#   rESERVED - (any)
class LST_CXGRPStruct1
  attr_accessor :cGN
  attr_accessor :cXG
  attr_accessor :mAXM
  attr_accessor :oGC
  attr_accessor :cXCFTR
  attr_accessor :fOUTOCXPFX
  attr_accessor :mOUTOCXPFX
  attr_accessor :gPFALG
  attr_accessor :fONNET
  attr_accessor :sPDT
  attr_accessor :oUTCHGPAI
  attr_accessor :mTCHGPAI
  attr_accessor :mTDPAI
  attr_accessor :iGRM
  attr_accessor :oGRM
  attr_accessor :wACRM
  attr_accessor :eCRBTF
  attr_accessor :eCRBTTID
  attr_accessor :oNNETOUTBAL
  attr_accessor :oNNETINBAL
  attr_accessor :wACOUTBAL
  attr_accessor :wACINBAL
  attr_accessor :oVPNF
  attr_accessor :bALRULEIND
  attr_accessor :oVPNPF
  attr_accessor :rESERVED

  def initialize(cGN = nil, cXG = nil, mAXM = nil, oGC = nil, cXCFTR = nil, fOUTOCXPFX = nil, mOUTOCXPFX = nil, gPFALG = nil, fONNET = nil, sPDT = nil, oUTCHGPAI = nil, mTCHGPAI = nil, mTDPAI = nil, iGRM = nil, oGRM = nil, wACRM = nil, eCRBTF = nil, eCRBTTID = nil, oNNETOUTBAL = nil, oNNETINBAL = nil, wACOUTBAL = nil, wACINBAL = nil, oVPNF = nil, bALRULEIND = nil, oVPNPF = nil, rESERVED = nil)
    @cGN = cGN
    @cXG = cXG
    @mAXM = mAXM
    @oGC = oGC
    @cXCFTR = cXCFTR
    @fOUTOCXPFX = fOUTOCXPFX
    @mOUTOCXPFX = mOUTOCXPFX
    @gPFALG = gPFALG
    @fONNET = fONNET
    @sPDT = sPDT
    @oUTCHGPAI = oUTCHGPAI
    @mTCHGPAI = mTCHGPAI
    @mTDPAI = mTDPAI
    @iGRM = iGRM
    @oGRM = oGRM
    @wACRM = wACRM
    @eCRBTF = eCRBTF
    @eCRBTTID = eCRBTTID
    @oNNETOUTBAL = oNNETOUTBAL
    @oNNETINBAL = oNNETINBAL
    @wACOUTBAL = wACOUTBAL
    @wACINBAL = wACINBAL
    @oVPNF = oVPNF
    @bALRULEIND = bALRULEIND
    @oVPNPF = oVPNPF
    @rESERVED = rESERVED
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSUBGRPType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_CXSUBGRPTables
class LST_CXSUBGRPType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSUBGRPTables
#   table1 - LST_CXSUBGRPTable1
class LST_CXSUBGRPTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSUBGRPTable1
class LST_CXSUBGRPTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSUBGRPStruct1
#   cXG - (any)
#   cGN - (any)
#   cXSG - (any)
#   cXSGN - (any)
#   bSFG - (any)
#   bALRULEIND - (any)
#   cXD - (any)
#   iMPU - (any)
#   tOC - (any)
#   iDDFC - (any)
#   oDDFC - (any)
#   iRFC - (any)
#   oRFC - (any)
#   iRBB - (any)
#   oRBB - (any)
#   nRCI - (any)
#   nRFCO - (any)
#   cCTI - (any)
#   cCTO - (any)
#   cDM - (any)
#   iDM - (any)
#   fDM - (any)
#   cFUCSI - (any)
#   cFUCSO - (any)
#   iNDO - (any)
#   bILLFLAG - (any)
#   kINDVOICE - (any)
#   cLICKTRANSRM - (any)
#   cALLINQUEUERM - (any)
#   cALLHOLDRM - (any)
#   wAKEUPRM - (any)
#   cXCFNRC - (any)
#   cHGTOFLD - (any)
#   cXCFNRCNUM - (any)
#   pRIPHXFLAG - (any)
#   pUBPHXFLAG - (any)
#   aCC - (any)
#   fTOSTA - (any)
#   rESERVED - (any)
class LST_CXSUBGRPStruct1
  attr_accessor :cXG
  attr_accessor :cGN
  attr_accessor :cXSG
  attr_accessor :cXSGN
  attr_accessor :bSFG
  attr_accessor :bALRULEIND
  attr_accessor :cXD
  attr_accessor :iMPU
  attr_accessor :tOC
  attr_accessor :iDDFC
  attr_accessor :oDDFC
  attr_accessor :iRFC
  attr_accessor :oRFC
  attr_accessor :iRBB
  attr_accessor :oRBB
  attr_accessor :nRCI
  attr_accessor :nRFCO
  attr_accessor :cCTI
  attr_accessor :cCTO
  attr_accessor :cDM
  attr_accessor :iDM
  attr_accessor :fDM
  attr_accessor :cFUCSI
  attr_accessor :cFUCSO
  attr_accessor :iNDO
  attr_accessor :bILLFLAG
  attr_accessor :kINDVOICE
  attr_accessor :cLICKTRANSRM
  attr_accessor :cALLINQUEUERM
  attr_accessor :cALLHOLDRM
  attr_accessor :wAKEUPRM
  attr_accessor :cXCFNRC
  attr_accessor :cHGTOFLD
  attr_accessor :cXCFNRCNUM
  attr_accessor :pRIPHXFLAG
  attr_accessor :pUBPHXFLAG
  attr_accessor :aCC
  attr_accessor :fTOSTA
  attr_accessor :rESERVED

  def initialize(cXG = nil, cGN = nil, cXSG = nil, cXSGN = nil, bSFG = nil, bALRULEIND = nil, cXD = nil, iMPU = nil, tOC = nil, iDDFC = nil, oDDFC = nil, iRFC = nil, oRFC = nil, iRBB = nil, oRBB = nil, nRCI = nil, nRFCO = nil, cCTI = nil, cCTO = nil, cDM = nil, iDM = nil, fDM = nil, cFUCSI = nil, cFUCSO = nil, iNDO = nil, bILLFLAG = nil, kINDVOICE = nil, cLICKTRANSRM = nil, cALLINQUEUERM = nil, cALLHOLDRM = nil, wAKEUPRM = nil, cXCFNRC = nil, cHGTOFLD = nil, cXCFNRCNUM = nil, pRIPHXFLAG = nil, pUBPHXFLAG = nil, aCC = nil, fTOSTA = nil, rESERVED = nil)
    @cXG = cXG
    @cGN = cGN
    @cXSG = cXSG
    @cXSGN = cXSGN
    @bSFG = bSFG
    @bALRULEIND = bALRULEIND
    @cXD = cXD
    @iMPU = iMPU
    @tOC = tOC
    @iDDFC = iDDFC
    @oDDFC = oDDFC
    @iRFC = iRFC
    @oRFC = oRFC
    @iRBB = iRBB
    @oRBB = oRBB
    @nRCI = nRCI
    @nRFCO = nRFCO
    @cCTI = cCTI
    @cCTO = cCTO
    @cDM = cDM
    @iDM = iDM
    @fDM = fDM
    @cFUCSI = cFUCSI
    @cFUCSO = cFUCSO
    @iNDO = iNDO
    @bILLFLAG = bILLFLAG
    @kINDVOICE = kINDVOICE
    @cLICKTRANSRM = cLICKTRANSRM
    @cALLINQUEUERM = cALLINQUEUERM
    @cALLHOLDRM = cALLHOLDRM
    @wAKEUPRM = wAKEUPRM
    @cXCFNRC = cXCFNRC
    @cHGTOFLD = cHGTOFLD
    @cXCFNRCNUM = cXCFNRCNUM
    @pRIPHXFLAG = pRIPHXFLAG
    @pUBPHXFLAG = pUBPHXFLAG
    @aCC = aCC
    @fTOSTA = fTOSTA
    @rESERVED = rESERVED
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_OCXPFXType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_OCXPFXTables
class LST_OCXPFXType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_OCXPFXTables
#   table1 - LST_OCXPFXTable1
class LST_OCXPFXTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_OCXPFXTable1
class LST_OCXPFXTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_OCXPFXStruct1
#   cXG - (any)
#   oGP - (any)
#   oCSA - (any)
#   dLEN - (any)
class LST_OCXPFXStruct1
  attr_accessor :cXG
  attr_accessor :oGP
  attr_accessor :oCSA
  attr_accessor :dLEN

  def initialize(cXG = nil, oGP = nil, oCSA = nil, dLEN = nil)
    @cXG = cXG
    @oGP = oGP
    @oCSA = oCSA
    @dLEN = dLEN
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ICXPFXType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_ICXPFXTables
class LST_ICXPFXType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ICXPFXTables
#   table1 - LST_ICXPFXTable1
class LST_ICXPFXTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ICXPFXTable1
class LST_ICXPFXTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ICXPFXStruct1
#   cXG - (any)
#   cLRLP - (any)
#   pFX - (any)
#   cSA - (any)
#   mINL - (any)
#   mAXL - (any)
#   rESERVED - (any)
class LST_ICXPFXStruct1
  attr_accessor :cXG
  attr_accessor :cLRLP
  attr_accessor :pFX
  attr_accessor :cSA
  attr_accessor :mINL
  attr_accessor :mAXL
  attr_accessor :rESERVED

  def initialize(cXG = nil, cLRLP = nil, pFX = nil, cSA = nil, mINL = nil, mAXL = nil, rESERVED = nil)
    @cXG = cXG
    @cLRLP = cLRLP
    @pFX = pFX
    @cSA = cSA
    @mINL = mINL
    @mAXL = mAXL
    @rESERVED = rESERVED
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WACCTLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_WACCTLTables
class LST_WACCTLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WACCTLTables
#   table1 - LST_WACCTLTable1
class LST_WACCTLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WACCTLTable1
class LST_WACCTLTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WACCTLStruct1
#   wACCXG - (any)
#   wAC - (any)
#   cXG - (any)
class LST_WACCTLStruct1
  attr_accessor :wACCXG
  attr_accessor :wAC
  attr_accessor :cXG

  def initialize(wACCXG = nil, wAC = nil, cXG = nil)
    @wACCXG = wACCXG
    @wAC = wAC
    @cXG = cXG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WCXPFXType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_WCXPFXTables
class LST_WCXPFXType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WCXPFXTables
#   table1 - LST_WCXPFXTable1
class LST_WCXPFXTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WCXPFXTable1
class LST_WCXPFXTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WCXPFXStruct1
#   cXG - (any)
#   wAC - (any)
#   wACCXG - (any)
class LST_WCXPFXStruct1
  attr_accessor :cXG
  attr_accessor :wAC
  attr_accessor :wACCXG

  def initialize(cXG = nil, wAC = nil, wACCXG = nil)
    @cXG = cXG
    @wAC = wAC
    @wACCXG = wACCXG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PBXType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_PBXTables
class LST_PBXType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PBXTables
#   table1 - LST_PBXTable1
class LST_PBXTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PBXTable1
class LST_PBXTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PBXStruct1
#   gDN - (any)
#   sVCID - (any)
#   qUL - (any)
#   sGM - (any)
#   mDF - (any)
#   pAC - (any)
#   sNDP - (any)
#   iADDR - (any)
#   cHT - (any)
#   rSF - (any)
class LST_PBXStruct1
  attr_accessor :gDN
  attr_accessor :sVCID
  attr_accessor :qUL
  attr_accessor :sGM
  attr_accessor :mDF
  attr_accessor :pAC
  attr_accessor :sNDP
  attr_accessor :iADDR
  attr_accessor :cHT
  attr_accessor :rSF

  def initialize(gDN = nil, sVCID = nil, qUL = nil, sGM = nil, mDF = nil, pAC = nil, sNDP = nil, iADDR = nil, cHT = nil, rSF = nil)
    @gDN = gDN
    @sVCID = sVCID
    @qUL = qUL
    @sGM = sGM
    @mDF = mDF
    @pAC = pAC
    @sNDP = sNDP
    @iADDR = iADDR
    @cHT = cHT
    @rSF = rSF
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PBXSBRType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_PBXSBRTables
class LST_PBXSBRType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PBXSBRTables
#   table1 - LST_PBXSBRTable1
class LST_PBXSBRTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PBXSBRTable1
class LST_PBXSBRTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PBXSBRStruct1
#   iMPU - (any)
#   gDN - (any)
#   pSN - (any)
#   tIP - (any)
class LST_PBXSBRStruct1
  attr_accessor :iMPU
  attr_accessor :gDN
  attr_accessor :pSN
  attr_accessor :tIP

  def initialize(iMPU = nil, gDN = nil, pSN = nil, tIP = nil)
    @iMPU = iMPU
    @gDN = gDN
    @pSN = pSN
    @tIP = tIP
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSDType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_CXSDTables
class LST_CXSDType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSDTables
#   table1 - LST_CXSDTable1
class LST_CXSDTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSDTable1
class LST_CXSDTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSDStruct1
#   cXG - (any)
#   cXSG - (any)
#   sDSN - (any)
#   sDFN - (any)
class LST_CXSDStruct1
  attr_accessor :cXG
  attr_accessor :cXSG
  attr_accessor :sDSN
  attr_accessor :sDFN

  def initialize(cXG = nil, cXSG = nil, sDSN = nil, sDFN = nil)
    @cXG = cXG
    @cXSG = cXSG
    @sDSN = sDSN
    @sDFN = sDFN
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXUNUMType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_CXUNUMTables
class LST_CXUNUMType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXUNUMTables
#   table1 - LST_CXUNUMTable1
class LST_CXUNUMTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXUNUMTable1
class LST_CXUNUMTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXUNUMStruct1
#   cXG - (any)
#   mAXU - (any)
#   aCTUALU - (any)
class LST_CXUNUMStruct1
  attr_accessor :cXG
  attr_accessor :mAXU
  attr_accessor :aCTUALU

  def initialize(cXG = nil, mAXU = nil, aCTUALU = nil)
    @cXG = cXG
    @mAXU = mAXU
    @aCTUALU = aCTUALU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WCIMPUType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_WCIMPUTables
class LST_WCIMPUType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WCIMPUTables
#   table1 - LST_WCIMPUTable1
class LST_WCIMPUTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WCIMPUTable1
class LST_WCIMPUTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WCIMPUStruct1
#   wCIDX - (any)
#   pIMPU - (any)
#   wCIMPU1 - (any)
#   wCIMPU2 - (any)
#   rESERVED - (any)
class LST_WCIMPUStruct1
  attr_accessor :wCIDX
  attr_accessor :pIMPU
  attr_accessor :wCIMPU1
  attr_accessor :wCIMPU2
  attr_accessor :rESERVED

  def initialize(wCIDX = nil, pIMPU = nil, wCIMPU1 = nil, wCIMPU2 = nil, rESERVED = nil)
    @wCIDX = wCIDX
    @pIMPU = pIMPU
    @wCIMPU1 = wCIMPU1
    @wCIMPU2 = wCIMPU2
    @rESERVED = rESERVED
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXOCRType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_CXOCRTables
class LST_CXOCRType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXOCRTables
#   table1 - LST_CXOCRTable1
class LST_CXOCRTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXOCRTable1
class LST_CXOCRTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXOCRStruct1
#   cTXGRPID - (any)
#   kVALUE - (any)
#   cALLOUTRIGHT - (any)
class LST_CXOCRStruct1
  attr_accessor :cTXGRPID
  attr_accessor :kVALUE
  attr_accessor :cALLOUTRIGHT

  def initialize(cTXGRPID = nil, kVALUE = nil, cALLOUTRIGHT = nil)
    @cTXGRPID = cTXGRPID
    @kVALUE = kVALUE
    @cALLOUTRIGHT = cALLOUTRIGHT
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXPFXPROType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_CXPFXPROTables
class LST_CXPFXPROType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXPFXPROTables
#   table1 - LST_CXPFXPROTable1
class LST_CXPFXPROTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXPFXPROTable1
class LST_CXPFXPROTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXPFXPROStruct1
#   cXG - (any)
#   pFX - (any)
#   cSC - (any)
#   dDC - (any)
#   rDC - (any)
#   sTP - (any)
#   fPF - (any)
#   nPS - (any)
#   nLP - (any)
#   dDCX - (any)
#   rDCX - (any)
#   rAF - (any)
#   tT - (any)
#   fCC - (any)
#   rESERVED - (any)
class LST_CXPFXPROStruct1
  attr_accessor :cXG
  attr_accessor :pFX
  attr_accessor :cSC
  attr_accessor :dDC
  attr_accessor :rDC
  attr_accessor :sTP
  attr_accessor :fPF
  attr_accessor :nPS
  attr_accessor :nLP
  attr_accessor :dDCX
  attr_accessor :rDCX
  attr_accessor :rAF
  attr_accessor :tT
  attr_accessor :fCC
  attr_accessor :rESERVED

  def initialize(cXG = nil, pFX = nil, cSC = nil, dDC = nil, rDC = nil, sTP = nil, fPF = nil, nPS = nil, nLP = nil, dDCX = nil, rDCX = nil, rAF = nil, tT = nil, fCC = nil, rESERVED = nil)
    @cXG = cXG
    @pFX = pFX
    @cSC = cSC
    @dDC = dDC
    @rDC = rDC
    @sTP = sTP
    @fPF = fPF
    @nPS = nPS
    @nLP = nLP
    @dDCX = dDCX
    @rDCX = rDCX
    @rAF = rAF
    @tT = tT
    @fCC = fCC
    @rESERVED = rESERVED
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXACTType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_CXACTTables
class LST_CXACTType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXACTTables
#   table1 - LST_CXACTTable1
class LST_CXACTTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXACTTable1
class LST_CXACTTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXACTStruct1
#   aCT - (any)
#   iMPU - (any)
class LST_CXACTStruct1
  attr_accessor :aCT
  attr_accessor :iMPU

  def initialize(aCT = nil, iMPU = nil)
    @aCT = aCT
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CXACTType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_CXACTTables
class DSP_CXACTType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CXACTTables
#   table1 - DSP_CXACTTable1
class DSP_CXACTTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CXACTTable1
class DSP_CXACTTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CXACTStruct1
#   aCT - (any)
#   rOLEID - (any)
#   rTLIST - (any)
#   iMPU - (any)
#   nAME - (any)
class DSP_CXACTStruct1
  attr_accessor :aCT
  attr_accessor :rOLEID
  attr_accessor :rTLIST
  attr_accessor :iMPU
  attr_accessor :nAME

  def initialize(aCT = nil, rOLEID = nil, rTLIST = nil, iMPU = nil, nAME = nil)
    @aCT = aCT
    @rOLEID = rOLEID
    @rTLIST = rTLIST
    @iMPU = iMPU
    @nAME = nAME
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CONType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_CONTables
class DSP_CONType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CONTables
#   table1 - DSP_CONTable1
class DSP_CONTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CONTable1
class DSP_CONTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CONStruct1
#   iMPU - (any)
#   pDMN - (any)
#   pADDR - (any)
#   pPORT - (any)
#   cONTYPE - (any)
#   sMSNUM - (any)
class DSP_CONStruct1
  attr_accessor :iMPU
  attr_accessor :pDMN
  attr_accessor :pADDR
  attr_accessor :pPORT
  attr_accessor :cONTYPE
  attr_accessor :sMSNUM

  def initialize(iMPU = nil, pDMN = nil, pADDR = nil, pPORT = nil, cONTYPE = nil, sMSNUM = nil)
    @iMPU = iMPU
    @pDMN = pDMN
    @pADDR = pADDR
    @pPORT = pPORT
    @cONTYPE = cONTYPE
    @sMSNUM = sMSNUM
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CONType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_CONTables
class LST_CONType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CONTables
#   table1 - LST_CONTable1
class LST_CONTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CONTable1
class LST_CONTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CONStruct1
#   iMPU - (any)
class LST_CONStruct1
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ROLEType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_ROLETables
class LST_ROLEType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ROLETables
#   table1 - LST_ROLETable1
class LST_ROLETables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ROLETable1
class LST_ROLETable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ROLEStruct1
#   rOLEID - (any)
#   rOLENAME - (any)
class LST_ROLEStruct1
  attr_accessor :rOLEID
  attr_accessor :rOLENAME

  def initialize(rOLEID = nil, rOLENAME = nil)
    @rOLEID = rOLEID
    @rOLENAME = rOLENAME
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ROLEType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_ROLETables
class DSP_ROLEType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ROLETables
#   table1 - DSP_ROLETable1
class DSP_ROLETables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ROLETable1
class DSP_ROLETable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ROLEStruct1
#   rOLEID - (any)
#   rOLENAME - (any)
#   rTLIST - (any)
#   dESC - (any)
class DSP_ROLEStruct1
  attr_accessor :rOLEID
  attr_accessor :rOLENAME
  attr_accessor :rTLIST
  attr_accessor :dESC

  def initialize(rOLEID = nil, rOLENAME = nil, rTLIST = nil, dESC = nil)
    @rOLEID = rOLEID
    @rOLENAME = rOLENAME
    @rTLIST = rTLIST
    @dESC = dESC
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ACTRTType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_ACTRTTables
class LST_ACTRTType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ACTRTTables
#   table1 - LST_ACTRTTable1
class LST_ACTRTTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ACTRTTable1
class LST_ACTRTTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ACTRTStruct1
#   rTID - (any)
#   rTNAME - (any)
#   rTDESC - (any)
class LST_ACTRTStruct1
  attr_accessor :rTID
  attr_accessor :rTNAME
  attr_accessor :rTDESC

  def initialize(rTID = nil, rTNAME = nil, rTDESC = nil)
    @rTID = rTID
    @rTNAME = rTNAME
    @rTDESC = rTDESC
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ACTRTType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_ACTRTTables
class DSP_ACTRTType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ACTRTTables
#   table1 - DSP_ACTRTTable1
class DSP_ACTRTTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ACTRTTable1
class DSP_ACTRTTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ACTRTStruct1
#   rTID - (any)
#   rTNAME - (any)
#   rTDESC - (any)
class DSP_ACTRTStruct1
  attr_accessor :rTID
  attr_accessor :rTNAME
  attr_accessor :rTDESC

  def initialize(rTID = nil, rTNAME = nil, rTDESC = nil)
    @rTID = rTID
    @rTNAME = rTNAME
    @rTDESC = rTDESC
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SBGLANType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - DSP_SBGLANTables
class DSP_SBGLANType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SBGLANTables
#   table1 - DSP_SBGLANTable1
class DSP_SBGLANTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SBGLANTable1
class DSP_SBGLANTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SBGLANStruct1
#   lANID - (any)
class DSP_SBGLANStruct1
  attr_accessor :lANID

  def initialize(lANID = nil)
    @lANID = lANID
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_LANType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_LANTables
class LST_LANType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_LANTables
#   table1 - LST_LANTable1
class LST_LANTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_LANTable1
class LST_LANTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_LANStruct1
#   lANID - (any)
#   lANNAME - (any)
class LST_LANStruct1
  attr_accessor :lANID
  attr_accessor :lANNAME

  def initialize(lANID = nil, lANNAME = nil)
    @lANID = lANID
    @lANNAME = lANNAME
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSBRCONType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_CXSBRCONTables
class LST_CXSBRCONType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSBRCONTables
#   table1 - LST_CXSBRCONTable1
class LST_CXSBRCONTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSBRCONTable1
class LST_CXSBRCONTable1 < ::Array
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSBRCONStruct1
#   iMPU - (any)
#   lCO - (any)
#   lC - (any)
#   lCT - (any)
#   nTT - (any)
#   iTT - (any)
#   iNTT - (any)
#   iITT - (any)
#   iOLT - (any)
#   gRPICO - (any)
#   gRPCO - (any)
#   iDDCI - (any)
#   nTCI - (any)
#   lTCI - (any)
#   gRPICI - (any)
#   gRPINCO - (any)
#   nSCFU - (any)
#   nSCFB - (any)
#   nSCFBVM - (any)
#   nSCFNR - (any)
#   nSCFNRVM - (any)
#   nSCFNL - (any)
#   nSCD - (any)
#   nSCIDCW - (any)
#   nSRIP - (any)
#   nSRID - (any)
#   nSNRID - (any)
#   nSCLIP - (any)
#   nSRIO - (any)
#   nSCLIR - (any)
#   nSCW - (any)
#   nSWAKE_UP - (any)
#   nSCCBS - (any)
#   nS3PTY - (any)
#   nSNPTY - (any)
#   nSDND - (any)
#   nSHOLD - (any)
#   nSCFTB - (any)
#   nSDAN - (any)
#   nSMCID - (any)
#   nSDN_CALL_OUT_ALLOW - (any)
#   nSSPEED_DIAL - (any)
#   nSGAA - (any)
#   nSHOTLINE - (any)
#   nSICENCF - (any)
#   nSABSENT - (any)
class LST_CXSBRCONStruct1
  attr_accessor :iMPU
  attr_accessor :lCO
  attr_accessor :lC
  attr_accessor :lCT
  attr_accessor :nTT
  attr_accessor :iTT
  attr_accessor :iNTT
  attr_accessor :iITT
  attr_accessor :iOLT
  attr_accessor :gRPICO
  attr_accessor :gRPCO
  attr_accessor :iDDCI
  attr_accessor :nTCI
  attr_accessor :lTCI
  attr_accessor :gRPICI
  attr_accessor :gRPINCO
  attr_accessor :nSCFU
  attr_accessor :nSCFB
  attr_accessor :nSCFBVM
  attr_accessor :nSCFNR
  attr_accessor :nSCFNRVM
  attr_accessor :nSCFNL
  attr_accessor :nSCD
  attr_accessor :nSCIDCW
  attr_accessor :nSRIP
  attr_accessor :nSRID
  attr_accessor :nSNRID
  attr_accessor :nSCLIP
  attr_accessor :nSRIO
  attr_accessor :nSCLIR
  attr_accessor :nSCW
  attr_accessor :nSWAKE_UP
  attr_accessor :nSCCBS
  attr_accessor :nS3PTY
  attr_accessor :nSNPTY
  attr_accessor :nSDND
  attr_accessor :nSHOLD
  attr_accessor :nSCFTB
  attr_accessor :nSDAN
  attr_accessor :nSMCID
  attr_accessor :nSDN_CALL_OUT_ALLOW
  attr_accessor :nSSPEED_DIAL
  attr_accessor :nSGAA
  attr_accessor :nSHOTLINE
  attr_accessor :nSICENCF
  attr_accessor :nSABSENT

  def initialize(iMPU = nil, lCO = nil, lC = nil, lCT = nil, nTT = nil, iTT = nil, iNTT = nil, iITT = nil, iOLT = nil, gRPICO = nil, gRPCO = nil, iDDCI = nil, nTCI = nil, lTCI = nil, gRPICI = nil, gRPINCO = nil, nSCFU = nil, nSCFB = nil, nSCFBVM = nil, nSCFNR = nil, nSCFNRVM = nil, nSCFNL = nil, nSCD = nil, nSCIDCW = nil, nSRIP = nil, nSRID = nil, nSNRID = nil, nSCLIP = nil, nSRIO = nil, nSCLIR = nil, nSCW = nil, nSWAKE_UP = nil, nSCCBS = nil, nS3PTY = nil, nSNPTY = nil, nSDND = nil, nSHOLD = nil, nSCFTB = nil, nSDAN = nil, nSMCID = nil, nSDN_CALL_OUT_ALLOW = nil, nSSPEED_DIAL = nil, nSGAA = nil, nSHOTLINE = nil, nSICENCF = nil, nSABSENT = nil)
    @iMPU = iMPU
    @lCO = lCO
    @lC = lC
    @lCT = lCT
    @nTT = nTT
    @iTT = iTT
    @iNTT = iNTT
    @iITT = iITT
    @iOLT = iOLT
    @gRPICO = gRPICO
    @gRPCO = gRPCO
    @iDDCI = iDDCI
    @nTCI = nTCI
    @lTCI = lTCI
    @gRPICI = gRPICI
    @gRPINCO = gRPINCO
    @nSCFU = nSCFU
    @nSCFB = nSCFB
    @nSCFBVM = nSCFBVM
    @nSCFNR = nSCFNR
    @nSCFNRVM = nSCFNRVM
    @nSCFNL = nSCFNL
    @nSCD = nSCD
    @nSCIDCW = nSCIDCW
    @nSRIP = nSRIP
    @nSRID = nSRID
    @nSNRID = nSNRID
    @nSCLIP = nSCLIP
    @nSRIO = nSRIO
    @nSCLIR = nSCLIR
    @nSCW = nSCW
    @nSWAKE_UP = nSWAKE_UP
    @nSCCBS = nSCCBS
    @nS3PTY = nS3PTY
    @nSNPTY = nSNPTY
    @nSDND = nSDND
    @nSHOLD = nSHOLD
    @nSCFTB = nSCFTB
    @nSDAN = nSDAN
    @nSMCID = nSMCID
    @nSDN_CALL_OUT_ALLOW = nSDN_CALL_OUT_ALLOW
    @nSSPEED_DIAL = nSSPEED_DIAL
    @nSGAA = nSGAA
    @nSHOTLINE = nSHOTLINE
    @nSICENCF = nSICENCF
    @nSABSENT = nSABSENT
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#   faultReason - SOAP::SOAPString
class OperationFault < ::StandardError
  attr_accessor :faultReason

  def initialize(faultReason = nil)
    @faultReason = faultReason
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ResultType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
class ResultType
  attr_accessor :resultCode
  attr_accessor :resultDesc

  def initialize(resultCode = nil, resultDesc = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_SBR
#   iMPU - (any)
#   tEMPLATEIDX - (any)
#   dSPIDX - (any)
#   lP - (any)
#   cSC - (any)
#   uNAME - (any)
#   uTYPE - (any)
#   vCCFLAG - (any)
#   vTFLAG - (any)
#   nSCFU - (any)
#   nSCFUVM - (any)
#   nSCFB - (any)
#   nSCFBVM - (any)
#   nSCFNR - (any)
#   nSCFNRVM - (any)
#   nSCFNL - (any)
#   nSCFNLVM - (any)
#   nSCD - (any)
#   nSCDVM - (any)
#   nSCFNRC - (any)
#   nSCFNRCVM - (any)
#   nSCLIP - (any)
#   nSCIDCW - (any)
#   nSRIO - (any)
#   nSCNIP - (any)
#   nSCLIR - (any)
#   nSRIP - (any)
#   nSCNIR - (any)
#   nSRID - (any)
#   nSNRID - (any)
#   nSRND - (any)
#   nSNRND - (any)
#   nSCW - (any)
#   nSCCW - (any)
#   nSOIP - (any)
#   nSACRM - (any)
#   nSGOIR - (any)
#   nSMOIR - (any)
#   nSTIP - (any)
#   nSTIR - (any)
#   nSOTIR - (any)
#   nSCLIPNOSCREENING - (any)
#   nSCR - (any)
#   nSWAKE_UP - (any)
#   nSAOC_D - (any)
#   nSAOC_E - (any)
#   nSXEXH - (any)
#   nSXEGJ - (any)
#   nSCWCFNR - (any)
#   nSIIFC - (any)
#   nSDN_CALL_OUT_BAR - (any)
#   nSCCBS - (any)
#   nSCCNR - (any)
#   nSCCBSR - (any)
#   nSCCNRR - (any)
#   nS3PTY - (any)
#   nSNPTY - (any)
#   nSDND - (any)
#   nSMCR - (any)
#   nSCBA - (any)
#   nSTMP_LIN - (any)
#   nSCODEC_CNTRL - (any)
#   nSMWI - (any)
#   nSDC - (any)
#   nSHOLD - (any)
#   nSECT - (any)
#   nSCFTB - (any)
#   nSDAN - (any)
#   nSSTOP_SECRET - (any)
#   nSMCID - (any)
#   nSEBO - (any)
#   nSICO - (any)
#   nSOUTG - (any)
#   nSINQYH - (any)
#   nSUINFO - (any)
#   nSDN_CALL_OUT_ALLOW - (any)
#   nSSIC - (any)
#   nSSOC - (any)
#   nSSETCFNRTIME - (any)
#   nSCFS - (any)
#   nSCFSB - (any)
#   nSFAX - (any)
#   nSABRC - (any)
#   nSACRTOVM - (any)
#   nSPREPAID - (any)
#   nSCRBT - (any)
#   nSICB - (any)
#   nSMRINGING - (any)
#   nSCIS - (any)
#   nSCBEG - (any)
#   nSCOLP - (any)
#   nSCOLR - (any)
#   nSCOLPOVR - (any)
#   nSBAOC - (any)
#   nSBOIC - (any)
#   nSBOICEXHC - (any)
#   nSBAIC - (any)
#   nSBICROM - (any)
#   nSSPEED_DIAL - (any)
#   nSSD1D - (any)
#   nSSD2D - (any)
#   nSGRNCALL - (any)
#   nSCPARK - (any)
#   nSGAA - (any)
#   nSQSNS - (any)
#   nSMSN - (any)
#   nSHOTLINE - (any)
#   nSAOC_S - (any)
#   nSNIGHTSRV - (any)
#   nSBACKNUM - (any)
#   nSAUTOCON - (any)
#   nSCAMPON - (any)
#   nSCTD - (any)
#   nSCLICKHOLD - (any)
#   nSQUEUE - (any)
#   nSSANSWER - (any)
#   nSICENCF - (any)
#   nSCFGO - (any)
#   nSCECT - (any)
#   nSCTGO - (any)
#   nSCTIO - (any)
#   nSSETBUSY - (any)
#   nSOVERSTEP - (any)
#   nSABSENT - (any)
#   nSMONITOR - (any)
#   nSFMONITOR - (any)
#   nSDISCNT - (any)
#   nSFDISCNT - (any)
#   nSINSERT - (any)
#   nSFINSERT - (any)
#   nSASI - (any)
#   nSPWCB - (any)
#   nSRD - (any)
#   nSLCPS - (any)
#   nSNCPS - (any)
#   nSICPS - (any)
#   nSHCPS - (any)
#   nSCBCLOCK - (any)
#   nSMINIBAR - (any)
#   nSMCN - (any)
#   nSDSTR - (any)
#   nSOPRREG - (any)
#   nSONEKEY - (any)
#   nSINBOUND - (any)
#   nSOUTBOUND - (any)
#   nSCALLERID - (any)
#   nSCUN - (any)
#   nSIPTVVC - (any)
#   nSNP - (any)
#   nSSEC - (any)
#   nSSECSTA - (any)
#   nSHRCN - (any)
#   nSSB - (any)
#   nSSCCA - (any)
#   nSCCS - (any)
#   nSOCCR - (any)
#   nSIMSMS - (any)
#   lCO - (any)
#   lC - (any)
#   lCT - (any)
#   nTT - (any)
#   iTT - (any)
#   iCTX - (any)
#   oCTX - (any)
#   iNTT - (any)
#   iITT - (any)
#   iCLT - (any)
#   iCDDD - (any)
#   iCIDD - (any)
#   iOLT - (any)
#   cTLCO - (any)
#   cTLCT - (any)
#   cTLD - (any)
#   cTINTNANP - (any)
#   cTINTWORLD - (any)
#   cTDA - (any)
#   cTOSM - (any)
#   cTOSP - (any)
#   cTOSP1 - (any)
#   cCO1 - (any)
#   cCO2 - (any)
#   cCO3 - (any)
#   cCO4 - (any)
#   cCO5 - (any)
#   cCO6 - (any)
#   cCO7 - (any)
#   cCO8 - (any)
#   cCO9 - (any)
#   cCO10 - (any)
#   cCO11 - (any)
#   cCO12 - (any)
#   cCO13 - (any)
#   cCO14 - (any)
#   cCO15 - (any)
#   cCO16 - (any)
#   cCO17 - (any)
#   cCO18 - (any)
#   cCO19 - (any)
#   cCO20 - (any)
#   cCO21 - (any)
#   cCO22 - (any)
#   cCO23 - (any)
#   cCO24 - (any)
#   cCO25 - (any)
#   cCO26 - (any)
#   cCO27 - (any)
#   cCO28 - (any)
#   cCO29 - (any)
#   cCO30 - (any)
#   cCO31 - (any)
#   cCO32 - (any)
#   hIGHENTCO - (any)
#   oPERATOR - (any)
#   sUPYSRV - (any)
#   iDDCI - (any)
#   nTCI - (any)
#   lTCI - (any)
#   rSC - (any)
#   cIG - (any)
#   oUTRST - (any)
#   iNRST - (any)
#   nOAT - (any)
#   rINGCOUNT - (any)
#   vMAIND - (any)
#   vDMAIND - (any)
#   tGRP - (any)
#   tIDHLD - (any)
#   tIDCW - (any)
#   sCF - (any)
#   lMTGRP - (any)
#   fLBGRP - (any)
#   sLBGRP - (any)
#   cOP - (any)
#   g711_64K_A_LAW - (any)
#   g711_64K_U_LAW - (any)
#   g722 - (any)
#   g723 - (any)
#   g726 - (any)
#   g728 - (any)
#   g729 - (any)
#   cODEC_MP4A - (any)
#   cODEC2833 - (any)
#   cODEC2198 - (any)
#   g726_40 - (any)
#   g726_32 - (any)
#   g726_24 - (any)
#   g726_16 - (any)
#   aMR - (any)
#   cLEARMODE - (any)
#   iLBC - (any)
#   sPEEX - (any)
#   g729EV - (any)
#   eVRC - (any)
#   eVRCB - (any)
#   h261 - (any)
#   h263 - (any)
#   cODEC_MP4V - (any)
#   h264 - (any)
#   t38 - (any)
#   t120 - (any)
#   g711A_VBD - (any)
#   g711U_VBD - (any)
#   g726_VBD - (any)
#   g726_40_VBD - (any)
#   g726_32_VBD - (any)
#   g726_24_VBD - (any)
#   g726_16_VBD - (any)
#   wIND_BAND_AMR - (any)
#   gSM610 - (any)
#   h263_2000 - (any)
#   bROADVOICE_32 - (any)
#   uNKNOWN_CODEC - (any)
#   aCODEC - (any)
#   vCODEC - (any)
#   pOLIDX - (any)
#   nCPI - (any)
#   iCPI - (any)
#   hCPI - (any)
#   eBOCL - (any)
#   eBOPL - (any)
#   eBOIT - (any)
#   rM - (any)
#   cPC - (any)
#   pCHG - (any)
#   tFPT - (any)
#   cHT - (any)
#   mCIDMODE - (any)
#   mCIDCMODE - (any)
#   mCIDAMODE - (any)
#   pREPAIDIDX - (any)
#   cRBTID - (any)
#   oDBBICTYPE - (any)
#   oDBBOCTYPE - (any)
#   oDBBARTYPE - (any)
#   oDBSS - (any)
#   oDBBRCFTYPE - (any)
#   oDBINFORM - (any)
#   oDBENTAIN - (any)
#   oDBPLMNBAR1 - (any)
#   oDBPLMNBAR2 - (any)
#   oDBPLMNBAR3 - (any)
#   oDBPLMNBAR4 - (any)
#   pNOTI - (any)
#   mAXPARACALL - (any)
#   aTSDTMBUSY - (any)
#   cALLCOUNT - (any)
#   cDNOTICALLER - (any)
#   iSCHGFLAG - (any)
#   cHC - (any)
#   cUSER - (any)
#   cGRP - (any)
#   cUSERGRP - (any)
#   sTCF - (any)
#   cHARSC - (any)
#   rEGUIDX - (any)
#   sOCBFUNC - (any)
#   sOCBPTONEIDX - (any)
#   aDMINCBA - (any)
#   aDCONTROL_DIVERSION - (any)
#   dPR - (any)
#   pRON - (any)
#   cPCRUS - (any)
#   cUSCAT - (any)
#   sPT100REL - (any)
#   aNALYSISMODE - (any)
#   gRPIDX - (any)
#   sCADDRIDX - (any)
#   cDNOCB - (any)
#   pBTSBR - ADD_SBR::PBTSBR
#   kVALUE - (any)
#   iNPFIDX - (any)
class ADD_SBR

  # inner class for member: PBTSBR
  # {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}PBTSBR
  #   pBXID - (any)
  #   iSPILOT - (any)
  #   iSSHARESRV - (any)
  class PBTSBR
    attr_accessor :pBXID
    attr_accessor :iSPILOT
    attr_accessor :iSSHARESRV

    def initialize(pBXID = nil, iSPILOT = nil, iSSHARESRV = nil)
      @pBXID = pBXID
      @iSPILOT = iSPILOT
      @iSSHARESRV = iSSHARESRV
    end
  end

  attr_accessor :iMPU
  attr_accessor :tEMPLATEIDX
  attr_accessor :dSPIDX
  attr_accessor :lP
  attr_accessor :cSC
  attr_accessor :uNAME
  attr_accessor :uTYPE
  attr_accessor :vCCFLAG
  attr_accessor :vTFLAG
  attr_accessor :nSCFU
  attr_accessor :nSCFUVM
  attr_accessor :nSCFB
  attr_accessor :nSCFBVM
  attr_accessor :nSCFNR
  attr_accessor :nSCFNRVM
  attr_accessor :nSCFNL
  attr_accessor :nSCFNLVM
  attr_accessor :nSCD
  attr_accessor :nSCDVM
  attr_accessor :nSCFNRC
  attr_accessor :nSCFNRCVM
  attr_accessor :nSCLIP
  attr_accessor :nSCIDCW
  attr_accessor :nSRIO
  attr_accessor :nSCNIP
  attr_accessor :nSCLIR
  attr_accessor :nSRIP
  attr_accessor :nSCNIR
  attr_accessor :nSRID
  attr_accessor :nSNRID
  attr_accessor :nSRND
  attr_accessor :nSNRND
  attr_accessor :nSCW
  attr_accessor :nSCCW
  attr_accessor :nSOIP
  attr_accessor :nSACRM
  attr_accessor :nSGOIR
  attr_accessor :nSMOIR
  attr_accessor :nSTIP
  attr_accessor :nSTIR
  attr_accessor :nSOTIR
  attr_accessor :nSCLIPNOSCREENING
  attr_accessor :nSCR
  attr_accessor :nSWAKE_UP
  attr_accessor :nSAOC_D
  attr_accessor :nSAOC_E
  attr_accessor :nSXEXH
  attr_accessor :nSXEGJ
  attr_accessor :nSCWCFNR
  attr_accessor :nSIIFC
  attr_accessor :nSDN_CALL_OUT_BAR
  attr_accessor :nSCCBS
  attr_accessor :nSCCNR
  attr_accessor :nSCCBSR
  attr_accessor :nSCCNRR
  attr_accessor :nS3PTY
  attr_accessor :nSNPTY
  attr_accessor :nSDND
  attr_accessor :nSMCR
  attr_accessor :nSCBA
  attr_accessor :nSTMP_LIN
  attr_accessor :nSCODEC_CNTRL
  attr_accessor :nSMWI
  attr_accessor :nSDC
  attr_accessor :nSHOLD
  attr_accessor :nSECT
  attr_accessor :nSCFTB
  attr_accessor :nSDAN
  attr_accessor :nSSTOP_SECRET
  attr_accessor :nSMCID
  attr_accessor :nSEBO
  attr_accessor :nSICO
  attr_accessor :nSOUTG
  attr_accessor :nSINQYH
  attr_accessor :nSUINFO
  attr_accessor :nSDN_CALL_OUT_ALLOW
  attr_accessor :nSSIC
  attr_accessor :nSSOC
  attr_accessor :nSSETCFNRTIME
  attr_accessor :nSCFS
  attr_accessor :nSCFSB
  attr_accessor :nSFAX
  attr_accessor :nSABRC
  attr_accessor :nSACRTOVM
  attr_accessor :nSPREPAID
  attr_accessor :nSCRBT
  attr_accessor :nSICB
  attr_accessor :nSMRINGING
  attr_accessor :nSCIS
  attr_accessor :nSCBEG
  attr_accessor :nSCOLP
  attr_accessor :nSCOLR
  attr_accessor :nSCOLPOVR
  attr_accessor :nSBAOC
  attr_accessor :nSBOIC
  attr_accessor :nSBOICEXHC
  attr_accessor :nSBAIC
  attr_accessor :nSBICROM
  attr_accessor :nSSPEED_DIAL
  attr_accessor :nSSD1D
  attr_accessor :nSSD2D
  attr_accessor :nSGRNCALL
  attr_accessor :nSCPARK
  attr_accessor :nSGAA
  attr_accessor :nSQSNS
  attr_accessor :nSMSN
  attr_accessor :nSHOTLINE
  attr_accessor :nSAOC_S
  attr_accessor :nSNIGHTSRV
  attr_accessor :nSBACKNUM
  attr_accessor :nSAUTOCON
  attr_accessor :nSCAMPON
  attr_accessor :nSCTD
  attr_accessor :nSCLICKHOLD
  attr_accessor :nSQUEUE
  attr_accessor :nSSANSWER
  attr_accessor :nSICENCF
  attr_accessor :nSCFGO
  attr_accessor :nSCECT
  attr_accessor :nSCTGO
  attr_accessor :nSCTIO
  attr_accessor :nSSETBUSY
  attr_accessor :nSOVERSTEP
  attr_accessor :nSABSENT
  attr_accessor :nSMONITOR
  attr_accessor :nSFMONITOR
  attr_accessor :nSDISCNT
  attr_accessor :nSFDISCNT
  attr_accessor :nSINSERT
  attr_accessor :nSFINSERT
  attr_accessor :nSASI
  attr_accessor :nSPWCB
  attr_accessor :nSRD
  attr_accessor :nSLCPS
  attr_accessor :nSNCPS
  attr_accessor :nSICPS
  attr_accessor :nSHCPS
  attr_accessor :nSCBCLOCK
  attr_accessor :nSMINIBAR
  attr_accessor :nSMCN
  attr_accessor :nSDSTR
  attr_accessor :nSOPRREG
  attr_accessor :nSONEKEY
  attr_accessor :nSINBOUND
  attr_accessor :nSOUTBOUND
  attr_accessor :nSCALLERID
  attr_accessor :nSCUN
  attr_accessor :nSIPTVVC
  attr_accessor :nSNP
  attr_accessor :nSSEC
  attr_accessor :nSSECSTA
  attr_accessor :nSHRCN
  attr_accessor :nSSB
  attr_accessor :nSSCCA
  attr_accessor :nSCCS
  attr_accessor :nSOCCR
  attr_accessor :nSIMSMS
  attr_accessor :lCO
  attr_accessor :lC
  attr_accessor :lCT
  attr_accessor :nTT
  attr_accessor :iTT
  attr_accessor :iCTX
  attr_accessor :oCTX
  attr_accessor :iNTT
  attr_accessor :iITT
  attr_accessor :iCLT
  attr_accessor :iCDDD
  attr_accessor :iCIDD
  attr_accessor :iOLT
  attr_accessor :cTLCO
  attr_accessor :cTLCT
  attr_accessor :cTLD
  attr_accessor :cTINTNANP
  attr_accessor :cTINTWORLD
  attr_accessor :cTDA
  attr_accessor :cTOSM
  attr_accessor :cTOSP
  attr_accessor :cTOSP1
  attr_accessor :cCO1
  attr_accessor :cCO2
  attr_accessor :cCO3
  attr_accessor :cCO4
  attr_accessor :cCO5
  attr_accessor :cCO6
  attr_accessor :cCO7
  attr_accessor :cCO8
  attr_accessor :cCO9
  attr_accessor :cCO10
  attr_accessor :cCO11
  attr_accessor :cCO12
  attr_accessor :cCO13
  attr_accessor :cCO14
  attr_accessor :cCO15
  attr_accessor :cCO16
  attr_accessor :cCO17
  attr_accessor :cCO18
  attr_accessor :cCO19
  attr_accessor :cCO20
  attr_accessor :cCO21
  attr_accessor :cCO22
  attr_accessor :cCO23
  attr_accessor :cCO24
  attr_accessor :cCO25
  attr_accessor :cCO26
  attr_accessor :cCO27
  attr_accessor :cCO28
  attr_accessor :cCO29
  attr_accessor :cCO30
  attr_accessor :cCO31
  attr_accessor :cCO32
  attr_accessor :hIGHENTCO
  attr_accessor :oPERATOR
  attr_accessor :sUPYSRV
  attr_accessor :iDDCI
  attr_accessor :nTCI
  attr_accessor :lTCI
  attr_accessor :rSC
  attr_accessor :cIG
  attr_accessor :oUTRST
  attr_accessor :iNRST
  attr_accessor :nOAT
  attr_accessor :rINGCOUNT
  attr_accessor :vMAIND
  attr_accessor :vDMAIND
  attr_accessor :tGRP
  attr_accessor :tIDHLD
  attr_accessor :tIDCW
  attr_accessor :sCF
  attr_accessor :lMTGRP
  attr_accessor :fLBGRP
  attr_accessor :sLBGRP
  attr_accessor :cOP
  attr_accessor :g711_64K_A_LAW
  attr_accessor :g711_64K_U_LAW
  attr_accessor :g722
  attr_accessor :g723
  attr_accessor :g726
  attr_accessor :g728
  attr_accessor :g729
  attr_accessor :cODEC_MP4A
  attr_accessor :cODEC2833
  attr_accessor :cODEC2198
  attr_accessor :g726_40
  attr_accessor :g726_32
  attr_accessor :g726_24
  attr_accessor :g726_16
  attr_accessor :aMR
  attr_accessor :cLEARMODE
  attr_accessor :iLBC
  attr_accessor :sPEEX
  attr_accessor :g729EV
  attr_accessor :eVRC
  attr_accessor :eVRCB
  attr_accessor :h261
  attr_accessor :h263
  attr_accessor :cODEC_MP4V
  attr_accessor :h264
  attr_accessor :t38
  attr_accessor :t120
  attr_accessor :g711A_VBD
  attr_accessor :g711U_VBD
  attr_accessor :g726_VBD
  attr_accessor :g726_40_VBD
  attr_accessor :g726_32_VBD
  attr_accessor :g726_24_VBD
  attr_accessor :g726_16_VBD
  attr_accessor :wIND_BAND_AMR
  attr_accessor :gSM610
  attr_accessor :h263_2000
  attr_accessor :bROADVOICE_32
  attr_accessor :uNKNOWN_CODEC
  attr_accessor :aCODEC
  attr_accessor :vCODEC
  attr_accessor :pOLIDX
  attr_accessor :nCPI
  attr_accessor :iCPI
  attr_accessor :hCPI
  attr_accessor :eBOCL
  attr_accessor :eBOPL
  attr_accessor :eBOIT
  attr_accessor :rM
  attr_accessor :cPC
  attr_accessor :pCHG
  attr_accessor :tFPT
  attr_accessor :cHT
  attr_accessor :mCIDMODE
  attr_accessor :mCIDCMODE
  attr_accessor :mCIDAMODE
  attr_accessor :pREPAIDIDX
  attr_accessor :cRBTID
  attr_accessor :oDBBICTYPE
  attr_accessor :oDBBOCTYPE
  attr_accessor :oDBBARTYPE
  attr_accessor :oDBSS
  attr_accessor :oDBBRCFTYPE
  attr_accessor :oDBINFORM
  attr_accessor :oDBENTAIN
  attr_accessor :oDBPLMNBAR1
  attr_accessor :oDBPLMNBAR2
  attr_accessor :oDBPLMNBAR3
  attr_accessor :oDBPLMNBAR4
  attr_accessor :pNOTI
  attr_accessor :mAXPARACALL
  attr_accessor :aTSDTMBUSY
  attr_accessor :cALLCOUNT
  attr_accessor :cDNOTICALLER
  attr_accessor :iSCHGFLAG
  attr_accessor :cHC
  attr_accessor :cUSER
  attr_accessor :cGRP
  attr_accessor :cUSERGRP
  attr_accessor :sTCF
  attr_accessor :cHARSC
  attr_accessor :rEGUIDX
  attr_accessor :sOCBFUNC
  attr_accessor :sOCBPTONEIDX
  attr_accessor :aDMINCBA
  attr_accessor :aDCONTROL_DIVERSION
  attr_accessor :dPR
  attr_accessor :pRON
  attr_accessor :cPCRUS
  attr_accessor :cUSCAT
  attr_accessor :sPT100REL
  attr_accessor :aNALYSISMODE
  attr_accessor :gRPIDX
  attr_accessor :sCADDRIDX
  attr_accessor :cDNOCB
  attr_accessor :pBTSBR
  attr_accessor :kVALUE
  attr_accessor :iNPFIDX

  def initialize(iMPU = nil, tEMPLATEIDX = nil, dSPIDX = nil, lP = nil, cSC = nil, uNAME = nil, uTYPE = nil, vCCFLAG = nil, vTFLAG = nil, nSCFU = nil, nSCFUVM = nil, nSCFB = nil, nSCFBVM = nil, nSCFNR = nil, nSCFNRVM = nil, nSCFNL = nil, nSCFNLVM = nil, nSCD = nil, nSCDVM = nil, nSCFNRC = nil, nSCFNRCVM = nil, nSCLIP = nil, nSCIDCW = nil, nSRIO = nil, nSCNIP = nil, nSCLIR = nil, nSRIP = nil, nSCNIR = nil, nSRID = nil, nSNRID = nil, nSRND = nil, nSNRND = nil, nSCW = nil, nSCCW = nil, nSOIP = nil, nSACRM = nil, nSGOIR = nil, nSMOIR = nil, nSTIP = nil, nSTIR = nil, nSOTIR = nil, nSCLIPNOSCREENING = nil, nSCR = nil, nSWAKE_UP = nil, nSAOC_D = nil, nSAOC_E = nil, nSXEXH = nil, nSXEGJ = nil, nSCWCFNR = nil, nSIIFC = nil, nSDN_CALL_OUT_BAR = nil, nSCCBS = nil, nSCCNR = nil, nSCCBSR = nil, nSCCNRR = nil, nS3PTY = nil, nSNPTY = nil, nSDND = nil, nSMCR = nil, nSCBA = nil, nSTMP_LIN = nil, nSCODEC_CNTRL = nil, nSMWI = nil, nSDC = nil, nSHOLD = nil, nSECT = nil, nSCFTB = nil, nSDAN = nil, nSSTOP_SECRET = nil, nSMCID = nil, nSEBO = nil, nSICO = nil, nSOUTG = nil, nSINQYH = nil, nSUINFO = nil, nSDN_CALL_OUT_ALLOW = nil, nSSIC = nil, nSSOC = nil, nSSETCFNRTIME = nil, nSCFS = nil, nSCFSB = nil, nSFAX = nil, nSABRC = nil, nSACRTOVM = nil, nSPREPAID = nil, nSCRBT = nil, nSICB = nil, nSMRINGING = nil, nSCIS = nil, nSCBEG = nil, nSCOLP = nil, nSCOLR = nil, nSCOLPOVR = nil, nSBAOC = nil, nSBOIC = nil, nSBOICEXHC = nil, nSBAIC = nil, nSBICROM = nil, nSSPEED_DIAL = nil, nSSD1D = nil, nSSD2D = nil, nSGRNCALL = nil, nSCPARK = nil, nSGAA = nil, nSQSNS = nil, nSMSN = nil, nSHOTLINE = nil, nSAOC_S = nil, nSNIGHTSRV = nil, nSBACKNUM = nil, nSAUTOCON = nil, nSCAMPON = nil, nSCTD = nil, nSCLICKHOLD = nil, nSQUEUE = nil, nSSANSWER = nil, nSICENCF = nil, nSCFGO = nil, nSCECT = nil, nSCTGO = nil, nSCTIO = nil, nSSETBUSY = nil, nSOVERSTEP = nil, nSABSENT = nil, nSMONITOR = nil, nSFMONITOR = nil, nSDISCNT = nil, nSFDISCNT = nil, nSINSERT = nil, nSFINSERT = nil, nSASI = nil, nSPWCB = nil, nSRD = nil, nSLCPS = nil, nSNCPS = nil, nSICPS = nil, nSHCPS = nil, nSCBCLOCK = nil, nSMINIBAR = nil, nSMCN = nil, nSDSTR = nil, nSOPRREG = nil, nSONEKEY = nil, nSINBOUND = nil, nSOUTBOUND = nil, nSCALLERID = nil, nSCUN = nil, nSIPTVVC = nil, nSNP = nil, nSSEC = nil, nSSECSTA = nil, nSHRCN = nil, nSSB = nil, nSSCCA = nil, nSCCS = nil, nSOCCR = nil, nSIMSMS = nil, lCO = nil, lC = nil, lCT = nil, nTT = nil, iTT = nil, iCTX = nil, oCTX = nil, iNTT = nil, iITT = nil, iCLT = nil, iCDDD = nil, iCIDD = nil, iOLT = nil, cTLCO = nil, cTLCT = nil, cTLD = nil, cTINTNANP = nil, cTINTWORLD = nil, cTDA = nil, cTOSM = nil, cTOSP = nil, cTOSP1 = nil, cCO1 = nil, cCO2 = nil, cCO3 = nil, cCO4 = nil, cCO5 = nil, cCO6 = nil, cCO7 = nil, cCO8 = nil, cCO9 = nil, cCO10 = nil, cCO11 = nil, cCO12 = nil, cCO13 = nil, cCO14 = nil, cCO15 = nil, cCO16 = nil, cCO17 = nil, cCO18 = nil, cCO19 = nil, cCO20 = nil, cCO21 = nil, cCO22 = nil, cCO23 = nil, cCO24 = nil, cCO25 = nil, cCO26 = nil, cCO27 = nil, cCO28 = nil, cCO29 = nil, cCO30 = nil, cCO31 = nil, cCO32 = nil, hIGHENTCO = nil, oPERATOR = nil, sUPYSRV = nil, iDDCI = nil, nTCI = nil, lTCI = nil, rSC = nil, cIG = nil, oUTRST = nil, iNRST = nil, nOAT = nil, rINGCOUNT = nil, vMAIND = nil, vDMAIND = nil, tGRP = nil, tIDHLD = nil, tIDCW = nil, sCF = nil, lMTGRP = nil, fLBGRP = nil, sLBGRP = nil, cOP = nil, g711_64K_A_LAW = nil, g711_64K_U_LAW = nil, g722 = nil, g723 = nil, g726 = nil, g728 = nil, g729 = nil, cODEC_MP4A = nil, cODEC2833 = nil, cODEC2198 = nil, g726_40 = nil, g726_32 = nil, g726_24 = nil, g726_16 = nil, aMR = nil, cLEARMODE = nil, iLBC = nil, sPEEX = nil, g729EV = nil, eVRC = nil, eVRCB = nil, h261 = nil, h263 = nil, cODEC_MP4V = nil, h264 = nil, t38 = nil, t120 = nil, g711A_VBD = nil, g711U_VBD = nil, g726_VBD = nil, g726_40_VBD = nil, g726_32_VBD = nil, g726_24_VBD = nil, g726_16_VBD = nil, wIND_BAND_AMR = nil, gSM610 = nil, h263_2000 = nil, bROADVOICE_32 = nil, uNKNOWN_CODEC = nil, aCODEC = nil, vCODEC = nil, pOLIDX = nil, nCPI = nil, iCPI = nil, hCPI = nil, eBOCL = nil, eBOPL = nil, eBOIT = nil, rM = nil, cPC = nil, pCHG = nil, tFPT = nil, cHT = nil, mCIDMODE = nil, mCIDCMODE = nil, mCIDAMODE = nil, pREPAIDIDX = nil, cRBTID = nil, oDBBICTYPE = nil, oDBBOCTYPE = nil, oDBBARTYPE = nil, oDBSS = nil, oDBBRCFTYPE = nil, oDBINFORM = nil, oDBENTAIN = nil, oDBPLMNBAR1 = nil, oDBPLMNBAR2 = nil, oDBPLMNBAR3 = nil, oDBPLMNBAR4 = nil, pNOTI = nil, mAXPARACALL = nil, aTSDTMBUSY = nil, cALLCOUNT = nil, cDNOTICALLER = nil, iSCHGFLAG = nil, cHC = nil, cUSER = nil, cGRP = nil, cUSERGRP = nil, sTCF = nil, cHARSC = nil, rEGUIDX = nil, sOCBFUNC = nil, sOCBPTONEIDX = nil, aDMINCBA = nil, aDCONTROL_DIVERSION = nil, dPR = nil, pRON = nil, cPCRUS = nil, cUSCAT = nil, sPT100REL = nil, aNALYSISMODE = nil, gRPIDX = nil, sCADDRIDX = nil, cDNOCB = nil, pBTSBR = nil, kVALUE = nil, iNPFIDX = nil)
    @iMPU = iMPU
    @tEMPLATEIDX = tEMPLATEIDX
    @dSPIDX = dSPIDX
    @lP = lP
    @cSC = cSC
    @uNAME = uNAME
    @uTYPE = uTYPE
    @vCCFLAG = vCCFLAG
    @vTFLAG = vTFLAG
    @nSCFU = nSCFU
    @nSCFUVM = nSCFUVM
    @nSCFB = nSCFB
    @nSCFBVM = nSCFBVM
    @nSCFNR = nSCFNR
    @nSCFNRVM = nSCFNRVM
    @nSCFNL = nSCFNL
    @nSCFNLVM = nSCFNLVM
    @nSCD = nSCD
    @nSCDVM = nSCDVM
    @nSCFNRC = nSCFNRC
    @nSCFNRCVM = nSCFNRCVM
    @nSCLIP = nSCLIP
    @nSCIDCW = nSCIDCW
    @nSRIO = nSRIO
    @nSCNIP = nSCNIP
    @nSCLIR = nSCLIR
    @nSRIP = nSRIP
    @nSCNIR = nSCNIR
    @nSRID = nSRID
    @nSNRID = nSNRID
    @nSRND = nSRND
    @nSNRND = nSNRND
    @nSCW = nSCW
    @nSCCW = nSCCW
    @nSOIP = nSOIP
    @nSACRM = nSACRM
    @nSGOIR = nSGOIR
    @nSMOIR = nSMOIR
    @nSTIP = nSTIP
    @nSTIR = nSTIR
    @nSOTIR = nSOTIR
    @nSCLIPNOSCREENING = nSCLIPNOSCREENING
    @nSCR = nSCR
    @nSWAKE_UP = nSWAKE_UP
    @nSAOC_D = nSAOC_D
    @nSAOC_E = nSAOC_E
    @nSXEXH = nSXEXH
    @nSXEGJ = nSXEGJ
    @nSCWCFNR = nSCWCFNR
    @nSIIFC = nSIIFC
    @nSDN_CALL_OUT_BAR = nSDN_CALL_OUT_BAR
    @nSCCBS = nSCCBS
    @nSCCNR = nSCCNR
    @nSCCBSR = nSCCBSR
    @nSCCNRR = nSCCNRR
    @nS3PTY = nS3PTY
    @nSNPTY = nSNPTY
    @nSDND = nSDND
    @nSMCR = nSMCR
    @nSCBA = nSCBA
    @nSTMP_LIN = nSTMP_LIN
    @nSCODEC_CNTRL = nSCODEC_CNTRL
    @nSMWI = nSMWI
    @nSDC = nSDC
    @nSHOLD = nSHOLD
    @nSECT = nSECT
    @nSCFTB = nSCFTB
    @nSDAN = nSDAN
    @nSSTOP_SECRET = nSSTOP_SECRET
    @nSMCID = nSMCID
    @nSEBO = nSEBO
    @nSICO = nSICO
    @nSOUTG = nSOUTG
    @nSINQYH = nSINQYH
    @nSUINFO = nSUINFO
    @nSDN_CALL_OUT_ALLOW = nSDN_CALL_OUT_ALLOW
    @nSSIC = nSSIC
    @nSSOC = nSSOC
    @nSSETCFNRTIME = nSSETCFNRTIME
    @nSCFS = nSCFS
    @nSCFSB = nSCFSB
    @nSFAX = nSFAX
    @nSABRC = nSABRC
    @nSACRTOVM = nSACRTOVM
    @nSPREPAID = nSPREPAID
    @nSCRBT = nSCRBT
    @nSICB = nSICB
    @nSMRINGING = nSMRINGING
    @nSCIS = nSCIS
    @nSCBEG = nSCBEG
    @nSCOLP = nSCOLP
    @nSCOLR = nSCOLR
    @nSCOLPOVR = nSCOLPOVR
    @nSBAOC = nSBAOC
    @nSBOIC = nSBOIC
    @nSBOICEXHC = nSBOICEXHC
    @nSBAIC = nSBAIC
    @nSBICROM = nSBICROM
    @nSSPEED_DIAL = nSSPEED_DIAL
    @nSSD1D = nSSD1D
    @nSSD2D = nSSD2D
    @nSGRNCALL = nSGRNCALL
    @nSCPARK = nSCPARK
    @nSGAA = nSGAA
    @nSQSNS = nSQSNS
    @nSMSN = nSMSN
    @nSHOTLINE = nSHOTLINE
    @nSAOC_S = nSAOC_S
    @nSNIGHTSRV = nSNIGHTSRV
    @nSBACKNUM = nSBACKNUM
    @nSAUTOCON = nSAUTOCON
    @nSCAMPON = nSCAMPON
    @nSCTD = nSCTD
    @nSCLICKHOLD = nSCLICKHOLD
    @nSQUEUE = nSQUEUE
    @nSSANSWER = nSSANSWER
    @nSICENCF = nSICENCF
    @nSCFGO = nSCFGO
    @nSCECT = nSCECT
    @nSCTGO = nSCTGO
    @nSCTIO = nSCTIO
    @nSSETBUSY = nSSETBUSY
    @nSOVERSTEP = nSOVERSTEP
    @nSABSENT = nSABSENT
    @nSMONITOR = nSMONITOR
    @nSFMONITOR = nSFMONITOR
    @nSDISCNT = nSDISCNT
    @nSFDISCNT = nSFDISCNT
    @nSINSERT = nSINSERT
    @nSFINSERT = nSFINSERT
    @nSASI = nSASI
    @nSPWCB = nSPWCB
    @nSRD = nSRD
    @nSLCPS = nSLCPS
    @nSNCPS = nSNCPS
    @nSICPS = nSICPS
    @nSHCPS = nSHCPS
    @nSCBCLOCK = nSCBCLOCK
    @nSMINIBAR = nSMINIBAR
    @nSMCN = nSMCN
    @nSDSTR = nSDSTR
    @nSOPRREG = nSOPRREG
    @nSONEKEY = nSONEKEY
    @nSINBOUND = nSINBOUND
    @nSOUTBOUND = nSOUTBOUND
    @nSCALLERID = nSCALLERID
    @nSCUN = nSCUN
    @nSIPTVVC = nSIPTVVC
    @nSNP = nSNP
    @nSSEC = nSSEC
    @nSSECSTA = nSSECSTA
    @nSHRCN = nSHRCN
    @nSSB = nSSB
    @nSSCCA = nSSCCA
    @nSCCS = nSCCS
    @nSOCCR = nSOCCR
    @nSIMSMS = nSIMSMS
    @lCO = lCO
    @lC = lC
    @lCT = lCT
    @nTT = nTT
    @iTT = iTT
    @iCTX = iCTX
    @oCTX = oCTX
    @iNTT = iNTT
    @iITT = iITT
    @iCLT = iCLT
    @iCDDD = iCDDD
    @iCIDD = iCIDD
    @iOLT = iOLT
    @cTLCO = cTLCO
    @cTLCT = cTLCT
    @cTLD = cTLD
    @cTINTNANP = cTINTNANP
    @cTINTWORLD = cTINTWORLD
    @cTDA = cTDA
    @cTOSM = cTOSM
    @cTOSP = cTOSP
    @cTOSP1 = cTOSP1
    @cCO1 = cCO1
    @cCO2 = cCO2
    @cCO3 = cCO3
    @cCO4 = cCO4
    @cCO5 = cCO5
    @cCO6 = cCO6
    @cCO7 = cCO7
    @cCO8 = cCO8
    @cCO9 = cCO9
    @cCO10 = cCO10
    @cCO11 = cCO11
    @cCO12 = cCO12
    @cCO13 = cCO13
    @cCO14 = cCO14
    @cCO15 = cCO15
    @cCO16 = cCO16
    @cCO17 = cCO17
    @cCO18 = cCO18
    @cCO19 = cCO19
    @cCO20 = cCO20
    @cCO21 = cCO21
    @cCO22 = cCO22
    @cCO23 = cCO23
    @cCO24 = cCO24
    @cCO25 = cCO25
    @cCO26 = cCO26
    @cCO27 = cCO27
    @cCO28 = cCO28
    @cCO29 = cCO29
    @cCO30 = cCO30
    @cCO31 = cCO31
    @cCO32 = cCO32
    @hIGHENTCO = hIGHENTCO
    @oPERATOR = oPERATOR
    @sUPYSRV = sUPYSRV
    @iDDCI = iDDCI
    @nTCI = nTCI
    @lTCI = lTCI
    @rSC = rSC
    @cIG = cIG
    @oUTRST = oUTRST
    @iNRST = iNRST
    @nOAT = nOAT
    @rINGCOUNT = rINGCOUNT
    @vMAIND = vMAIND
    @vDMAIND = vDMAIND
    @tGRP = tGRP
    @tIDHLD = tIDHLD
    @tIDCW = tIDCW
    @sCF = sCF
    @lMTGRP = lMTGRP
    @fLBGRP = fLBGRP
    @sLBGRP = sLBGRP
    @cOP = cOP
    @g711_64K_A_LAW = g711_64K_A_LAW
    @g711_64K_U_LAW = g711_64K_U_LAW
    @g722 = g722
    @g723 = g723
    @g726 = g726
    @g728 = g728
    @g729 = g729
    @cODEC_MP4A = cODEC_MP4A
    @cODEC2833 = cODEC2833
    @cODEC2198 = cODEC2198
    @g726_40 = g726_40
    @g726_32 = g726_32
    @g726_24 = g726_24
    @g726_16 = g726_16
    @aMR = aMR
    @cLEARMODE = cLEARMODE
    @iLBC = iLBC
    @sPEEX = sPEEX
    @g729EV = g729EV
    @eVRC = eVRC
    @eVRCB = eVRCB
    @h261 = h261
    @h263 = h263
    @cODEC_MP4V = cODEC_MP4V
    @h264 = h264
    @t38 = t38
    @t120 = t120
    @g711A_VBD = g711A_VBD
    @g711U_VBD = g711U_VBD
    @g726_VBD = g726_VBD
    @g726_40_VBD = g726_40_VBD
    @g726_32_VBD = g726_32_VBD
    @g726_24_VBD = g726_24_VBD
    @g726_16_VBD = g726_16_VBD
    @wIND_BAND_AMR = wIND_BAND_AMR
    @gSM610 = gSM610
    @h263_2000 = h263_2000
    @bROADVOICE_32 = bROADVOICE_32
    @uNKNOWN_CODEC = uNKNOWN_CODEC
    @aCODEC = aCODEC
    @vCODEC = vCODEC
    @pOLIDX = pOLIDX
    @nCPI = nCPI
    @iCPI = iCPI
    @hCPI = hCPI
    @eBOCL = eBOCL
    @eBOPL = eBOPL
    @eBOIT = eBOIT
    @rM = rM
    @cPC = cPC
    @pCHG = pCHG
    @tFPT = tFPT
    @cHT = cHT
    @mCIDMODE = mCIDMODE
    @mCIDCMODE = mCIDCMODE
    @mCIDAMODE = mCIDAMODE
    @pREPAIDIDX = pREPAIDIDX
    @cRBTID = cRBTID
    @oDBBICTYPE = oDBBICTYPE
    @oDBBOCTYPE = oDBBOCTYPE
    @oDBBARTYPE = oDBBARTYPE
    @oDBSS = oDBSS
    @oDBBRCFTYPE = oDBBRCFTYPE
    @oDBINFORM = oDBINFORM
    @oDBENTAIN = oDBENTAIN
    @oDBPLMNBAR1 = oDBPLMNBAR1
    @oDBPLMNBAR2 = oDBPLMNBAR2
    @oDBPLMNBAR3 = oDBPLMNBAR3
    @oDBPLMNBAR4 = oDBPLMNBAR4
    @pNOTI = pNOTI
    @mAXPARACALL = mAXPARACALL
    @aTSDTMBUSY = aTSDTMBUSY
    @cALLCOUNT = cALLCOUNT
    @cDNOTICALLER = cDNOTICALLER
    @iSCHGFLAG = iSCHGFLAG
    @cHC = cHC
    @cUSER = cUSER
    @cGRP = cGRP
    @cUSERGRP = cUSERGRP
    @sTCF = sTCF
    @cHARSC = cHARSC
    @rEGUIDX = rEGUIDX
    @sOCBFUNC = sOCBFUNC
    @sOCBPTONEIDX = sOCBPTONEIDX
    @aDMINCBA = aDMINCBA
    @aDCONTROL_DIVERSION = aDCONTROL_DIVERSION
    @dPR = dPR
    @pRON = pRON
    @cPCRUS = cPCRUS
    @cUSCAT = cUSCAT
    @sPT100REL = sPT100REL
    @aNALYSISMODE = aNALYSISMODE
    @gRPIDX = gRPIDX
    @sCADDRIDX = sCADDRIDX
    @cDNOCB = cDNOCB
    @pBTSBR = pBTSBR
    @kVALUE = kVALUE
    @iNPFIDX = iNPFIDX
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_SBRResponse
#   result - ResultType
class ADD_SBRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_SBR
#   iMPU - (any)
#   tEMPLATEIDX - (any)
#   dSPIDX - (any)
#   lP - (any)
#   cSC - (any)
#   uNAME - (any)
#   uTYPE - (any)
#   vCCFLAG - (any)
#   vTFLAG - (any)
#   nSCFU - (any)
#   nSCFUVM - (any)
#   nSCFB - (any)
#   nSCFBVM - (any)
#   nSCFNR - (any)
#   nSCFNRVM - (any)
#   nSCFNL - (any)
#   nSCFNLVM - (any)
#   nSCD - (any)
#   nSCDVM - (any)
#   nSCFNRC - (any)
#   nSCFNRCVM - (any)
#   nSCLIP - (any)
#   nSCIDCW - (any)
#   nSRIO - (any)
#   nSCNIP - (any)
#   nSCLIR - (any)
#   nSRIP - (any)
#   nSCNIR - (any)
#   nSRID - (any)
#   nSNRID - (any)
#   nSRND - (any)
#   nSNRND - (any)
#   nSCW - (any)
#   nSCCW - (any)
#   nSOIP - (any)
#   nSACRM - (any)
#   nSGOIR - (any)
#   nSMOIR - (any)
#   nSTIP - (any)
#   nSTIR - (any)
#   nSOTIR - (any)
#   nSCLIPNOSCREENING - (any)
#   nSCR - (any)
#   nSWAKE_UP - (any)
#   nSAOC_D - (any)
#   nSAOC_E - (any)
#   nSXEXH - (any)
#   nSXEGJ - (any)
#   nSCWCFNR - (any)
#   nSIIFC - (any)
#   nSDN_CALL_OUT_BAR - (any)
#   nSCCBS - (any)
#   nSCCNR - (any)
#   nSCCBSR - (any)
#   nSCCNRR - (any)
#   nS3PTY - (any)
#   nSNPTY - (any)
#   nSDND - (any)
#   nSMCR - (any)
#   nSCBA - (any)
#   nSTMP_LIN - (any)
#   nSCODEC_CNTRL - (any)
#   nSMWI - (any)
#   nSDC - (any)
#   nSHOLD - (any)
#   nSECT - (any)
#   nSCFTB - (any)
#   nSDAN - (any)
#   nSSTOP_SECRET - (any)
#   nSMCID - (any)
#   nSEBO - (any)
#   nSICO - (any)
#   nSOUTG - (any)
#   nSINQYH - (any)
#   nSUINFO - (any)
#   nSDN_CALL_OUT_ALLOW - (any)
#   nSSIC - (any)
#   nSSOC - (any)
#   nSSETCFNRTIME - (any)
#   nSCFS - (any)
#   nSCFSB - (any)
#   nSFAX - (any)
#   nSABRC - (any)
#   nSACRTOVM - (any)
#   nSPREPAID - (any)
#   nSCRBT - (any)
#   nSICB - (any)
#   nSMRINGING - (any)
#   nSCIS - (any)
#   nSCBEG - (any)
#   nSCOLP - (any)
#   nSCOLR - (any)
#   nSCOLPOVR - (any)
#   nSBAOC - (any)
#   nSBOIC - (any)
#   nSBOICEXHC - (any)
#   nSBAIC - (any)
#   nSBICROM - (any)
#   nSSPEED_DIAL - (any)
#   nSSD1D - (any)
#   nSSD2D - (any)
#   nSGRNCALL - (any)
#   nSCPARK - (any)
#   nSGAA - (any)
#   nSQSNS - (any)
#   nSMSN - (any)
#   nSHOTLINE - (any)
#   nSAOC_S - (any)
#   nSNIGHTSRV - (any)
#   nSBACKNUM - (any)
#   nSAUTOCON - (any)
#   nSCAMPON - (any)
#   nSCTD - (any)
#   nSCLICKHOLD - (any)
#   nSQUEUE - (any)
#   nSSANSWER - (any)
#   nSICENCF - (any)
#   nSCFGO - (any)
#   nSCECT - (any)
#   nSCTGO - (any)
#   nSCTIO - (any)
#   nSSETBUSY - (any)
#   nSOVERSTEP - (any)
#   nSABSENT - (any)
#   nSMONITOR - (any)
#   nSFMONITOR - (any)
#   nSDISCNT - (any)
#   nSFDISCNT - (any)
#   nSINSERT - (any)
#   nSFINSERT - (any)
#   nSASI - (any)
#   nSPWCB - (any)
#   nSRD - (any)
#   nSLCPS - (any)
#   nSNCPS - (any)
#   nSICPS - (any)
#   nSHCPS - (any)
#   nSCBCLOCK - (any)
#   nSMINIBAR - (any)
#   nSMCN - (any)
#   nSDSTR - (any)
#   nSOPRREG - (any)
#   nSONEKEY - (any)
#   nSINBOUND - (any)
#   nSOUTBOUND - (any)
#   nSCALLERID - (any)
#   nSCUN - (any)
#   nSIPTVVC - (any)
#   nSNP - (any)
#   nSSEC - (any)
#   nSSECSTA - (any)
#   nSHRCN - (any)
#   nSSB - (any)
#   nSSCCA - (any)
#   nSCCS - (any)
#   nSOCCR - (any)
#   nSIMSMS - (any)
#   lCO - (any)
#   lC - (any)
#   lCT - (any)
#   nTT - (any)
#   iTT - (any)
#   iCTX - (any)
#   oCTX - (any)
#   iNTT - (any)
#   iITT - (any)
#   iCLT - (any)
#   iCDDD - (any)
#   iCIDD - (any)
#   iOLT - (any)
#   cTLCO - (any)
#   cTLCT - (any)
#   cTLD - (any)
#   cTINTNANP - (any)
#   cTINTWORLD - (any)
#   cTDA - (any)
#   cTOSM - (any)
#   cTOSP - (any)
#   cTOSP1 - (any)
#   cCO1 - (any)
#   cCO2 - (any)
#   cCO3 - (any)
#   cCO4 - (any)
#   cCO5 - (any)
#   cCO6 - (any)
#   cCO7 - (any)
#   cCO8 - (any)
#   cCO9 - (any)
#   cCO10 - (any)
#   cCO11 - (any)
#   cCO12 - (any)
#   cCO13 - (any)
#   cCO14 - (any)
#   cCO15 - (any)
#   cCO16 - (any)
#   cCO17 - (any)
#   cCO18 - (any)
#   cCO19 - (any)
#   cCO20 - (any)
#   cCO21 - (any)
#   cCO22 - (any)
#   cCO23 - (any)
#   cCO24 - (any)
#   cCO25 - (any)
#   cCO26 - (any)
#   cCO27 - (any)
#   cCO28 - (any)
#   cCO29 - (any)
#   cCO30 - (any)
#   cCO31 - (any)
#   cCO32 - (any)
#   hIGHENTCO - (any)
#   oPERATOR - (any)
#   sUPYSRV - (any)
#   iDDCI - (any)
#   nTCI - (any)
#   lTCI - (any)
#   rSC - (any)
#   cIG - (any)
#   oUTRST - (any)
#   iNRST - (any)
#   nOAT - (any)
#   rINGCOUNT - (any)
#   vMAIND - (any)
#   vDMAIND - (any)
#   tGRP - (any)
#   tIDHLD - (any)
#   tIDCW - (any)
#   sCF - (any)
#   lMTGRP - (any)
#   fLBGRP - (any)
#   sLBGRP - (any)
#   cOP - (any)
#   g711_64K_A_LAW - (any)
#   g711_64K_U_LAW - (any)
#   g722 - (any)
#   g723 - (any)
#   g726 - (any)
#   g728 - (any)
#   g729 - (any)
#   cODEC_MP4A - (any)
#   cODEC2833 - (any)
#   cODEC2198 - (any)
#   g726_40 - (any)
#   g726_32 - (any)
#   g726_24 - (any)
#   g726_16 - (any)
#   aMR - (any)
#   cLEARMODE - (any)
#   iLBC - (any)
#   sPEEX - (any)
#   g729EV - (any)
#   eVRC - (any)
#   eVRCB - (any)
#   h261 - (any)
#   h263 - (any)
#   cODEC_MP4V - (any)
#   h264 - (any)
#   t38 - (any)
#   t120 - (any)
#   g711A_VBD - (any)
#   g711U_VBD - (any)
#   g726_VBD - (any)
#   g726_40_VBD - (any)
#   g726_32_VBD - (any)
#   g726_24_VBD - (any)
#   g726_16_VBD - (any)
#   wIND_BAND_AMR - (any)
#   gSM610 - (any)
#   h263_2000 - (any)
#   bROADVOICE_32 - (any)
#   uNKNOWN_CODEC - (any)
#   aCODEC - (any)
#   vCODEC - (any)
#   pOLIDX - (any)
#   nCPI - (any)
#   iCPI - (any)
#   hCPI - (any)
#   eBOCL - (any)
#   eBOPL - (any)
#   eBOIT - (any)
#   rM - (any)
#   cPC - (any)
#   pCHG - (any)
#   tFPT - (any)
#   cHT - (any)
#   mCIDMODE - (any)
#   mCIDCMODE - (any)
#   mCIDAMODE - (any)
#   pREPAIDIDX - (any)
#   cRBTID - (any)
#   oDBBICTYPE - (any)
#   oDBBOCTYPE - (any)
#   oDBBARTYPE - (any)
#   oDBSS - (any)
#   oDBBRCFTYPE - (any)
#   oDBINFORM - (any)
#   oDBENTAIN - (any)
#   oDBPLMNBAR1 - (any)
#   oDBPLMNBAR2 - (any)
#   oDBPLMNBAR3 - (any)
#   oDBPLMNBAR4 - (any)
#   pNOTI - (any)
#   mAXPARACALL - (any)
#   aTSDTMBUSY - (any)
#   cALLCOUNT - (any)
#   cDNOTICALLER - (any)
#   iSCHGFLAG - (any)
#   cHC - (any)
#   cUSER - (any)
#   cGRP - (any)
#   cUSERGRP - (any)
#   sTCF - (any)
#   cHARSC - (any)
#   rEGUIDX - (any)
#   sOCBFUNC - (any)
#   sOCBPTONEIDX - (any)
#   aDMINCBA - (any)
#   aDCONTROL_DIVERSION - (any)
#   dPR - (any)
#   pRON - (any)
#   cPCRUS - (any)
#   cUSCAT - (any)
#   sPT100REL - (any)
#   aNALYSISMODE - (any)
#   gRPIDX - (any)
#   sCADDRIDX - (any)
#   cDNOCB - (any)
#   pBTSBR - MOD_SBR::PBTSBR
#   kVALUE - (any)
#   iNPFIDX - (any)
class MOD_SBR

  # inner class for member: PBTSBR
  # {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}PBTSBR
  #   pBXID - (any)
  #   iSSHARESRV - (any)
  class PBTSBR
    attr_accessor :pBXID
    attr_accessor :iSSHARESRV

    def initialize(pBXID = nil, iSSHARESRV = nil)
      @pBXID = pBXID
      @iSSHARESRV = iSSHARESRV
    end
  end

  attr_accessor :iMPU
  attr_accessor :tEMPLATEIDX
  attr_accessor :dSPIDX
  attr_accessor :lP
  attr_accessor :cSC
  attr_accessor :uNAME
  attr_accessor :uTYPE
  attr_accessor :vCCFLAG
  attr_accessor :vTFLAG
  attr_accessor :nSCFU
  attr_accessor :nSCFUVM
  attr_accessor :nSCFB
  attr_accessor :nSCFBVM
  attr_accessor :nSCFNR
  attr_accessor :nSCFNRVM
  attr_accessor :nSCFNL
  attr_accessor :nSCFNLVM
  attr_accessor :nSCD
  attr_accessor :nSCDVM
  attr_accessor :nSCFNRC
  attr_accessor :nSCFNRCVM
  attr_accessor :nSCLIP
  attr_accessor :nSCIDCW
  attr_accessor :nSRIO
  attr_accessor :nSCNIP
  attr_accessor :nSCLIR
  attr_accessor :nSRIP
  attr_accessor :nSCNIR
  attr_accessor :nSRID
  attr_accessor :nSNRID
  attr_accessor :nSRND
  attr_accessor :nSNRND
  attr_accessor :nSCW
  attr_accessor :nSCCW
  attr_accessor :nSOIP
  attr_accessor :nSACRM
  attr_accessor :nSGOIR
  attr_accessor :nSMOIR
  attr_accessor :nSTIP
  attr_accessor :nSTIR
  attr_accessor :nSOTIR
  attr_accessor :nSCLIPNOSCREENING
  attr_accessor :nSCR
  attr_accessor :nSWAKE_UP
  attr_accessor :nSAOC_D
  attr_accessor :nSAOC_E
  attr_accessor :nSXEXH
  attr_accessor :nSXEGJ
  attr_accessor :nSCWCFNR
  attr_accessor :nSIIFC
  attr_accessor :nSDN_CALL_OUT_BAR
  attr_accessor :nSCCBS
  attr_accessor :nSCCNR
  attr_accessor :nSCCBSR
  attr_accessor :nSCCNRR
  attr_accessor :nS3PTY
  attr_accessor :nSNPTY
  attr_accessor :nSDND
  attr_accessor :nSMCR
  attr_accessor :nSCBA
  attr_accessor :nSTMP_LIN
  attr_accessor :nSCODEC_CNTRL
  attr_accessor :nSMWI
  attr_accessor :nSDC
  attr_accessor :nSHOLD
  attr_accessor :nSECT
  attr_accessor :nSCFTB
  attr_accessor :nSDAN
  attr_accessor :nSSTOP_SECRET
  attr_accessor :nSMCID
  attr_accessor :nSEBO
  attr_accessor :nSICO
  attr_accessor :nSOUTG
  attr_accessor :nSINQYH
  attr_accessor :nSUINFO
  attr_accessor :nSDN_CALL_OUT_ALLOW
  attr_accessor :nSSIC
  attr_accessor :nSSOC
  attr_accessor :nSSETCFNRTIME
  attr_accessor :nSCFS
  attr_accessor :nSCFSB
  attr_accessor :nSFAX
  attr_accessor :nSABRC
  attr_accessor :nSACRTOVM
  attr_accessor :nSPREPAID
  attr_accessor :nSCRBT
  attr_accessor :nSICB
  attr_accessor :nSMRINGING
  attr_accessor :nSCIS
  attr_accessor :nSCBEG
  attr_accessor :nSCOLP
  attr_accessor :nSCOLR
  attr_accessor :nSCOLPOVR
  attr_accessor :nSBAOC
  attr_accessor :nSBOIC
  attr_accessor :nSBOICEXHC
  attr_accessor :nSBAIC
  attr_accessor :nSBICROM
  attr_accessor :nSSPEED_DIAL
  attr_accessor :nSSD1D
  attr_accessor :nSSD2D
  attr_accessor :nSGRNCALL
  attr_accessor :nSCPARK
  attr_accessor :nSGAA
  attr_accessor :nSQSNS
  attr_accessor :nSMSN
  attr_accessor :nSHOTLINE
  attr_accessor :nSAOC_S
  attr_accessor :nSNIGHTSRV
  attr_accessor :nSBACKNUM
  attr_accessor :nSAUTOCON
  attr_accessor :nSCAMPON
  attr_accessor :nSCTD
  attr_accessor :nSCLICKHOLD
  attr_accessor :nSQUEUE
  attr_accessor :nSSANSWER
  attr_accessor :nSICENCF
  attr_accessor :nSCFGO
  attr_accessor :nSCECT
  attr_accessor :nSCTGO
  attr_accessor :nSCTIO
  attr_accessor :nSSETBUSY
  attr_accessor :nSOVERSTEP
  attr_accessor :nSABSENT
  attr_accessor :nSMONITOR
  attr_accessor :nSFMONITOR
  attr_accessor :nSDISCNT
  attr_accessor :nSFDISCNT
  attr_accessor :nSINSERT
  attr_accessor :nSFINSERT
  attr_accessor :nSASI
  attr_accessor :nSPWCB
  attr_accessor :nSRD
  attr_accessor :nSLCPS
  attr_accessor :nSNCPS
  attr_accessor :nSICPS
  attr_accessor :nSHCPS
  attr_accessor :nSCBCLOCK
  attr_accessor :nSMINIBAR
  attr_accessor :nSMCN
  attr_accessor :nSDSTR
  attr_accessor :nSOPRREG
  attr_accessor :nSONEKEY
  attr_accessor :nSINBOUND
  attr_accessor :nSOUTBOUND
  attr_accessor :nSCALLERID
  attr_accessor :nSCUN
  attr_accessor :nSIPTVVC
  attr_accessor :nSNP
  attr_accessor :nSSEC
  attr_accessor :nSSECSTA
  attr_accessor :nSHRCN
  attr_accessor :nSSB
  attr_accessor :nSSCCA
  attr_accessor :nSCCS
  attr_accessor :nSOCCR
  attr_accessor :nSIMSMS
  attr_accessor :lCO
  attr_accessor :lC
  attr_accessor :lCT
  attr_accessor :nTT
  attr_accessor :iTT
  attr_accessor :iCTX
  attr_accessor :oCTX
  attr_accessor :iNTT
  attr_accessor :iITT
  attr_accessor :iCLT
  attr_accessor :iCDDD
  attr_accessor :iCIDD
  attr_accessor :iOLT
  attr_accessor :cTLCO
  attr_accessor :cTLCT
  attr_accessor :cTLD
  attr_accessor :cTINTNANP
  attr_accessor :cTINTWORLD
  attr_accessor :cTDA
  attr_accessor :cTOSM
  attr_accessor :cTOSP
  attr_accessor :cTOSP1
  attr_accessor :cCO1
  attr_accessor :cCO2
  attr_accessor :cCO3
  attr_accessor :cCO4
  attr_accessor :cCO5
  attr_accessor :cCO6
  attr_accessor :cCO7
  attr_accessor :cCO8
  attr_accessor :cCO9
  attr_accessor :cCO10
  attr_accessor :cCO11
  attr_accessor :cCO12
  attr_accessor :cCO13
  attr_accessor :cCO14
  attr_accessor :cCO15
  attr_accessor :cCO16
  attr_accessor :cCO17
  attr_accessor :cCO18
  attr_accessor :cCO19
  attr_accessor :cCO20
  attr_accessor :cCO21
  attr_accessor :cCO22
  attr_accessor :cCO23
  attr_accessor :cCO24
  attr_accessor :cCO25
  attr_accessor :cCO26
  attr_accessor :cCO27
  attr_accessor :cCO28
  attr_accessor :cCO29
  attr_accessor :cCO30
  attr_accessor :cCO31
  attr_accessor :cCO32
  attr_accessor :hIGHENTCO
  attr_accessor :oPERATOR
  attr_accessor :sUPYSRV
  attr_accessor :iDDCI
  attr_accessor :nTCI
  attr_accessor :lTCI
  attr_accessor :rSC
  attr_accessor :cIG
  attr_accessor :oUTRST
  attr_accessor :iNRST
  attr_accessor :nOAT
  attr_accessor :rINGCOUNT
  attr_accessor :vMAIND
  attr_accessor :vDMAIND
  attr_accessor :tGRP
  attr_accessor :tIDHLD
  attr_accessor :tIDCW
  attr_accessor :sCF
  attr_accessor :lMTGRP
  attr_accessor :fLBGRP
  attr_accessor :sLBGRP
  attr_accessor :cOP
  attr_accessor :g711_64K_A_LAW
  attr_accessor :g711_64K_U_LAW
  attr_accessor :g722
  attr_accessor :g723
  attr_accessor :g726
  attr_accessor :g728
  attr_accessor :g729
  attr_accessor :cODEC_MP4A
  attr_accessor :cODEC2833
  attr_accessor :cODEC2198
  attr_accessor :g726_40
  attr_accessor :g726_32
  attr_accessor :g726_24
  attr_accessor :g726_16
  attr_accessor :aMR
  attr_accessor :cLEARMODE
  attr_accessor :iLBC
  attr_accessor :sPEEX
  attr_accessor :g729EV
  attr_accessor :eVRC
  attr_accessor :eVRCB
  attr_accessor :h261
  attr_accessor :h263
  attr_accessor :cODEC_MP4V
  attr_accessor :h264
  attr_accessor :t38
  attr_accessor :t120
  attr_accessor :g711A_VBD
  attr_accessor :g711U_VBD
  attr_accessor :g726_VBD
  attr_accessor :g726_40_VBD
  attr_accessor :g726_32_VBD
  attr_accessor :g726_24_VBD
  attr_accessor :g726_16_VBD
  attr_accessor :wIND_BAND_AMR
  attr_accessor :gSM610
  attr_accessor :h263_2000
  attr_accessor :bROADVOICE_32
  attr_accessor :uNKNOWN_CODEC
  attr_accessor :aCODEC
  attr_accessor :vCODEC
  attr_accessor :pOLIDX
  attr_accessor :nCPI
  attr_accessor :iCPI
  attr_accessor :hCPI
  attr_accessor :eBOCL
  attr_accessor :eBOPL
  attr_accessor :eBOIT
  attr_accessor :rM
  attr_accessor :cPC
  attr_accessor :pCHG
  attr_accessor :tFPT
  attr_accessor :cHT
  attr_accessor :mCIDMODE
  attr_accessor :mCIDCMODE
  attr_accessor :mCIDAMODE
  attr_accessor :pREPAIDIDX
  attr_accessor :cRBTID
  attr_accessor :oDBBICTYPE
  attr_accessor :oDBBOCTYPE
  attr_accessor :oDBBARTYPE
  attr_accessor :oDBSS
  attr_accessor :oDBBRCFTYPE
  attr_accessor :oDBINFORM
  attr_accessor :oDBENTAIN
  attr_accessor :oDBPLMNBAR1
  attr_accessor :oDBPLMNBAR2
  attr_accessor :oDBPLMNBAR3
  attr_accessor :oDBPLMNBAR4
  attr_accessor :pNOTI
  attr_accessor :mAXPARACALL
  attr_accessor :aTSDTMBUSY
  attr_accessor :cALLCOUNT
  attr_accessor :cDNOTICALLER
  attr_accessor :iSCHGFLAG
  attr_accessor :cHC
  attr_accessor :cUSER
  attr_accessor :cGRP
  attr_accessor :cUSERGRP
  attr_accessor :sTCF
  attr_accessor :cHARSC
  attr_accessor :rEGUIDX
  attr_accessor :sOCBFUNC
  attr_accessor :sOCBPTONEIDX
  attr_accessor :aDMINCBA
  attr_accessor :aDCONTROL_DIVERSION
  attr_accessor :dPR
  attr_accessor :pRON
  attr_accessor :cPCRUS
  attr_accessor :cUSCAT
  attr_accessor :sPT100REL
  attr_accessor :aNALYSISMODE
  attr_accessor :gRPIDX
  attr_accessor :sCADDRIDX
  attr_accessor :cDNOCB
  attr_accessor :pBTSBR
  attr_accessor :kVALUE
  attr_accessor :iNPFIDX

  def initialize(iMPU = nil, tEMPLATEIDX = nil, dSPIDX = nil, lP = nil, cSC = nil, uNAME = nil, uTYPE = nil, vCCFLAG = nil, vTFLAG = nil, nSCFU = nil, nSCFUVM = nil, nSCFB = nil, nSCFBVM = nil, nSCFNR = nil, nSCFNRVM = nil, nSCFNL = nil, nSCFNLVM = nil, nSCD = nil, nSCDVM = nil, nSCFNRC = nil, nSCFNRCVM = nil, nSCLIP = nil, nSCIDCW = nil, nSRIO = nil, nSCNIP = nil, nSCLIR = nil, nSRIP = nil, nSCNIR = nil, nSRID = nil, nSNRID = nil, nSRND = nil, nSNRND = nil, nSCW = nil, nSCCW = nil, nSOIP = nil, nSACRM = nil, nSGOIR = nil, nSMOIR = nil, nSTIP = nil, nSTIR = nil, nSOTIR = nil, nSCLIPNOSCREENING = nil, nSCR = nil, nSWAKE_UP = nil, nSAOC_D = nil, nSAOC_E = nil, nSXEXH = nil, nSXEGJ = nil, nSCWCFNR = nil, nSIIFC = nil, nSDN_CALL_OUT_BAR = nil, nSCCBS = nil, nSCCNR = nil, nSCCBSR = nil, nSCCNRR = nil, nS3PTY = nil, nSNPTY = nil, nSDND = nil, nSMCR = nil, nSCBA = nil, nSTMP_LIN = nil, nSCODEC_CNTRL = nil, nSMWI = nil, nSDC = nil, nSHOLD = nil, nSECT = nil, nSCFTB = nil, nSDAN = nil, nSSTOP_SECRET = nil, nSMCID = nil, nSEBO = nil, nSICO = nil, nSOUTG = nil, nSINQYH = nil, nSUINFO = nil, nSDN_CALL_OUT_ALLOW = nil, nSSIC = nil, nSSOC = nil, nSSETCFNRTIME = nil, nSCFS = nil, nSCFSB = nil, nSFAX = nil, nSABRC = nil, nSACRTOVM = nil, nSPREPAID = nil, nSCRBT = nil, nSICB = nil, nSMRINGING = nil, nSCIS = nil, nSCBEG = nil, nSCOLP = nil, nSCOLR = nil, nSCOLPOVR = nil, nSBAOC = nil, nSBOIC = nil, nSBOICEXHC = nil, nSBAIC = nil, nSBICROM = nil, nSSPEED_DIAL = nil, nSSD1D = nil, nSSD2D = nil, nSGRNCALL = nil, nSCPARK = nil, nSGAA = nil, nSQSNS = nil, nSMSN = nil, nSHOTLINE = nil, nSAOC_S = nil, nSNIGHTSRV = nil, nSBACKNUM = nil, nSAUTOCON = nil, nSCAMPON = nil, nSCTD = nil, nSCLICKHOLD = nil, nSQUEUE = nil, nSSANSWER = nil, nSICENCF = nil, nSCFGO = nil, nSCECT = nil, nSCTGO = nil, nSCTIO = nil, nSSETBUSY = nil, nSOVERSTEP = nil, nSABSENT = nil, nSMONITOR = nil, nSFMONITOR = nil, nSDISCNT = nil, nSFDISCNT = nil, nSINSERT = nil, nSFINSERT = nil, nSASI = nil, nSPWCB = nil, nSRD = nil, nSLCPS = nil, nSNCPS = nil, nSICPS = nil, nSHCPS = nil, nSCBCLOCK = nil, nSMINIBAR = nil, nSMCN = nil, nSDSTR = nil, nSOPRREG = nil, nSONEKEY = nil, nSINBOUND = nil, nSOUTBOUND = nil, nSCALLERID = nil, nSCUN = nil, nSIPTVVC = nil, nSNP = nil, nSSEC = nil, nSSECSTA = nil, nSHRCN = nil, nSSB = nil, nSSCCA = nil, nSCCS = nil, nSOCCR = nil, nSIMSMS = nil, lCO = nil, lC = nil, lCT = nil, nTT = nil, iTT = nil, iCTX = nil, oCTX = nil, iNTT = nil, iITT = nil, iCLT = nil, iCDDD = nil, iCIDD = nil, iOLT = nil, cTLCO = nil, cTLCT = nil, cTLD = nil, cTINTNANP = nil, cTINTWORLD = nil, cTDA = nil, cTOSM = nil, cTOSP = nil, cTOSP1 = nil, cCO1 = nil, cCO2 = nil, cCO3 = nil, cCO4 = nil, cCO5 = nil, cCO6 = nil, cCO7 = nil, cCO8 = nil, cCO9 = nil, cCO10 = nil, cCO11 = nil, cCO12 = nil, cCO13 = nil, cCO14 = nil, cCO15 = nil, cCO16 = nil, cCO17 = nil, cCO18 = nil, cCO19 = nil, cCO20 = nil, cCO21 = nil, cCO22 = nil, cCO23 = nil, cCO24 = nil, cCO25 = nil, cCO26 = nil, cCO27 = nil, cCO28 = nil, cCO29 = nil, cCO30 = nil, cCO31 = nil, cCO32 = nil, hIGHENTCO = nil, oPERATOR = nil, sUPYSRV = nil, iDDCI = nil, nTCI = nil, lTCI = nil, rSC = nil, cIG = nil, oUTRST = nil, iNRST = nil, nOAT = nil, rINGCOUNT = nil, vMAIND = nil, vDMAIND = nil, tGRP = nil, tIDHLD = nil, tIDCW = nil, sCF = nil, lMTGRP = nil, fLBGRP = nil, sLBGRP = nil, cOP = nil, g711_64K_A_LAW = nil, g711_64K_U_LAW = nil, g722 = nil, g723 = nil, g726 = nil, g728 = nil, g729 = nil, cODEC_MP4A = nil, cODEC2833 = nil, cODEC2198 = nil, g726_40 = nil, g726_32 = nil, g726_24 = nil, g726_16 = nil, aMR = nil, cLEARMODE = nil, iLBC = nil, sPEEX = nil, g729EV = nil, eVRC = nil, eVRCB = nil, h261 = nil, h263 = nil, cODEC_MP4V = nil, h264 = nil, t38 = nil, t120 = nil, g711A_VBD = nil, g711U_VBD = nil, g726_VBD = nil, g726_40_VBD = nil, g726_32_VBD = nil, g726_24_VBD = nil, g726_16_VBD = nil, wIND_BAND_AMR = nil, gSM610 = nil, h263_2000 = nil, bROADVOICE_32 = nil, uNKNOWN_CODEC = nil, aCODEC = nil, vCODEC = nil, pOLIDX = nil, nCPI = nil, iCPI = nil, hCPI = nil, eBOCL = nil, eBOPL = nil, eBOIT = nil, rM = nil, cPC = nil, pCHG = nil, tFPT = nil, cHT = nil, mCIDMODE = nil, mCIDCMODE = nil, mCIDAMODE = nil, pREPAIDIDX = nil, cRBTID = nil, oDBBICTYPE = nil, oDBBOCTYPE = nil, oDBBARTYPE = nil, oDBSS = nil, oDBBRCFTYPE = nil, oDBINFORM = nil, oDBENTAIN = nil, oDBPLMNBAR1 = nil, oDBPLMNBAR2 = nil, oDBPLMNBAR3 = nil, oDBPLMNBAR4 = nil, pNOTI = nil, mAXPARACALL = nil, aTSDTMBUSY = nil, cALLCOUNT = nil, cDNOTICALLER = nil, iSCHGFLAG = nil, cHC = nil, cUSER = nil, cGRP = nil, cUSERGRP = nil, sTCF = nil, cHARSC = nil, rEGUIDX = nil, sOCBFUNC = nil, sOCBPTONEIDX = nil, aDMINCBA = nil, aDCONTROL_DIVERSION = nil, dPR = nil, pRON = nil, cPCRUS = nil, cUSCAT = nil, sPT100REL = nil, aNALYSISMODE = nil, gRPIDX = nil, sCADDRIDX = nil, cDNOCB = nil, pBTSBR = nil, kVALUE = nil, iNPFIDX = nil)
    @iMPU = iMPU
    @tEMPLATEIDX = tEMPLATEIDX
    @dSPIDX = dSPIDX
    @lP = lP
    @cSC = cSC
    @uNAME = uNAME
    @uTYPE = uTYPE
    @vCCFLAG = vCCFLAG
    @vTFLAG = vTFLAG
    @nSCFU = nSCFU
    @nSCFUVM = nSCFUVM
    @nSCFB = nSCFB
    @nSCFBVM = nSCFBVM
    @nSCFNR = nSCFNR
    @nSCFNRVM = nSCFNRVM
    @nSCFNL = nSCFNL
    @nSCFNLVM = nSCFNLVM
    @nSCD = nSCD
    @nSCDVM = nSCDVM
    @nSCFNRC = nSCFNRC
    @nSCFNRCVM = nSCFNRCVM
    @nSCLIP = nSCLIP
    @nSCIDCW = nSCIDCW
    @nSRIO = nSRIO
    @nSCNIP = nSCNIP
    @nSCLIR = nSCLIR
    @nSRIP = nSRIP
    @nSCNIR = nSCNIR
    @nSRID = nSRID
    @nSNRID = nSNRID
    @nSRND = nSRND
    @nSNRND = nSNRND
    @nSCW = nSCW
    @nSCCW = nSCCW
    @nSOIP = nSOIP
    @nSACRM = nSACRM
    @nSGOIR = nSGOIR
    @nSMOIR = nSMOIR
    @nSTIP = nSTIP
    @nSTIR = nSTIR
    @nSOTIR = nSOTIR
    @nSCLIPNOSCREENING = nSCLIPNOSCREENING
    @nSCR = nSCR
    @nSWAKE_UP = nSWAKE_UP
    @nSAOC_D = nSAOC_D
    @nSAOC_E = nSAOC_E
    @nSXEXH = nSXEXH
    @nSXEGJ = nSXEGJ
    @nSCWCFNR = nSCWCFNR
    @nSIIFC = nSIIFC
    @nSDN_CALL_OUT_BAR = nSDN_CALL_OUT_BAR
    @nSCCBS = nSCCBS
    @nSCCNR = nSCCNR
    @nSCCBSR = nSCCBSR
    @nSCCNRR = nSCCNRR
    @nS3PTY = nS3PTY
    @nSNPTY = nSNPTY
    @nSDND = nSDND
    @nSMCR = nSMCR
    @nSCBA = nSCBA
    @nSTMP_LIN = nSTMP_LIN
    @nSCODEC_CNTRL = nSCODEC_CNTRL
    @nSMWI = nSMWI
    @nSDC = nSDC
    @nSHOLD = nSHOLD
    @nSECT = nSECT
    @nSCFTB = nSCFTB
    @nSDAN = nSDAN
    @nSSTOP_SECRET = nSSTOP_SECRET
    @nSMCID = nSMCID
    @nSEBO = nSEBO
    @nSICO = nSICO
    @nSOUTG = nSOUTG
    @nSINQYH = nSINQYH
    @nSUINFO = nSUINFO
    @nSDN_CALL_OUT_ALLOW = nSDN_CALL_OUT_ALLOW
    @nSSIC = nSSIC
    @nSSOC = nSSOC
    @nSSETCFNRTIME = nSSETCFNRTIME
    @nSCFS = nSCFS
    @nSCFSB = nSCFSB
    @nSFAX = nSFAX
    @nSABRC = nSABRC
    @nSACRTOVM = nSACRTOVM
    @nSPREPAID = nSPREPAID
    @nSCRBT = nSCRBT
    @nSICB = nSICB
    @nSMRINGING = nSMRINGING
    @nSCIS = nSCIS
    @nSCBEG = nSCBEG
    @nSCOLP = nSCOLP
    @nSCOLR = nSCOLR
    @nSCOLPOVR = nSCOLPOVR
    @nSBAOC = nSBAOC
    @nSBOIC = nSBOIC
    @nSBOICEXHC = nSBOICEXHC
    @nSBAIC = nSBAIC
    @nSBICROM = nSBICROM
    @nSSPEED_DIAL = nSSPEED_DIAL
    @nSSD1D = nSSD1D
    @nSSD2D = nSSD2D
    @nSGRNCALL = nSGRNCALL
    @nSCPARK = nSCPARK
    @nSGAA = nSGAA
    @nSQSNS = nSQSNS
    @nSMSN = nSMSN
    @nSHOTLINE = nSHOTLINE
    @nSAOC_S = nSAOC_S
    @nSNIGHTSRV = nSNIGHTSRV
    @nSBACKNUM = nSBACKNUM
    @nSAUTOCON = nSAUTOCON
    @nSCAMPON = nSCAMPON
    @nSCTD = nSCTD
    @nSCLICKHOLD = nSCLICKHOLD
    @nSQUEUE = nSQUEUE
    @nSSANSWER = nSSANSWER
    @nSICENCF = nSICENCF
    @nSCFGO = nSCFGO
    @nSCECT = nSCECT
    @nSCTGO = nSCTGO
    @nSCTIO = nSCTIO
    @nSSETBUSY = nSSETBUSY
    @nSOVERSTEP = nSOVERSTEP
    @nSABSENT = nSABSENT
    @nSMONITOR = nSMONITOR
    @nSFMONITOR = nSFMONITOR
    @nSDISCNT = nSDISCNT
    @nSFDISCNT = nSFDISCNT
    @nSINSERT = nSINSERT
    @nSFINSERT = nSFINSERT
    @nSASI = nSASI
    @nSPWCB = nSPWCB
    @nSRD = nSRD
    @nSLCPS = nSLCPS
    @nSNCPS = nSNCPS
    @nSICPS = nSICPS
    @nSHCPS = nSHCPS
    @nSCBCLOCK = nSCBCLOCK
    @nSMINIBAR = nSMINIBAR
    @nSMCN = nSMCN
    @nSDSTR = nSDSTR
    @nSOPRREG = nSOPRREG
    @nSONEKEY = nSONEKEY
    @nSINBOUND = nSINBOUND
    @nSOUTBOUND = nSOUTBOUND
    @nSCALLERID = nSCALLERID
    @nSCUN = nSCUN
    @nSIPTVVC = nSIPTVVC
    @nSNP = nSNP
    @nSSEC = nSSEC
    @nSSECSTA = nSSECSTA
    @nSHRCN = nSHRCN
    @nSSB = nSSB
    @nSSCCA = nSSCCA
    @nSCCS = nSCCS
    @nSOCCR = nSOCCR
    @nSIMSMS = nSIMSMS
    @lCO = lCO
    @lC = lC
    @lCT = lCT
    @nTT = nTT
    @iTT = iTT
    @iCTX = iCTX
    @oCTX = oCTX
    @iNTT = iNTT
    @iITT = iITT
    @iCLT = iCLT
    @iCDDD = iCDDD
    @iCIDD = iCIDD
    @iOLT = iOLT
    @cTLCO = cTLCO
    @cTLCT = cTLCT
    @cTLD = cTLD
    @cTINTNANP = cTINTNANP
    @cTINTWORLD = cTINTWORLD
    @cTDA = cTDA
    @cTOSM = cTOSM
    @cTOSP = cTOSP
    @cTOSP1 = cTOSP1
    @cCO1 = cCO1
    @cCO2 = cCO2
    @cCO3 = cCO3
    @cCO4 = cCO4
    @cCO5 = cCO5
    @cCO6 = cCO6
    @cCO7 = cCO7
    @cCO8 = cCO8
    @cCO9 = cCO9
    @cCO10 = cCO10
    @cCO11 = cCO11
    @cCO12 = cCO12
    @cCO13 = cCO13
    @cCO14 = cCO14
    @cCO15 = cCO15
    @cCO16 = cCO16
    @cCO17 = cCO17
    @cCO18 = cCO18
    @cCO19 = cCO19
    @cCO20 = cCO20
    @cCO21 = cCO21
    @cCO22 = cCO22
    @cCO23 = cCO23
    @cCO24 = cCO24
    @cCO25 = cCO25
    @cCO26 = cCO26
    @cCO27 = cCO27
    @cCO28 = cCO28
    @cCO29 = cCO29
    @cCO30 = cCO30
    @cCO31 = cCO31
    @cCO32 = cCO32
    @hIGHENTCO = hIGHENTCO
    @oPERATOR = oPERATOR
    @sUPYSRV = sUPYSRV
    @iDDCI = iDDCI
    @nTCI = nTCI
    @lTCI = lTCI
    @rSC = rSC
    @cIG = cIG
    @oUTRST = oUTRST
    @iNRST = iNRST
    @nOAT = nOAT
    @rINGCOUNT = rINGCOUNT
    @vMAIND = vMAIND
    @vDMAIND = vDMAIND
    @tGRP = tGRP
    @tIDHLD = tIDHLD
    @tIDCW = tIDCW
    @sCF = sCF
    @lMTGRP = lMTGRP
    @fLBGRP = fLBGRP
    @sLBGRP = sLBGRP
    @cOP = cOP
    @g711_64K_A_LAW = g711_64K_A_LAW
    @g711_64K_U_LAW = g711_64K_U_LAW
    @g722 = g722
    @g723 = g723
    @g726 = g726
    @g728 = g728
    @g729 = g729
    @cODEC_MP4A = cODEC_MP4A
    @cODEC2833 = cODEC2833
    @cODEC2198 = cODEC2198
    @g726_40 = g726_40
    @g726_32 = g726_32
    @g726_24 = g726_24
    @g726_16 = g726_16
    @aMR = aMR
    @cLEARMODE = cLEARMODE
    @iLBC = iLBC
    @sPEEX = sPEEX
    @g729EV = g729EV
    @eVRC = eVRC
    @eVRCB = eVRCB
    @h261 = h261
    @h263 = h263
    @cODEC_MP4V = cODEC_MP4V
    @h264 = h264
    @t38 = t38
    @t120 = t120
    @g711A_VBD = g711A_VBD
    @g711U_VBD = g711U_VBD
    @g726_VBD = g726_VBD
    @g726_40_VBD = g726_40_VBD
    @g726_32_VBD = g726_32_VBD
    @g726_24_VBD = g726_24_VBD
    @g726_16_VBD = g726_16_VBD
    @wIND_BAND_AMR = wIND_BAND_AMR
    @gSM610 = gSM610
    @h263_2000 = h263_2000
    @bROADVOICE_32 = bROADVOICE_32
    @uNKNOWN_CODEC = uNKNOWN_CODEC
    @aCODEC = aCODEC
    @vCODEC = vCODEC
    @pOLIDX = pOLIDX
    @nCPI = nCPI
    @iCPI = iCPI
    @hCPI = hCPI
    @eBOCL = eBOCL
    @eBOPL = eBOPL
    @eBOIT = eBOIT
    @rM = rM
    @cPC = cPC
    @pCHG = pCHG
    @tFPT = tFPT
    @cHT = cHT
    @mCIDMODE = mCIDMODE
    @mCIDCMODE = mCIDCMODE
    @mCIDAMODE = mCIDAMODE
    @pREPAIDIDX = pREPAIDIDX
    @cRBTID = cRBTID
    @oDBBICTYPE = oDBBICTYPE
    @oDBBOCTYPE = oDBBOCTYPE
    @oDBBARTYPE = oDBBARTYPE
    @oDBSS = oDBSS
    @oDBBRCFTYPE = oDBBRCFTYPE
    @oDBINFORM = oDBINFORM
    @oDBENTAIN = oDBENTAIN
    @oDBPLMNBAR1 = oDBPLMNBAR1
    @oDBPLMNBAR2 = oDBPLMNBAR2
    @oDBPLMNBAR3 = oDBPLMNBAR3
    @oDBPLMNBAR4 = oDBPLMNBAR4
    @pNOTI = pNOTI
    @mAXPARACALL = mAXPARACALL
    @aTSDTMBUSY = aTSDTMBUSY
    @cALLCOUNT = cALLCOUNT
    @cDNOTICALLER = cDNOTICALLER
    @iSCHGFLAG = iSCHGFLAG
    @cHC = cHC
    @cUSER = cUSER
    @cGRP = cGRP
    @cUSERGRP = cUSERGRP
    @sTCF = sTCF
    @cHARSC = cHARSC
    @rEGUIDX = rEGUIDX
    @sOCBFUNC = sOCBFUNC
    @sOCBPTONEIDX = sOCBPTONEIDX
    @aDMINCBA = aDMINCBA
    @aDCONTROL_DIVERSION = aDCONTROL_DIVERSION
    @dPR = dPR
    @pRON = pRON
    @cPCRUS = cPCRUS
    @cUSCAT = cUSCAT
    @sPT100REL = sPT100REL
    @aNALYSISMODE = aNALYSISMODE
    @gRPIDX = gRPIDX
    @sCADDRIDX = sCADDRIDX
    @cDNOCB = cDNOCB
    @pBTSBR = pBTSBR
    @kVALUE = kVALUE
    @iNPFIDX = iNPFIDX
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_SBRResponse
#   result - ResultType
class MOD_SBRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_SBR
#   iMPU - (any)
class RMV_SBR
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_SBRResponse
#   result - ResultType
class RMV_SBRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_SBR
#   responseComplexType - (any)
#   iMPU - (any)
#   dSPMODE - (any)
#   dSPOPTIMIZE - (any)
class LST_SBR
  attr_accessor :responseComplexType
  attr_accessor :iMPU
  attr_accessor :dSPMODE
  attr_accessor :dSPOPTIMIZE

  def initialize(responseComplexType = nil, iMPU = nil, dSPMODE = nil, dSPOPTIMIZE = nil)
    @responseComplexType = responseComplexType
    @iMPU = iMPU
    @dSPMODE = dSPMODE
    @dSPOPTIMIZE = dSPOPTIMIZE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_SBRResponse
#   result - LST_SBRType
class LST_SBRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_SS
#   iMPU - (any)
#   nSCFU - (any)
#   nSCFUVM - (any)
#   nSCFB - (any)
#   nSCFBVM - (any)
#   nSCFNR - (any)
#   nSCFNRVM - (any)
#   nSCFNL - (any)
#   nSCFNLVM - (any)
#   nSCD - (any)
#   nSCDVM - (any)
#   nSCFNRC - (any)
#   nSCFNRCVM - (any)
#   nSCIDCW - (any)
#   nSRIP - (any)
#   nSRID - (any)
#   nSNRID - (any)
#   nSRND - (any)
#   nSNRND - (any)
#   nSOIP - (any)
#   nSGOIR - (any)
#   nSMOIR - (any)
#   nSTIP - (any)
#   nSTIR - (any)
#   nSOTIR - (any)
#   nSCLIP - (any)
#   nSCLIPNOSCREENING - (any)
#   nSRIO - (any)
#   nSCNIP - (any)
#   nSCLIR - (any)
#   nSCNIR - (any)
#   nSCW - (any)
#   nSCCW - (any)
#   nSACRM - (any)
#   nSCR - (any)
#   nSWAKE_UP - (any)
#   nSAOC_D - (any)
#   nSAOC_E - (any)
#   nSXEXH - (any)
#   nSXEGJ - (any)
#   nSCWCFNR - (any)
#   nSIIFC - (any)
#   nSDN_CALL_OUT_BAR - (any)
#   nSCCBS - (any)
#   nSCCNR - (any)
#   nSCCBSR - (any)
#   nSCCNRR - (any)
#   nS3PTY - (any)
#   nSNPTY - (any)
#   nSDND - (any)
#   nSMCR - (any)
#   nSCBA - (any)
#   nSTMP_LIN - (any)
#   nSCODEC_CNTRL - (any)
#   nSMWI - (any)
#   nSDC - (any)
#   nSHOLD - (any)
#   nSECT - (any)
#   nSCFTB - (any)
#   nSDAN - (any)
#   nSSTOP_SECRET - (any)
#   nSMCID - (any)
#   nSEBO - (any)
#   nSICO - (any)
#   nSOUTG - (any)
#   nSINQYH - (any)
#   nSUINFO - (any)
#   nSDN_CALL_OUT_ALLOW - (any)
#   nSSIC - (any)
#   nSSOC - (any)
#   nSSETCFNRTIME - (any)
#   nSCFS - (any)
#   nSCFSB - (any)
#   nSFAX - (any)
#   nSABRC - (any)
#   nSACRTOVM - (any)
#   nSPREPAID - (any)
#   nSCRBT - (any)
#   nSICB - (any)
#   nSMRINGING - (any)
#   nSCIS - (any)
#   nSCBEG - (any)
#   nSCOLP - (any)
#   nSCOLR - (any)
#   nSCOLPOVR - (any)
#   nSBAOC - (any)
#   nSBOIC - (any)
#   nSBOICEXHC - (any)
#   nSBAIC - (any)
#   nSBICROM - (any)
#   nSSPEED_DIAL - (any)
#   nSSD1D - (any)
#   nSSD2D - (any)
#   nSGRNCALL - (any)
#   nSCPARK - (any)
#   nSGAA - (any)
#   nSQSNS - (any)
#   nSMSN - (any)
#   nSHOTLINE - (any)
#   nSAOC_S - (any)
#   nSNIGHTSRV - (any)
#   nSBACKNUM - (any)
#   nSAUTOCON - (any)
#   nSCAMPON - (any)
#   nSCTD - (any)
#   nSCLICKHOLD - (any)
#   nSQUEUE - (any)
#   nSSANSWER - (any)
#   nSICENCF - (any)
#   nSCFGO - (any)
#   nSCECT - (any)
#   nSCTGO - (any)
#   nSCTIO - (any)
#   nSSETBUSY - (any)
#   nSOVERSTEP - (any)
#   nSABSENT - (any)
#   nSMONITOR - (any)
#   nSFMONITOR - (any)
#   nSDISCNT - (any)
#   nSFDISCNT - (any)
#   nSINSERT - (any)
#   nSFINSERT - (any)
#   nSASI - (any)
#   nSPWCB - (any)
#   nSRD - (any)
#   nSLCPS - (any)
#   nSNCPS - (any)
#   nSICPS - (any)
#   nSHCPS - (any)
#   nSCBCLOCK - (any)
#   nSMINIBAR - (any)
#   nSMCN - (any)
#   nSDSTR - (any)
#   nSOPRREG - (any)
#   nSONEKEY - (any)
#   nSINBOUND - (any)
#   nSOUTBOUND - (any)
#   nSCALLERID - (any)
#   nSCUN - (any)
#   nSIPTVVC - (any)
#   nSNP - (any)
#   nSSEC - (any)
#   nSSECSTA - (any)
#   nSHRCN - (any)
#   nSSB - (any)
#   nSSCCA - (any)
#   nSCCS - (any)
#   nSOCCR - (any)
#   nSIMSMS - (any)
class MOD_SS
  attr_accessor :iMPU
  attr_accessor :nSCFU
  attr_accessor :nSCFUVM
  attr_accessor :nSCFB
  attr_accessor :nSCFBVM
  attr_accessor :nSCFNR
  attr_accessor :nSCFNRVM
  attr_accessor :nSCFNL
  attr_accessor :nSCFNLVM
  attr_accessor :nSCD
  attr_accessor :nSCDVM
  attr_accessor :nSCFNRC
  attr_accessor :nSCFNRCVM
  attr_accessor :nSCIDCW
  attr_accessor :nSRIP
  attr_accessor :nSRID
  attr_accessor :nSNRID
  attr_accessor :nSRND
  attr_accessor :nSNRND
  attr_accessor :nSOIP
  attr_accessor :nSGOIR
  attr_accessor :nSMOIR
  attr_accessor :nSTIP
  attr_accessor :nSTIR
  attr_accessor :nSOTIR
  attr_accessor :nSCLIP
  attr_accessor :nSCLIPNOSCREENING
  attr_accessor :nSRIO
  attr_accessor :nSCNIP
  attr_accessor :nSCLIR
  attr_accessor :nSCNIR
  attr_accessor :nSCW
  attr_accessor :nSCCW
  attr_accessor :nSACRM
  attr_accessor :nSCR
  attr_accessor :nSWAKE_UP
  attr_accessor :nSAOC_D
  attr_accessor :nSAOC_E
  attr_accessor :nSXEXH
  attr_accessor :nSXEGJ
  attr_accessor :nSCWCFNR
  attr_accessor :nSIIFC
  attr_accessor :nSDN_CALL_OUT_BAR
  attr_accessor :nSCCBS
  attr_accessor :nSCCNR
  attr_accessor :nSCCBSR
  attr_accessor :nSCCNRR
  attr_accessor :nS3PTY
  attr_accessor :nSNPTY
  attr_accessor :nSDND
  attr_accessor :nSMCR
  attr_accessor :nSCBA
  attr_accessor :nSTMP_LIN
  attr_accessor :nSCODEC_CNTRL
  attr_accessor :nSMWI
  attr_accessor :nSDC
  attr_accessor :nSHOLD
  attr_accessor :nSECT
  attr_accessor :nSCFTB
  attr_accessor :nSDAN
  attr_accessor :nSSTOP_SECRET
  attr_accessor :nSMCID
  attr_accessor :nSEBO
  attr_accessor :nSICO
  attr_accessor :nSOUTG
  attr_accessor :nSINQYH
  attr_accessor :nSUINFO
  attr_accessor :nSDN_CALL_OUT_ALLOW
  attr_accessor :nSSIC
  attr_accessor :nSSOC
  attr_accessor :nSSETCFNRTIME
  attr_accessor :nSCFS
  attr_accessor :nSCFSB
  attr_accessor :nSFAX
  attr_accessor :nSABRC
  attr_accessor :nSACRTOVM
  attr_accessor :nSPREPAID
  attr_accessor :nSCRBT
  attr_accessor :nSICB
  attr_accessor :nSMRINGING
  attr_accessor :nSCIS
  attr_accessor :nSCBEG
  attr_accessor :nSCOLP
  attr_accessor :nSCOLR
  attr_accessor :nSCOLPOVR
  attr_accessor :nSBAOC
  attr_accessor :nSBOIC
  attr_accessor :nSBOICEXHC
  attr_accessor :nSBAIC
  attr_accessor :nSBICROM
  attr_accessor :nSSPEED_DIAL
  attr_accessor :nSSD1D
  attr_accessor :nSSD2D
  attr_accessor :nSGRNCALL
  attr_accessor :nSCPARK
  attr_accessor :nSGAA
  attr_accessor :nSQSNS
  attr_accessor :nSMSN
  attr_accessor :nSHOTLINE
  attr_accessor :nSAOC_S
  attr_accessor :nSNIGHTSRV
  attr_accessor :nSBACKNUM
  attr_accessor :nSAUTOCON
  attr_accessor :nSCAMPON
  attr_accessor :nSCTD
  attr_accessor :nSCLICKHOLD
  attr_accessor :nSQUEUE
  attr_accessor :nSSANSWER
  attr_accessor :nSICENCF
  attr_accessor :nSCFGO
  attr_accessor :nSCECT
  attr_accessor :nSCTGO
  attr_accessor :nSCTIO
  attr_accessor :nSSETBUSY
  attr_accessor :nSOVERSTEP
  attr_accessor :nSABSENT
  attr_accessor :nSMONITOR
  attr_accessor :nSFMONITOR
  attr_accessor :nSDISCNT
  attr_accessor :nSFDISCNT
  attr_accessor :nSINSERT
  attr_accessor :nSFINSERT
  attr_accessor :nSASI
  attr_accessor :nSPWCB
  attr_accessor :nSRD
  attr_accessor :nSLCPS
  attr_accessor :nSNCPS
  attr_accessor :nSICPS
  attr_accessor :nSHCPS
  attr_accessor :nSCBCLOCK
  attr_accessor :nSMINIBAR
  attr_accessor :nSMCN
  attr_accessor :nSDSTR
  attr_accessor :nSOPRREG
  attr_accessor :nSONEKEY
  attr_accessor :nSINBOUND
  attr_accessor :nSOUTBOUND
  attr_accessor :nSCALLERID
  attr_accessor :nSCUN
  attr_accessor :nSIPTVVC
  attr_accessor :nSNP
  attr_accessor :nSSEC
  attr_accessor :nSSECSTA
  attr_accessor :nSHRCN
  attr_accessor :nSSB
  attr_accessor :nSSCCA
  attr_accessor :nSCCS
  attr_accessor :nSOCCR
  attr_accessor :nSIMSMS

  def initialize(iMPU = nil, nSCFU = nil, nSCFUVM = nil, nSCFB = nil, nSCFBVM = nil, nSCFNR = nil, nSCFNRVM = nil, nSCFNL = nil, nSCFNLVM = nil, nSCD = nil, nSCDVM = nil, nSCFNRC = nil, nSCFNRCVM = nil, nSCIDCW = nil, nSRIP = nil, nSRID = nil, nSNRID = nil, nSRND = nil, nSNRND = nil, nSOIP = nil, nSGOIR = nil, nSMOIR = nil, nSTIP = nil, nSTIR = nil, nSOTIR = nil, nSCLIP = nil, nSCLIPNOSCREENING = nil, nSRIO = nil, nSCNIP = nil, nSCLIR = nil, nSCNIR = nil, nSCW = nil, nSCCW = nil, nSACRM = nil, nSCR = nil, nSWAKE_UP = nil, nSAOC_D = nil, nSAOC_E = nil, nSXEXH = nil, nSXEGJ = nil, nSCWCFNR = nil, nSIIFC = nil, nSDN_CALL_OUT_BAR = nil, nSCCBS = nil, nSCCNR = nil, nSCCBSR = nil, nSCCNRR = nil, nS3PTY = nil, nSNPTY = nil, nSDND = nil, nSMCR = nil, nSCBA = nil, nSTMP_LIN = nil, nSCODEC_CNTRL = nil, nSMWI = nil, nSDC = nil, nSHOLD = nil, nSECT = nil, nSCFTB = nil, nSDAN = nil, nSSTOP_SECRET = nil, nSMCID = nil, nSEBO = nil, nSICO = nil, nSOUTG = nil, nSINQYH = nil, nSUINFO = nil, nSDN_CALL_OUT_ALLOW = nil, nSSIC = nil, nSSOC = nil, nSSETCFNRTIME = nil, nSCFS = nil, nSCFSB = nil, nSFAX = nil, nSABRC = nil, nSACRTOVM = nil, nSPREPAID = nil, nSCRBT = nil, nSICB = nil, nSMRINGING = nil, nSCIS = nil, nSCBEG = nil, nSCOLP = nil, nSCOLR = nil, nSCOLPOVR = nil, nSBAOC = nil, nSBOIC = nil, nSBOICEXHC = nil, nSBAIC = nil, nSBICROM = nil, nSSPEED_DIAL = nil, nSSD1D = nil, nSSD2D = nil, nSGRNCALL = nil, nSCPARK = nil, nSGAA = nil, nSQSNS = nil, nSMSN = nil, nSHOTLINE = nil, nSAOC_S = nil, nSNIGHTSRV = nil, nSBACKNUM = nil, nSAUTOCON = nil, nSCAMPON = nil, nSCTD = nil, nSCLICKHOLD = nil, nSQUEUE = nil, nSSANSWER = nil, nSICENCF = nil, nSCFGO = nil, nSCECT = nil, nSCTGO = nil, nSCTIO = nil, nSSETBUSY = nil, nSOVERSTEP = nil, nSABSENT = nil, nSMONITOR = nil, nSFMONITOR = nil, nSDISCNT = nil, nSFDISCNT = nil, nSINSERT = nil, nSFINSERT = nil, nSASI = nil, nSPWCB = nil, nSRD = nil, nSLCPS = nil, nSNCPS = nil, nSICPS = nil, nSHCPS = nil, nSCBCLOCK = nil, nSMINIBAR = nil, nSMCN = nil, nSDSTR = nil, nSOPRREG = nil, nSONEKEY = nil, nSINBOUND = nil, nSOUTBOUND = nil, nSCALLERID = nil, nSCUN = nil, nSIPTVVC = nil, nSNP = nil, nSSEC = nil, nSSECSTA = nil, nSHRCN = nil, nSSB = nil, nSSCCA = nil, nSCCS = nil, nSOCCR = nil, nSIMSMS = nil)
    @iMPU = iMPU
    @nSCFU = nSCFU
    @nSCFUVM = nSCFUVM
    @nSCFB = nSCFB
    @nSCFBVM = nSCFBVM
    @nSCFNR = nSCFNR
    @nSCFNRVM = nSCFNRVM
    @nSCFNL = nSCFNL
    @nSCFNLVM = nSCFNLVM
    @nSCD = nSCD
    @nSCDVM = nSCDVM
    @nSCFNRC = nSCFNRC
    @nSCFNRCVM = nSCFNRCVM
    @nSCIDCW = nSCIDCW
    @nSRIP = nSRIP
    @nSRID = nSRID
    @nSNRID = nSNRID
    @nSRND = nSRND
    @nSNRND = nSNRND
    @nSOIP = nSOIP
    @nSGOIR = nSGOIR
    @nSMOIR = nSMOIR
    @nSTIP = nSTIP
    @nSTIR = nSTIR
    @nSOTIR = nSOTIR
    @nSCLIP = nSCLIP
    @nSCLIPNOSCREENING = nSCLIPNOSCREENING
    @nSRIO = nSRIO
    @nSCNIP = nSCNIP
    @nSCLIR = nSCLIR
    @nSCNIR = nSCNIR
    @nSCW = nSCW
    @nSCCW = nSCCW
    @nSACRM = nSACRM
    @nSCR = nSCR
    @nSWAKE_UP = nSWAKE_UP
    @nSAOC_D = nSAOC_D
    @nSAOC_E = nSAOC_E
    @nSXEXH = nSXEXH
    @nSXEGJ = nSXEGJ
    @nSCWCFNR = nSCWCFNR
    @nSIIFC = nSIIFC
    @nSDN_CALL_OUT_BAR = nSDN_CALL_OUT_BAR
    @nSCCBS = nSCCBS
    @nSCCNR = nSCCNR
    @nSCCBSR = nSCCBSR
    @nSCCNRR = nSCCNRR
    @nS3PTY = nS3PTY
    @nSNPTY = nSNPTY
    @nSDND = nSDND
    @nSMCR = nSMCR
    @nSCBA = nSCBA
    @nSTMP_LIN = nSTMP_LIN
    @nSCODEC_CNTRL = nSCODEC_CNTRL
    @nSMWI = nSMWI
    @nSDC = nSDC
    @nSHOLD = nSHOLD
    @nSECT = nSECT
    @nSCFTB = nSCFTB
    @nSDAN = nSDAN
    @nSSTOP_SECRET = nSSTOP_SECRET
    @nSMCID = nSMCID
    @nSEBO = nSEBO
    @nSICO = nSICO
    @nSOUTG = nSOUTG
    @nSINQYH = nSINQYH
    @nSUINFO = nSUINFO
    @nSDN_CALL_OUT_ALLOW = nSDN_CALL_OUT_ALLOW
    @nSSIC = nSSIC
    @nSSOC = nSSOC
    @nSSETCFNRTIME = nSSETCFNRTIME
    @nSCFS = nSCFS
    @nSCFSB = nSCFSB
    @nSFAX = nSFAX
    @nSABRC = nSABRC
    @nSACRTOVM = nSACRTOVM
    @nSPREPAID = nSPREPAID
    @nSCRBT = nSCRBT
    @nSICB = nSICB
    @nSMRINGING = nSMRINGING
    @nSCIS = nSCIS
    @nSCBEG = nSCBEG
    @nSCOLP = nSCOLP
    @nSCOLR = nSCOLR
    @nSCOLPOVR = nSCOLPOVR
    @nSBAOC = nSBAOC
    @nSBOIC = nSBOIC
    @nSBOICEXHC = nSBOICEXHC
    @nSBAIC = nSBAIC
    @nSBICROM = nSBICROM
    @nSSPEED_DIAL = nSSPEED_DIAL
    @nSSD1D = nSSD1D
    @nSSD2D = nSSD2D
    @nSGRNCALL = nSGRNCALL
    @nSCPARK = nSCPARK
    @nSGAA = nSGAA
    @nSQSNS = nSQSNS
    @nSMSN = nSMSN
    @nSHOTLINE = nSHOTLINE
    @nSAOC_S = nSAOC_S
    @nSNIGHTSRV = nSNIGHTSRV
    @nSBACKNUM = nSBACKNUM
    @nSAUTOCON = nSAUTOCON
    @nSCAMPON = nSCAMPON
    @nSCTD = nSCTD
    @nSCLICKHOLD = nSCLICKHOLD
    @nSQUEUE = nSQUEUE
    @nSSANSWER = nSSANSWER
    @nSICENCF = nSICENCF
    @nSCFGO = nSCFGO
    @nSCECT = nSCECT
    @nSCTGO = nSCTGO
    @nSCTIO = nSCTIO
    @nSSETBUSY = nSSETBUSY
    @nSOVERSTEP = nSOVERSTEP
    @nSABSENT = nSABSENT
    @nSMONITOR = nSMONITOR
    @nSFMONITOR = nSFMONITOR
    @nSDISCNT = nSDISCNT
    @nSFDISCNT = nSFDISCNT
    @nSINSERT = nSINSERT
    @nSFINSERT = nSFINSERT
    @nSASI = nSASI
    @nSPWCB = nSPWCB
    @nSRD = nSRD
    @nSLCPS = nSLCPS
    @nSNCPS = nSNCPS
    @nSICPS = nSICPS
    @nSHCPS = nSHCPS
    @nSCBCLOCK = nSCBCLOCK
    @nSMINIBAR = nSMINIBAR
    @nSMCN = nSMCN
    @nSDSTR = nSDSTR
    @nSOPRREG = nSOPRREG
    @nSONEKEY = nSONEKEY
    @nSINBOUND = nSINBOUND
    @nSOUTBOUND = nSOUTBOUND
    @nSCALLERID = nSCALLERID
    @nSCUN = nSCUN
    @nSIPTVVC = nSIPTVVC
    @nSNP = nSNP
    @nSSEC = nSSEC
    @nSSECSTA = nSSECSTA
    @nSHRCN = nSHRCN
    @nSSB = nSSB
    @nSSCCA = nSSCCA
    @nSCCS = nSCCS
    @nSOCCR = nSOCCR
    @nSIMSMS = nSIMSMS
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_SSResponse
#   result - ResultType
class MOD_SSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_SS
#   iMPU - (any)
#   dSPOPTIMIZE - (any)
class LST_SS
  attr_accessor :iMPU
  attr_accessor :dSPOPTIMIZE

  def initialize(iMPU = nil, dSPOPTIMIZE = nil)
    @iMPU = iMPU
    @dSPOPTIMIZE = dSPOPTIMIZE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_SSResponse
#   result - LST_SSType
class LST_SSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_COMSS
#   iMPU - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
#   cFUVM - (any)
#   cFBVM - (any)
#   cFNRVM - (any)
#   cFNLVM - (any)
#   cFNRCVM - (any)
#   cD - (any)
#   cDVM - (any)
#   cIDCW - (any)
#   rIP - (any)
#   rID - (any)
#   nRID - (any)
#   rND - (any)
#   nRND - (any)
#   oIP - (any)
#   tIP - (any)
#   oTIR - (any)
#   cLIP - (any)
#   rIO - (any)
#   cNIP - (any)
#   cLIR - (any)
#   cNIR - (any)
#   cW - (any)
#   aCR - (any)
#   cR - (any)
#   aOC_D - (any)
#   aOC_E - (any)
#   xEXH - (any)
#   xEGJ - (any)
#   iIFC - (any)
#   cCBS - (any)
#   cCNR - (any)
#   cCBSR - (any)
#   cCNRR - (any)
#   tPTY - (any)
#   nPTY - (any)
#   mCR - (any)
#   mWI - (any)
#   dC - (any)
#   hOLD - (any)
#   eCT - (any)
#   dAN - (any)
#   sTOP_SECRET - (any)
#   eBO - (any)
#   iCO - (any)
#   oUTG - (any)
#   iNQYH - (any)
#   sETCFNRTIME - (any)
#   aCRTOVM - (any)
#   sETBUSY - (any)
#   pWCB - (any)
#   aOC_S - (any)
#   mCID - (any)
#   cLIPNOSCREENING - (any)
#   cOLP - (any)
#   cOLPOVR - (any)
#   oPRREG - (any)
#   sECSTA - (any)
#   hRCN - (any)
#   cCS - (any)
#   cRBT - (any)
class REG_COMSS
  attr_accessor :iMPU
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG
  attr_accessor :cFUVM
  attr_accessor :cFBVM
  attr_accessor :cFNRVM
  attr_accessor :cFNLVM
  attr_accessor :cFNRCVM
  attr_accessor :cD
  attr_accessor :cDVM
  attr_accessor :cIDCW
  attr_accessor :rIP
  attr_accessor :rID
  attr_accessor :nRID
  attr_accessor :rND
  attr_accessor :nRND
  attr_accessor :oIP
  attr_accessor :tIP
  attr_accessor :oTIR
  attr_accessor :cLIP
  attr_accessor :rIO
  attr_accessor :cNIP
  attr_accessor :cLIR
  attr_accessor :cNIR
  attr_accessor :cW
  attr_accessor :aCR
  attr_accessor :cR
  attr_accessor :aOC_D
  attr_accessor :aOC_E
  attr_accessor :xEXH
  attr_accessor :xEGJ
  attr_accessor :iIFC
  attr_accessor :cCBS
  attr_accessor :cCNR
  attr_accessor :cCBSR
  attr_accessor :cCNRR
  attr_accessor :tPTY
  attr_accessor :nPTY
  attr_accessor :mCR
  attr_accessor :mWI
  attr_accessor :dC
  attr_accessor :hOLD
  attr_accessor :eCT
  attr_accessor :dAN
  attr_accessor :sTOP_SECRET
  attr_accessor :eBO
  attr_accessor :iCO
  attr_accessor :oUTG
  attr_accessor :iNQYH
  attr_accessor :sETCFNRTIME
  attr_accessor :aCRTOVM
  attr_accessor :sETBUSY
  attr_accessor :pWCB
  attr_accessor :aOC_S
  attr_accessor :mCID
  attr_accessor :cLIPNOSCREENING
  attr_accessor :cOLP
  attr_accessor :cOLPOVR
  attr_accessor :oPRREG
  attr_accessor :sECSTA
  attr_accessor :hRCN
  attr_accessor :cCS
  attr_accessor :cRBT

  def initialize(iMPU = nil, rEGFLAG = nil, aUTOACTFLAG = nil, cFUVM = nil, cFBVM = nil, cFNRVM = nil, cFNLVM = nil, cFNRCVM = nil, cD = nil, cDVM = nil, cIDCW = nil, rIP = nil, rID = nil, nRID = nil, rND = nil, nRND = nil, oIP = nil, tIP = nil, oTIR = nil, cLIP = nil, rIO = nil, cNIP = nil, cLIR = nil, cNIR = nil, cW = nil, aCR = nil, cR = nil, aOC_D = nil, aOC_E = nil, xEXH = nil, xEGJ = nil, iIFC = nil, cCBS = nil, cCNR = nil, cCBSR = nil, cCNRR = nil, tPTY = nil, nPTY = nil, mCR = nil, mWI = nil, dC = nil, hOLD = nil, eCT = nil, dAN = nil, sTOP_SECRET = nil, eBO = nil, iCO = nil, oUTG = nil, iNQYH = nil, sETCFNRTIME = nil, aCRTOVM = nil, sETBUSY = nil, pWCB = nil, aOC_S = nil, mCID = nil, cLIPNOSCREENING = nil, cOLP = nil, cOLPOVR = nil, oPRREG = nil, sECSTA = nil, hRCN = nil, cCS = nil, cRBT = nil)
    @iMPU = iMPU
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
    @cFUVM = cFUVM
    @cFBVM = cFBVM
    @cFNRVM = cFNRVM
    @cFNLVM = cFNLVM
    @cFNRCVM = cFNRCVM
    @cD = cD
    @cDVM = cDVM
    @cIDCW = cIDCW
    @rIP = rIP
    @rID = rID
    @nRID = nRID
    @rND = rND
    @nRND = nRND
    @oIP = oIP
    @tIP = tIP
    @oTIR = oTIR
    @cLIP = cLIP
    @rIO = rIO
    @cNIP = cNIP
    @cLIR = cLIR
    @cNIR = cNIR
    @cW = cW
    @aCR = aCR
    @cR = cR
    @aOC_D = aOC_D
    @aOC_E = aOC_E
    @xEXH = xEXH
    @xEGJ = xEGJ
    @iIFC = iIFC
    @cCBS = cCBS
    @cCNR = cCNR
    @cCBSR = cCBSR
    @cCNRR = cCNRR
    @tPTY = tPTY
    @nPTY = nPTY
    @mCR = mCR
    @mWI = mWI
    @dC = dC
    @hOLD = hOLD
    @eCT = eCT
    @dAN = dAN
    @sTOP_SECRET = sTOP_SECRET
    @eBO = eBO
    @iCO = iCO
    @oUTG = oUTG
    @iNQYH = iNQYH
    @sETCFNRTIME = sETCFNRTIME
    @aCRTOVM = aCRTOVM
    @sETBUSY = sETBUSY
    @pWCB = pWCB
    @aOC_S = aOC_S
    @mCID = mCID
    @cLIPNOSCREENING = cLIPNOSCREENING
    @cOLP = cOLP
    @cOLPOVR = cOLPOVR
    @oPRREG = oPRREG
    @sECSTA = sECSTA
    @hRCN = hRCN
    @cCS = cCS
    @cRBT = cRBT
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_COMSSResponse
#   result - REG_COMSSType
class REG_COMSSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_COMSS
#   iMPU - (any)
class DSP_COMSS
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_COMSSResponse
#   result - DSP_COMSSType
class DSP_COMSSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_SS
#   iMPU - (any)
#   cFUVM - (any)
#   cFBVM - (any)
#   cFNRVM - (any)
#   cFNLVM - (any)
#   cD - (any)
#   cDVM - (any)
#   cFNRCVM - (any)
#   cIDCW - (any)
#   rIP - (any)
#   rID - (any)
#   nRID - (any)
#   rND - (any)
#   nRND - (any)
#   oIP - (any)
#   tIP - (any)
#   oTIR - (any)
#   gOIR - (any)
#   mOIR - (any)
#   tIR - (any)
#   cLIP - (any)
#   rIO - (any)
#   cNIP - (any)
#   cLIR - (any)
#   cNIR - (any)
#   cW - (any)
#   aCR - (any)
#   cR - (any)
#   aOC_D - (any)
#   aOC_E - (any)
#   xEXH - (any)
#   xEGJ - (any)
#   iIFC - (any)
#   cCBS - (any)
#   cCNR - (any)
#   cCBSR - (any)
#   cCNRR - (any)
#   tPTY - (any)
#   nPTY - (any)
#   mCR - (any)
#   mWI - (any)
#   dC - (any)
#   hOLD - (any)
#   eCT - (any)
#   dAN - (any)
#   sTOP_SECRET - (any)
#   mCID - (any)
#   eBO - (any)
#   iCO - (any)
#   oUTG - (any)
#   iNQYH - (any)
#   sETCFNRTIME - (any)
#   aCRTOVM - (any)
#   cFU - (any)
#   wAKE_UP - (any)
#   cFTB - (any)
#   uINFO - (any)
#   sOC - (any)
#   dN_CALL_OUT_ALLOW - (any)
#   dND - (any)
#   cBA - (any)
#   tMP_LIN - (any)
#   cODEC_CNTRL - (any)
#   sIC - (any)
#   cFS - (any)
#   dN_CALL_OUT_BAR - (any)
#   cFSB - (any)
#   cFB - (any)
#   cFNR - (any)
#   cFNL - (any)
#   cFNRC - (any)
#   cWCFNR - (any)
#   mRINGMODE - (any)
#   cIS - (any)
#   sPEED_DIAL - (any)
#   gRNCALL - (any)
#   sETBUSY - (any)
#   aBSENT - (any)
#   pWCB - (any)
#   aOC_S - (any)
#   hOTLINE - (any)
#   cETMCID - (any)
#   mCN - (any)
#   dSTR - (any)
#   iNBOUND - (any)
#   oUTBOUND - (any)
#   cLIPNOSCREENING - (any)
#   cOLP - (any)
#   cOLPOVR - (any)
#   oPRREG - (any)
#   oNEKEY - (any)
#   cALLERID - (any)
#   sEC - (any)
#   sECSTA - (any)
#   hRCN - (any)
#   sB - (any)
#   cCS - (any)
#   cRBT - (any)
class RPL_SS
  attr_accessor :iMPU
  attr_accessor :cFUVM
  attr_accessor :cFBVM
  attr_accessor :cFNRVM
  attr_accessor :cFNLVM
  attr_accessor :cD
  attr_accessor :cDVM
  attr_accessor :cFNRCVM
  attr_accessor :cIDCW
  attr_accessor :rIP
  attr_accessor :rID
  attr_accessor :nRID
  attr_accessor :rND
  attr_accessor :nRND
  attr_accessor :oIP
  attr_accessor :tIP
  attr_accessor :oTIR
  attr_accessor :gOIR
  attr_accessor :mOIR
  attr_accessor :tIR
  attr_accessor :cLIP
  attr_accessor :rIO
  attr_accessor :cNIP
  attr_accessor :cLIR
  attr_accessor :cNIR
  attr_accessor :cW
  attr_accessor :aCR
  attr_accessor :cR
  attr_accessor :aOC_D
  attr_accessor :aOC_E
  attr_accessor :xEXH
  attr_accessor :xEGJ
  attr_accessor :iIFC
  attr_accessor :cCBS
  attr_accessor :cCNR
  attr_accessor :cCBSR
  attr_accessor :cCNRR
  attr_accessor :tPTY
  attr_accessor :nPTY
  attr_accessor :mCR
  attr_accessor :mWI
  attr_accessor :dC
  attr_accessor :hOLD
  attr_accessor :eCT
  attr_accessor :dAN
  attr_accessor :sTOP_SECRET
  attr_accessor :mCID
  attr_accessor :eBO
  attr_accessor :iCO
  attr_accessor :oUTG
  attr_accessor :iNQYH
  attr_accessor :sETCFNRTIME
  attr_accessor :aCRTOVM
  attr_accessor :cFU
  attr_accessor :wAKE_UP
  attr_accessor :cFTB
  attr_accessor :uINFO
  attr_accessor :sOC
  attr_accessor :dN_CALL_OUT_ALLOW
  attr_accessor :dND
  attr_accessor :cBA
  attr_accessor :tMP_LIN
  attr_accessor :cODEC_CNTRL
  attr_accessor :sIC
  attr_accessor :cFS
  attr_accessor :dN_CALL_OUT_BAR
  attr_accessor :cFSB
  attr_accessor :cFB
  attr_accessor :cFNR
  attr_accessor :cFNL
  attr_accessor :cFNRC
  attr_accessor :cWCFNR
  attr_accessor :mRINGMODE
  attr_accessor :cIS
  attr_accessor :sPEED_DIAL
  attr_accessor :gRNCALL
  attr_accessor :sETBUSY
  attr_accessor :aBSENT
  attr_accessor :pWCB
  attr_accessor :aOC_S
  attr_accessor :hOTLINE
  attr_accessor :cETMCID
  attr_accessor :mCN
  attr_accessor :dSTR
  attr_accessor :iNBOUND
  attr_accessor :oUTBOUND
  attr_accessor :cLIPNOSCREENING
  attr_accessor :cOLP
  attr_accessor :cOLPOVR
  attr_accessor :oPRREG
  attr_accessor :oNEKEY
  attr_accessor :cALLERID
  attr_accessor :sEC
  attr_accessor :sECSTA
  attr_accessor :hRCN
  attr_accessor :sB
  attr_accessor :cCS
  attr_accessor :cRBT

  def initialize(iMPU = nil, cFUVM = nil, cFBVM = nil, cFNRVM = nil, cFNLVM = nil, cD = nil, cDVM = nil, cFNRCVM = nil, cIDCW = nil, rIP = nil, rID = nil, nRID = nil, rND = nil, nRND = nil, oIP = nil, tIP = nil, oTIR = nil, gOIR = nil, mOIR = nil, tIR = nil, cLIP = nil, rIO = nil, cNIP = nil, cLIR = nil, cNIR = nil, cW = nil, aCR = nil, cR = nil, aOC_D = nil, aOC_E = nil, xEXH = nil, xEGJ = nil, iIFC = nil, cCBS = nil, cCNR = nil, cCBSR = nil, cCNRR = nil, tPTY = nil, nPTY = nil, mCR = nil, mWI = nil, dC = nil, hOLD = nil, eCT = nil, dAN = nil, sTOP_SECRET = nil, mCID = nil, eBO = nil, iCO = nil, oUTG = nil, iNQYH = nil, sETCFNRTIME = nil, aCRTOVM = nil, cFU = nil, wAKE_UP = nil, cFTB = nil, uINFO = nil, sOC = nil, dN_CALL_OUT_ALLOW = nil, dND = nil, cBA = nil, tMP_LIN = nil, cODEC_CNTRL = nil, sIC = nil, cFS = nil, dN_CALL_OUT_BAR = nil, cFSB = nil, cFB = nil, cFNR = nil, cFNL = nil, cFNRC = nil, cWCFNR = nil, mRINGMODE = nil, cIS = nil, sPEED_DIAL = nil, gRNCALL = nil, sETBUSY = nil, aBSENT = nil, pWCB = nil, aOC_S = nil, hOTLINE = nil, cETMCID = nil, mCN = nil, dSTR = nil, iNBOUND = nil, oUTBOUND = nil, cLIPNOSCREENING = nil, cOLP = nil, cOLPOVR = nil, oPRREG = nil, oNEKEY = nil, cALLERID = nil, sEC = nil, sECSTA = nil, hRCN = nil, sB = nil, cCS = nil, cRBT = nil)
    @iMPU = iMPU
    @cFUVM = cFUVM
    @cFBVM = cFBVM
    @cFNRVM = cFNRVM
    @cFNLVM = cFNLVM
    @cD = cD
    @cDVM = cDVM
    @cFNRCVM = cFNRCVM
    @cIDCW = cIDCW
    @rIP = rIP
    @rID = rID
    @nRID = nRID
    @rND = rND
    @nRND = nRND
    @oIP = oIP
    @tIP = tIP
    @oTIR = oTIR
    @gOIR = gOIR
    @mOIR = mOIR
    @tIR = tIR
    @cLIP = cLIP
    @rIO = rIO
    @cNIP = cNIP
    @cLIR = cLIR
    @cNIR = cNIR
    @cW = cW
    @aCR = aCR
    @cR = cR
    @aOC_D = aOC_D
    @aOC_E = aOC_E
    @xEXH = xEXH
    @xEGJ = xEGJ
    @iIFC = iIFC
    @cCBS = cCBS
    @cCNR = cCNR
    @cCBSR = cCBSR
    @cCNRR = cCNRR
    @tPTY = tPTY
    @nPTY = nPTY
    @mCR = mCR
    @mWI = mWI
    @dC = dC
    @hOLD = hOLD
    @eCT = eCT
    @dAN = dAN
    @sTOP_SECRET = sTOP_SECRET
    @mCID = mCID
    @eBO = eBO
    @iCO = iCO
    @oUTG = oUTG
    @iNQYH = iNQYH
    @sETCFNRTIME = sETCFNRTIME
    @aCRTOVM = aCRTOVM
    @cFU = cFU
    @wAKE_UP = wAKE_UP
    @cFTB = cFTB
    @uINFO = uINFO
    @sOC = sOC
    @dN_CALL_OUT_ALLOW = dN_CALL_OUT_ALLOW
    @dND = dND
    @cBA = cBA
    @tMP_LIN = tMP_LIN
    @cODEC_CNTRL = cODEC_CNTRL
    @sIC = sIC
    @cFS = cFS
    @dN_CALL_OUT_BAR = dN_CALL_OUT_BAR
    @cFSB = cFSB
    @cFB = cFB
    @cFNR = cFNR
    @cFNL = cFNL
    @cFNRC = cFNRC
    @cWCFNR = cWCFNR
    @mRINGMODE = mRINGMODE
    @cIS = cIS
    @sPEED_DIAL = sPEED_DIAL
    @gRNCALL = gRNCALL
    @sETBUSY = sETBUSY
    @aBSENT = aBSENT
    @pWCB = pWCB
    @aOC_S = aOC_S
    @hOTLINE = hOTLINE
    @cETMCID = cETMCID
    @mCN = mCN
    @dSTR = dSTR
    @iNBOUND = iNBOUND
    @oUTBOUND = oUTBOUND
    @cLIPNOSCREENING = cLIPNOSCREENING
    @cOLP = cOLP
    @cOLPOVR = cOLPOVR
    @oPRREG = oPRREG
    @oNEKEY = oNEKEY
    @cALLERID = cALLERID
    @sEC = sEC
    @sECSTA = sECSTA
    @hRCN = hRCN
    @sB = sB
    @cCS = cCS
    @cRBT = cRBT
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_SSResponse
#   result - ResultType
class RPL_SSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_SS
#   iMPU - (any)
#   sIC - (any)
#   dSTR - (any)
#   sB - (any)
class ACT_SS
  attr_accessor :iMPU
  attr_accessor :sIC
  attr_accessor :dSTR
  attr_accessor :sB

  def initialize(iMPU = nil, sIC = nil, dSTR = nil, sB = nil)
    @iMPU = iMPU
    @sIC = sIC
    @dSTR = dSTR
    @sB = sB
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_SSResponse
#   result - ResultType
class ACT_SSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_SS
#   iMPU - (any)
#   sIC - (any)
#   dSTR - (any)
#   sB - (any)
class DEA_SS
  attr_accessor :iMPU
  attr_accessor :sIC
  attr_accessor :dSTR
  attr_accessor :sB

  def initialize(iMPU = nil, sIC = nil, dSTR = nil, sB = nil)
    @iMPU = iMPU
    @sIC = sIC
    @dSTR = dSTR
    @sB = sB
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_SSResponse
#   result - ResultType
class DEA_SSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}QRY_SS
#   iMPU - (any)
class QRY_SS
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}QRY_SSResponse
#   result - QRY_SSType
class QRY_SSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFU
#   iMPU - (any)
#   bSV - (any)
#   bSG - (any)
#   dIMPU - (any)
#   sUBINF - (any)
#   nOTIFYCALLER - (any)
#   pRVTOCER - (any)
#   pRVTODES - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_CFU
  attr_accessor :iMPU
  attr_accessor :bSV
  attr_accessor :bSG
  attr_accessor :dIMPU
  attr_accessor :sUBINF
  attr_accessor :nOTIFYCALLER
  attr_accessor :pRVTOCER
  attr_accessor :pRVTODES
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, bSV = nil, bSG = nil, dIMPU = nil, sUBINF = nil, nOTIFYCALLER = nil, pRVTOCER = nil, pRVTODES = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @bSV = bSV
    @bSG = bSG
    @dIMPU = dIMPU
    @sUBINF = sUBINF
    @nOTIFYCALLER = nOTIFYCALLER
    @pRVTOCER = pRVTOCER
    @pRVTODES = pRVTODES
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFUResponse
#   result - ResultType
class REG_CFUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFU
#   iMPU - (any)
#   bSG - (any)
class RPL_CFU
  attr_accessor :iMPU
  attr_accessor :bSG

  def initialize(iMPU = nil, bSG = nil)
    @iMPU = iMPU
    @bSG = bSG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFUResponse
#   result - ResultType
class RPL_CFUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFU
#   iMPU - (any)
class DSP_CFU
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFUResponse
#   result - DSP_CFUType
class DSP_CFUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_CFU
#   iMPU - (any)
#   bSG - (any)
class ACT_CFU
  attr_accessor :iMPU
  attr_accessor :bSG

  def initialize(iMPU = nil, bSG = nil)
    @iMPU = iMPU
    @bSG = bSG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_CFUResponse
#   result - ResultType
class ACT_CFUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_CFU
#   iMPU - (any)
#   bSG - (any)
class DEA_CFU
  attr_accessor :iMPU
  attr_accessor :bSG

  def initialize(iMPU = nil, bSG = nil)
    @iMPU = iMPU
    @bSG = bSG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_CFUResponse
#   result - ResultType
class DEA_CFUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CLIR
#   iMPU - (any)
#   gMODE - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_CLIR
  attr_accessor :iMPU
  attr_accessor :gMODE
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, gMODE = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @gMODE = gMODE
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CLIRResponse
#   result - ResultType
class REG_CLIRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CLIR
#   iMPU - (any)
class RPL_CLIR
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CLIRResponse
#   result - ResultType
class RPL_CLIRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CLIR
#   iMPU - (any)
class DSP_CLIR
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CLIRResponse
#   result - DSP_CLIRType
class DSP_CLIRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_COLR
#   iMPU - (any)
#   tMODE - (any)
#   sTYPE - (any)
#   sHOUR - (any)
#   sMINUTE - (any)
#   eHOUR - (any)
#   eMINUTE - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_COLR
  attr_accessor :iMPU
  attr_accessor :tMODE
  attr_accessor :sTYPE
  attr_accessor :sHOUR
  attr_accessor :sMINUTE
  attr_accessor :eHOUR
  attr_accessor :eMINUTE
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, tMODE = nil, sTYPE = nil, sHOUR = nil, sMINUTE = nil, eHOUR = nil, eMINUTE = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @tMODE = tMODE
    @sTYPE = sTYPE
    @sHOUR = sHOUR
    @sMINUTE = sMINUTE
    @eHOUR = eHOUR
    @eMINUTE = eMINUTE
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_COLRResponse
#   result - ResultType
class REG_COLRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_COLR
#   iMPU - (any)
class RPL_COLR
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_COLRResponse
#   result - ResultType
class RPL_COLRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_COLR
#   iMPU - (any)
class DSP_COLR
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_COLRResponse
#   result - DSP_COLRType
class DSP_COLRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_WAKE_UP
#   iMPU - (any)
#   wCH - (any)
#   wCM - (any)
#   wCLAN - (any)
#   wCMODE - (any)
#   wCWP - (any)
#   wCWTN - (any)
#   wCDTN - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_WAKE_UP
  attr_accessor :iMPU
  attr_accessor :wCH
  attr_accessor :wCM
  attr_accessor :wCLAN
  attr_accessor :wCMODE
  attr_accessor :wCWP
  attr_accessor :wCWTN
  attr_accessor :wCDTN
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, wCH = nil, wCM = nil, wCLAN = nil, wCMODE = nil, wCWP = nil, wCWTN = nil, wCDTN = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @wCH = wCH
    @wCM = wCM
    @wCLAN = wCLAN
    @wCMODE = wCMODE
    @wCWP = wCWP
    @wCWTN = wCWTN
    @wCDTN = wCDTN
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_WAKE_UPResponse
#   result - ResultType
class REG_WAKE_UPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_WAKE_UP
#   iMPU - (any)
#   hOUR - (any)
#   mINUTE - (any)
class RPL_WAKE_UP
  attr_accessor :iMPU
  attr_accessor :hOUR
  attr_accessor :mINUTE

  def initialize(iMPU = nil, hOUR = nil, mINUTE = nil)
    @iMPU = iMPU
    @hOUR = hOUR
    @mINUTE = mINUTE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_WAKE_UPResponse
#   result - ResultType
class RPL_WAKE_UPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_WAKE_UP
#   iMPU - (any)
class DSP_WAKE_UP
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_WAKE_UPResponse
#   result - DSP_WAKE_UPType
class DSP_WAKE_UPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFTB
#   iMPU - (any)
#   cFTBSV - (any)
#   sVT - (any)
#   cTIMPU - (any)
#   cTSBIF - (any)
#   pT - (any)
#   rIDX - (any)
#   cFTBSD - (any)
#   sYEAR - (any)
#   sMONTH - (any)
#   sDATE - (any)
#   cFTBST - (any)
#   sHOUR - (any)
#   sMINUTE - (any)
#   cFTBED - (any)
#   eYEAR - (any)
#   eMONTH - (any)
#   eDATE - (any)
#   cFTBET - (any)
#   eHOUR - (any)
#   eMINUTE - (any)
#   dINW - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_CFTB
  attr_accessor :iMPU
  attr_accessor :cFTBSV
  attr_accessor :sVT
  attr_accessor :cTIMPU
  attr_accessor :cTSBIF
  attr_accessor :pT
  attr_accessor :rIDX
  attr_accessor :cFTBSD
  attr_accessor :sYEAR
  attr_accessor :sMONTH
  attr_accessor :sDATE
  attr_accessor :cFTBST
  attr_accessor :sHOUR
  attr_accessor :sMINUTE
  attr_accessor :cFTBED
  attr_accessor :eYEAR
  attr_accessor :eMONTH
  attr_accessor :eDATE
  attr_accessor :cFTBET
  attr_accessor :eHOUR
  attr_accessor :eMINUTE
  attr_accessor :dINW
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, cFTBSV = nil, sVT = nil, cTIMPU = nil, cTSBIF = nil, pT = nil, rIDX = nil, cFTBSD = nil, sYEAR = nil, sMONTH = nil, sDATE = nil, cFTBST = nil, sHOUR = nil, sMINUTE = nil, cFTBED = nil, eYEAR = nil, eMONTH = nil, eDATE = nil, cFTBET = nil, eHOUR = nil, eMINUTE = nil, dINW = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @cFTBSV = cFTBSV
    @sVT = sVT
    @cTIMPU = cTIMPU
    @cTSBIF = cTSBIF
    @pT = pT
    @rIDX = rIDX
    @cFTBSD = cFTBSD
    @sYEAR = sYEAR
    @sMONTH = sMONTH
    @sDATE = sDATE
    @cFTBST = cFTBST
    @sHOUR = sHOUR
    @sMINUTE = sMINUTE
    @cFTBED = cFTBED
    @eYEAR = eYEAR
    @eMONTH = eMONTH
    @eDATE = eDATE
    @cFTBET = cFTBET
    @eHOUR = eHOUR
    @eMINUTE = eMINUTE
    @dINW = dINW
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFTBResponse
#   result - ResultType
class REG_CFTBResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFTB
#   iMPU - (any)
#   rIDX - (any)
class RPL_CFTB
  attr_accessor :iMPU
  attr_accessor :rIDX

  def initialize(iMPU = nil, rIDX = nil)
    @iMPU = iMPU
    @rIDX = rIDX
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFTBResponse
#   result - ResultType
class RPL_CFTBResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFTB
#   iMPU - (any)
class DSP_CFTB
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFTBResponse
#   result - DSP_CFTBType
class DSP_CFTBResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_UINFO
#   iMPU - (any)
#   iMG - (any)
#   pCI - (any)
#   wINFO - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_UINFO
  attr_accessor :iMPU
  attr_accessor :iMG
  attr_accessor :pCI
  attr_accessor :wINFO
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, iMG = nil, pCI = nil, wINFO = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @iMG = iMG
    @pCI = pCI
    @wINFO = wINFO
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_UINFOResponse
#   result - ResultType
class REG_UINFOResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_UINFO
#   iMPU - (any)
class RPL_UINFO
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_UINFOResponse
#   result - ResultType
class RPL_UINFOResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_UINFO
#   iMPU - (any)
class DSP_UINFO
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_UINFOResponse
#   result - DSP_UINFOType
class DSP_UINFOResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_SOC
#   iMPU - (any)
#   sOCIDX - (any)
#   sOIMPU - (any)
#   sOCBT - (any)
#   sYEAR - (any)
#   sMONTH - (any)
#   sDATE - (any)
#   sHOUR - (any)
#   sMINUTE - (any)
#   sOCET - (any)
#   eYEAR - (any)
#   eMONTH - (any)
#   eDATE - (any)
#   eHOUR - (any)
#   eMINUTE - (any)
#   sOCPER - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_SOC
  attr_accessor :iMPU
  attr_accessor :sOCIDX
  attr_accessor :sOIMPU
  attr_accessor :sOCBT
  attr_accessor :sYEAR
  attr_accessor :sMONTH
  attr_accessor :sDATE
  attr_accessor :sHOUR
  attr_accessor :sMINUTE
  attr_accessor :sOCET
  attr_accessor :eYEAR
  attr_accessor :eMONTH
  attr_accessor :eDATE
  attr_accessor :eHOUR
  attr_accessor :eMINUTE
  attr_accessor :sOCPER
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, sOCIDX = nil, sOIMPU = nil, sOCBT = nil, sYEAR = nil, sMONTH = nil, sDATE = nil, sHOUR = nil, sMINUTE = nil, sOCET = nil, eYEAR = nil, eMONTH = nil, eDATE = nil, eHOUR = nil, eMINUTE = nil, sOCPER = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @sOCIDX = sOCIDX
    @sOIMPU = sOIMPU
    @sOCBT = sOCBT
    @sYEAR = sYEAR
    @sMONTH = sMONTH
    @sDATE = sDATE
    @sHOUR = sHOUR
    @sMINUTE = sMINUTE
    @sOCET = sOCET
    @eYEAR = eYEAR
    @eMONTH = eMONTH
    @eDATE = eDATE
    @eHOUR = eHOUR
    @eMINUTE = eMINUTE
    @sOCPER = sOCPER
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_SOCResponse
#   result - ResultType
class REG_SOCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_SOC
#   iMPU - (any)
#   sOCIDX - (any)
class RPL_SOC
  attr_accessor :iMPU
  attr_accessor :sOCIDX

  def initialize(iMPU = nil, sOCIDX = nil)
    @iMPU = iMPU
    @sOCIDX = sOCIDX
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_SOCResponse
#   result - ResultType
class RPL_SOCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SOC
#   iMPU - (any)
class DSP_SOC
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SOCResponse
#   result - DSP_SOCType
class DSP_SOCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_DN_CALL_OUT_ALLOW
#   iMPU - (any)
#   cOAD - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_DN_CALL_OUT_ALLOW
  attr_accessor :iMPU
  attr_accessor :cOAD
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, cOAD = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @cOAD = cOAD
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_DN_CALL_OUT_ALLOWResponse
#   result - ResultType
class REG_DN_CALL_OUT_ALLOWResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_DN_CALL_OUT_ALLOW
#   iMPU - (any)
#   cOAD - (any)
class RPL_DN_CALL_OUT_ALLOW
  attr_accessor :iMPU
  attr_accessor :cOAD

  def initialize(iMPU = nil, cOAD = nil)
    @iMPU = iMPU
    @cOAD = cOAD
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_DN_CALL_OUT_ALLOWResponse
#   result - ResultType
class RPL_DN_CALL_OUT_ALLOWResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DN_CALL_OUT_ALLOW
#   iMPU - (any)
class DSP_DN_CALL_OUT_ALLOW
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DN_CALL_OUT_ALLOWResponse
#   result - DSP_DN_CALL_OUT_ALLOWType
class DSP_DN_CALL_OUT_ALLOWResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_DND
#   iMPU - (any)
#   sG - (any)
#   sTARTDATE - (any)
#   sYEAR - (any)
#   sMONTH - (any)
#   sDATE - (any)
#   sTIME - (any)
#   sHOUR - (any)
#   sMINUTE - (any)
#   eNDDATE - (any)
#   eYEAR - (any)
#   eMONTH - (any)
#   eDATE - (any)
#   eTIME - (any)
#   eHOUR - (any)
#   eMINUTE - (any)
#   dURATION - (any)
#   eMODE - (any)
#   dNDWP - (any)
#   sETMON - (any)
#   sETDAY - (any)
#   tREAT - (any)
#   bTREAT - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_DND
  attr_accessor :iMPU
  attr_accessor :sG
  attr_accessor :sTARTDATE
  attr_accessor :sYEAR
  attr_accessor :sMONTH
  attr_accessor :sDATE
  attr_accessor :sTIME
  attr_accessor :sHOUR
  attr_accessor :sMINUTE
  attr_accessor :eNDDATE
  attr_accessor :eYEAR
  attr_accessor :eMONTH
  attr_accessor :eDATE
  attr_accessor :eTIME
  attr_accessor :eHOUR
  attr_accessor :eMINUTE
  attr_accessor :dURATION
  attr_accessor :eMODE
  attr_accessor :dNDWP
  attr_accessor :sETMON
  attr_accessor :sETDAY
  attr_accessor :tREAT
  attr_accessor :bTREAT
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, sG = nil, sTARTDATE = nil, sYEAR = nil, sMONTH = nil, sDATE = nil, sTIME = nil, sHOUR = nil, sMINUTE = nil, eNDDATE = nil, eYEAR = nil, eMONTH = nil, eDATE = nil, eTIME = nil, eHOUR = nil, eMINUTE = nil, dURATION = nil, eMODE = nil, dNDWP = nil, sETMON = nil, sETDAY = nil, tREAT = nil, bTREAT = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @sG = sG
    @sTARTDATE = sTARTDATE
    @sYEAR = sYEAR
    @sMONTH = sMONTH
    @sDATE = sDATE
    @sTIME = sTIME
    @sHOUR = sHOUR
    @sMINUTE = sMINUTE
    @eNDDATE = eNDDATE
    @eYEAR = eYEAR
    @eMONTH = eMONTH
    @eDATE = eDATE
    @eTIME = eTIME
    @eHOUR = eHOUR
    @eMINUTE = eMINUTE
    @dURATION = dURATION
    @eMODE = eMODE
    @dNDWP = dNDWP
    @sETMON = sETMON
    @sETDAY = sETDAY
    @tREAT = tREAT
    @bTREAT = bTREAT
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_DNDResponse
#   result - ResultType
class REG_DNDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_DND
#   iMPU - (any)
#   sG - (any)
class RPL_DND
  attr_accessor :iMPU
  attr_accessor :sG

  def initialize(iMPU = nil, sG = nil)
    @iMPU = iMPU
    @sG = sG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_DNDResponse
#   result - ResultType
class RPL_DNDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DND
#   iMPU - (any)
class DSP_DND
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DNDResponse
#   result - DSP_DNDType
class DSP_DNDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CBA
#   iMPU - (any)
#   cBABLV - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_CBA
  attr_accessor :iMPU
  attr_accessor :cBABLV
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, cBABLV = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @cBABLV = cBABLV
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CBAResponse
#   result - ResultType
class REG_CBAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CBA
#   iMPU - (any)
#   cBABLV - (any)
class RPL_CBA
  attr_accessor :iMPU
  attr_accessor :cBABLV

  def initialize(iMPU = nil, cBABLV = nil)
    @iMPU = iMPU
    @cBABLV = cBABLV
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CBAResponse
#   result - ResultType
class RPL_CBAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CBA
#   iMPU - (any)
class DSP_CBA
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CBAResponse
#   result - DSP_CBAType
class DSP_CBAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_TMP_LIN
#   iMPU - (any)
#   tLDATE - (any)
#   yEAR - (any)
#   mONTH - (any)
#   dAY - (any)
#   tLDUR - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_TMP_LIN
  attr_accessor :iMPU
  attr_accessor :tLDATE
  attr_accessor :yEAR
  attr_accessor :mONTH
  attr_accessor :dAY
  attr_accessor :tLDUR
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, tLDATE = nil, yEAR = nil, mONTH = nil, dAY = nil, tLDUR = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @tLDATE = tLDATE
    @yEAR = yEAR
    @mONTH = mONTH
    @dAY = dAY
    @tLDUR = tLDUR
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_TMP_LINResponse
#   result - ResultType
class REG_TMP_LINResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_TMP_LIN
#   iMPU - (any)
class RPL_TMP_LIN
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_TMP_LINResponse
#   result - ResultType
class RPL_TMP_LINResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_TMP_LIN
#   iMPU - (any)
class DSP_TMP_LIN
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_TMP_LINResponse
#   result - DSP_TMP_LINType
class DSP_TMP_LINResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CODEC_CNTRL
#   iMPU - (any)
#   g711_64K_A_LAW - (any)
#   g711_64K_U_LAW - (any)
#   g723 - (any)
#   g726 - (any)
#   g729 - (any)
#   aMR - (any)
#   eVRC - (any)
#   eVRCB - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_CODEC_CNTRL
  attr_accessor :iMPU
  attr_accessor :g711_64K_A_LAW
  attr_accessor :g711_64K_U_LAW
  attr_accessor :g723
  attr_accessor :g726
  attr_accessor :g729
  attr_accessor :aMR
  attr_accessor :eVRC
  attr_accessor :eVRCB
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, g711_64K_A_LAW = nil, g711_64K_U_LAW = nil, g723 = nil, g726 = nil, g729 = nil, aMR = nil, eVRC = nil, eVRCB = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @g711_64K_A_LAW = g711_64K_A_LAW
    @g711_64K_U_LAW = g711_64K_U_LAW
    @g723 = g723
    @g726 = g726
    @g729 = g729
    @aMR = aMR
    @eVRC = eVRC
    @eVRCB = eVRCB
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CODEC_CNTRLResponse
#   result - ResultType
class REG_CODEC_CNTRLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CODEC_CNTRL
#   iMPU - (any)
class RPL_CODEC_CNTRL
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CODEC_CNTRLResponse
#   result - ResultType
class RPL_CODEC_CNTRLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CODEC_CNTRL
#   iMPU - (any)
class DSP_CODEC_CNTRL
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CODEC_CNTRLResponse
#   result - DSP_CODEC_CNTRLType
class DSP_CODEC_CNTRLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_SIC
#   iMPU - (any)
#   sICIDX - (any)
#   sIIMPU - (any)
#   sICBT - (any)
#   sYEAR - (any)
#   sMONTH - (any)
#   sDATE - (any)
#   sHOUR - (any)
#   sMINUTE - (any)
#   sICET - (any)
#   eYEAR - (any)
#   eMONTH - (any)
#   eDATE - (any)
#   eHOUR - (any)
#   eMINUTE - (any)
#   sICPER - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_SIC
  attr_accessor :iMPU
  attr_accessor :sICIDX
  attr_accessor :sIIMPU
  attr_accessor :sICBT
  attr_accessor :sYEAR
  attr_accessor :sMONTH
  attr_accessor :sDATE
  attr_accessor :sHOUR
  attr_accessor :sMINUTE
  attr_accessor :sICET
  attr_accessor :eYEAR
  attr_accessor :eMONTH
  attr_accessor :eDATE
  attr_accessor :eHOUR
  attr_accessor :eMINUTE
  attr_accessor :sICPER
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, sICIDX = nil, sIIMPU = nil, sICBT = nil, sYEAR = nil, sMONTH = nil, sDATE = nil, sHOUR = nil, sMINUTE = nil, sICET = nil, eYEAR = nil, eMONTH = nil, eDATE = nil, eHOUR = nil, eMINUTE = nil, sICPER = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @sICIDX = sICIDX
    @sIIMPU = sIIMPU
    @sICBT = sICBT
    @sYEAR = sYEAR
    @sMONTH = sMONTH
    @sDATE = sDATE
    @sHOUR = sHOUR
    @sMINUTE = sMINUTE
    @sICET = sICET
    @eYEAR = eYEAR
    @eMONTH = eMONTH
    @eDATE = eDATE
    @eHOUR = eHOUR
    @eMINUTE = eMINUTE
    @sICPER = sICPER
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_SICResponse
#   result - ResultType
class REG_SICResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_SIC
#   iMPU - (any)
#   sICIDX - (any)
class RPL_SIC
  attr_accessor :iMPU
  attr_accessor :sICIDX

  def initialize(iMPU = nil, sICIDX = nil)
    @iMPU = iMPU
    @sICIDX = sICIDX
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_SICResponse
#   result - ResultType
class RPL_SICResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SIC
#   iMPU - (any)
class DSP_SIC
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SICResponse
#   result - DSP_SICType
class DSP_SICResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFS
#   iMPU - (any)
#   eP - (any)
#   cSIMPU - (any)
#   cFSBT - (any)
#   sHOUR - (any)
#   sMINUTE - (any)
#   cFSET - (any)
#   eHOUR - (any)
#   eMINUTE - (any)
#   oFWEEK - (any)
#   fTIMPU - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_CFS
  attr_accessor :iMPU
  attr_accessor :eP
  attr_accessor :cSIMPU
  attr_accessor :cFSBT
  attr_accessor :sHOUR
  attr_accessor :sMINUTE
  attr_accessor :cFSET
  attr_accessor :eHOUR
  attr_accessor :eMINUTE
  attr_accessor :oFWEEK
  attr_accessor :fTIMPU
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, eP = nil, cSIMPU = nil, cFSBT = nil, sHOUR = nil, sMINUTE = nil, cFSET = nil, eHOUR = nil, eMINUTE = nil, oFWEEK = nil, fTIMPU = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @eP = eP
    @cSIMPU = cSIMPU
    @cFSBT = cFSBT
    @sHOUR = sHOUR
    @sMINUTE = sMINUTE
    @cFSET = cFSET
    @eHOUR = eHOUR
    @eMINUTE = eMINUTE
    @oFWEEK = oFWEEK
    @fTIMPU = fTIMPU
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFSResponse
#   result - ResultType
class REG_CFSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_CFS
#   iMPU - (any)
#   eP - (any)
#   fTIMPU - (any)
class ACT_CFS
  attr_accessor :iMPU
  attr_accessor :eP
  attr_accessor :fTIMPU

  def initialize(iMPU = nil, eP = nil, fTIMPU = nil)
    @iMPU = iMPU
    @eP = eP
    @fTIMPU = fTIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_CFSResponse
#   result - ResultType
class ACT_CFSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_CFS
#   iMPU - (any)
#   eP - (any)
class DEA_CFS
  attr_accessor :iMPU
  attr_accessor :eP

  def initialize(iMPU = nil, eP = nil)
    @iMPU = iMPU
    @eP = eP
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_CFSResponse
#   result - ResultType
class DEA_CFSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFS
#   iMPU - (any)
#   eP - (any)
class RPL_CFS
  attr_accessor :iMPU
  attr_accessor :eP

  def initialize(iMPU = nil, eP = nil)
    @iMPU = iMPU
    @eP = eP
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFSResponse
#   result - ResultType
class RPL_CFSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFS
#   iMPU - (any)
class DSP_CFS
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFSResponse
#   result - DSP_CFSType
class DSP_CFSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_DN_CALL_OUT_BAR
#   iMPU - (any)
#   cOBPNO - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_DN_CALL_OUT_BAR
  attr_accessor :iMPU
  attr_accessor :cOBPNO
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, cOBPNO = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @cOBPNO = cOBPNO
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_DN_CALL_OUT_BARResponse
#   result - ResultType
class REG_DN_CALL_OUT_BARResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_DN_CALL_OUT_BAR
#   iMPU - (any)
#   cOBPNO - (any)
class RPL_DN_CALL_OUT_BAR
  attr_accessor :iMPU
  attr_accessor :cOBPNO

  def initialize(iMPU = nil, cOBPNO = nil)
    @iMPU = iMPU
    @cOBPNO = cOBPNO
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_DN_CALL_OUT_BARResponse
#   result - ResultType
class RPL_DN_CALL_OUT_BARResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DN_CALL_OUT_BAR
#   iMPU - (any)
class DSP_DN_CALL_OUT_BAR
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DN_CALL_OUT_BARResponse
#   result - DSP_DN_CALL_OUT_BARType
class DSP_DN_CALL_OUT_BARResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFSB
#   iMPU - (any)
#   cSBSVT - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_CFSB
  attr_accessor :iMPU
  attr_accessor :cSBSVT
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, cSBSVT = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @cSBSVT = cSBSVT
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFSBResponse
#   result - ResultType
class REG_CFSBResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFSB
#   iMPU - (any)
class RPL_CFSB
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFSBResponse
#   result - ResultType
class RPL_CFSBResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFSB
#   iMPU - (any)
class DSP_CFSB
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFSBResponse
#   result - DSP_CFSBType
class DSP_CFSBResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFB
#   iMPU - (any)
#   bSV - (any)
#   bSG - (any)
#   dIMPU - (any)
#   sUBINF - (any)
#   nOTIFYCALLER - (any)
#   nOTIFYFORWARDER - (any)
#   pRVTOCER - (any)
#   pRVTODES - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_CFB
  attr_accessor :iMPU
  attr_accessor :bSV
  attr_accessor :bSG
  attr_accessor :dIMPU
  attr_accessor :sUBINF
  attr_accessor :nOTIFYCALLER
  attr_accessor :nOTIFYFORWARDER
  attr_accessor :pRVTOCER
  attr_accessor :pRVTODES
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, bSV = nil, bSG = nil, dIMPU = nil, sUBINF = nil, nOTIFYCALLER = nil, nOTIFYFORWARDER = nil, pRVTOCER = nil, pRVTODES = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @bSV = bSV
    @bSG = bSG
    @dIMPU = dIMPU
    @sUBINF = sUBINF
    @nOTIFYCALLER = nOTIFYCALLER
    @nOTIFYFORWARDER = nOTIFYFORWARDER
    @pRVTOCER = pRVTOCER
    @pRVTODES = pRVTODES
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFBResponse
#   result - ResultType
class REG_CFBResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFB
#   iMPU - (any)
#   bSG - (any)
class RPL_CFB
  attr_accessor :iMPU
  attr_accessor :bSG

  def initialize(iMPU = nil, bSG = nil)
    @iMPU = iMPU
    @bSG = bSG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFBResponse
#   result - ResultType
class RPL_CFBResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFB
#   iMPU - (any)
class DSP_CFB
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFBResponse
#   result - DSP_CFBType
class DSP_CFBResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_CFB
#   iMPU - (any)
#   bSG - (any)
class ACT_CFB
  attr_accessor :iMPU
  attr_accessor :bSG

  def initialize(iMPU = nil, bSG = nil)
    @iMPU = iMPU
    @bSG = bSG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_CFBResponse
#   result - ResultType
class ACT_CFBResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_CFB
#   iMPU - (any)
#   bSG - (any)
class DEA_CFB
  attr_accessor :iMPU
  attr_accessor :bSG

  def initialize(iMPU = nil, bSG = nil)
    @iMPU = iMPU
    @bSG = bSG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_CFBResponse
#   result - ResultType
class DEA_CFBResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFNR
#   iMPU - (any)
#   bSV - (any)
#   bSG - (any)
#   dIMPU - (any)
#   sUBINF - (any)
#   nOTIFYCALLER - (any)
#   nOTIFYFORWARDER - (any)
#   pRVTOCER - (any)
#   pRVTODES - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_CFNR
  attr_accessor :iMPU
  attr_accessor :bSV
  attr_accessor :bSG
  attr_accessor :dIMPU
  attr_accessor :sUBINF
  attr_accessor :nOTIFYCALLER
  attr_accessor :nOTIFYFORWARDER
  attr_accessor :pRVTOCER
  attr_accessor :pRVTODES
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, bSV = nil, bSG = nil, dIMPU = nil, sUBINF = nil, nOTIFYCALLER = nil, nOTIFYFORWARDER = nil, pRVTOCER = nil, pRVTODES = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @bSV = bSV
    @bSG = bSG
    @dIMPU = dIMPU
    @sUBINF = sUBINF
    @nOTIFYCALLER = nOTIFYCALLER
    @nOTIFYFORWARDER = nOTIFYFORWARDER
    @pRVTOCER = pRVTOCER
    @pRVTODES = pRVTODES
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFNRResponse
#   result - ResultType
class REG_CFNRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFNR
#   iMPU - (any)
#   bSG - (any)
class RPL_CFNR
  attr_accessor :iMPU
  attr_accessor :bSG

  def initialize(iMPU = nil, bSG = nil)
    @iMPU = iMPU
    @bSG = bSG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFNRResponse
#   result - ResultType
class RPL_CFNRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFNR
#   iMPU - (any)
class DSP_CFNR
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFNRResponse
#   result - DSP_CFNRType
class DSP_CFNRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_CFNR
#   iMPU - (any)
#   bSG - (any)
class ACT_CFNR
  attr_accessor :iMPU
  attr_accessor :bSG

  def initialize(iMPU = nil, bSG = nil)
    @iMPU = iMPU
    @bSG = bSG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_CFNRResponse
#   result - ResultType
class ACT_CFNRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_CFNR
#   iMPU - (any)
#   bSG - (any)
class DEA_CFNR
  attr_accessor :iMPU
  attr_accessor :bSG

  def initialize(iMPU = nil, bSG = nil)
    @iMPU = iMPU
    @bSG = bSG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_CFNRResponse
#   result - ResultType
class DEA_CFNRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFNL
#   iMPU - (any)
#   bSV - (any)
#   dIMPU - (any)
#   sUBINF - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_CFNL
  attr_accessor :iMPU
  attr_accessor :bSV
  attr_accessor :dIMPU
  attr_accessor :sUBINF
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, bSV = nil, dIMPU = nil, sUBINF = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @bSV = bSV
    @dIMPU = dIMPU
    @sUBINF = sUBINF
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFNLResponse
#   result - ResultType
class REG_CFNLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFNL
#   iMPU - (any)
class RPL_CFNL
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFNLResponse
#   result - ResultType
class RPL_CFNLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFNL
#   iMPU - (any)
class DSP_CFNL
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFNLResponse
#   result - DSP_CFNLType
class DSP_CFNLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFNRC
#   iMPU - (any)
#   bSV - (any)
#   bSG - (any)
#   dIMPU - (any)
#   sUBINF - (any)
#   nOTIFYCALLER - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_CFNRC
  attr_accessor :iMPU
  attr_accessor :bSV
  attr_accessor :bSG
  attr_accessor :dIMPU
  attr_accessor :sUBINF
  attr_accessor :nOTIFYCALLER
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, bSV = nil, bSG = nil, dIMPU = nil, sUBINF = nil, nOTIFYCALLER = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @bSV = bSV
    @bSG = bSG
    @dIMPU = dIMPU
    @sUBINF = sUBINF
    @nOTIFYCALLER = nOTIFYCALLER
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFNRCResponse
#   result - ResultType
class REG_CFNRCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFNRC
#   iMPU - (any)
#   bSG - (any)
class RPL_CFNRC
  attr_accessor :iMPU
  attr_accessor :bSG

  def initialize(iMPU = nil, bSG = nil)
    @iMPU = iMPU
    @bSG = bSG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFNRCResponse
#   result - ResultType
class RPL_CFNRCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFNRC
#   iMPU - (any)
class DSP_CFNRC
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFNRCResponse
#   result - DSP_CFNRCType
class DSP_CFNRCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_CFNRC
#   iMPU - (any)
#   bSG - (any)
class ACT_CFNRC
  attr_accessor :iMPU
  attr_accessor :bSG

  def initialize(iMPU = nil, bSG = nil)
    @iMPU = iMPU
    @bSG = bSG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_CFNRCResponse
#   result - ResultType
class ACT_CFNRCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_CFNRC
#   iMPU - (any)
#   bSG - (any)
class DEA_CFNRC
  attr_accessor :iMPU
  attr_accessor :bSG

  def initialize(iMPU = nil, bSG = nil)
    @iMPU = iMPU
    @bSG = bSG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_CFNRCResponse
#   result - ResultType
class DEA_CFNRCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CWCFNR
#   iMPU - (any)
#   bSV - (any)
#   dIMPU - (any)
#   sUBINF - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_CWCFNR
  attr_accessor :iMPU
  attr_accessor :bSV
  attr_accessor :dIMPU
  attr_accessor :sUBINF
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, bSV = nil, dIMPU = nil, sUBINF = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @bSV = bSV
    @dIMPU = dIMPU
    @sUBINF = sUBINF
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CWCFNRResponse
#   result - ResultType
class REG_CWCFNRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CWCFNR
#   iMPU - (any)
class RPL_CWCFNR
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CWCFNRResponse
#   result - ResultType
class RPL_CWCFNRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CWCFNR
#   iMPU - (any)
class DSP_CWCFNR
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CWCFNRResponse
#   result - DSP_CWCFNRType
class DSP_CWCFNRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_MRINGMODE
#   iMPU - (any)
#   mRINGMODE - (any)
#   rELBUSY - (any)
#   rELREJ - (any)
#   rINGTIME - (any)
#   cFMODE - (any)
#   iMPU1 - (any)
#   iMPU2 - (any)
#   iMPU3 - (any)
#   iMPU4 - (any)
#   iMPU5 - (any)
#   iMPU6 - (any)
#   iMPU7 - (any)
#   iMPU8 - (any)
#   iMPU9 - (any)
#   iMPU10 - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_MRINGMODE
  attr_accessor :iMPU
  attr_accessor :mRINGMODE
  attr_accessor :rELBUSY
  attr_accessor :rELREJ
  attr_accessor :rINGTIME
  attr_accessor :cFMODE
  attr_accessor :iMPU1
  attr_accessor :iMPU2
  attr_accessor :iMPU3
  attr_accessor :iMPU4
  attr_accessor :iMPU5
  attr_accessor :iMPU6
  attr_accessor :iMPU7
  attr_accessor :iMPU8
  attr_accessor :iMPU9
  attr_accessor :iMPU10
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, mRINGMODE = nil, rELBUSY = nil, rELREJ = nil, rINGTIME = nil, cFMODE = nil, iMPU1 = nil, iMPU2 = nil, iMPU3 = nil, iMPU4 = nil, iMPU5 = nil, iMPU6 = nil, iMPU7 = nil, iMPU8 = nil, iMPU9 = nil, iMPU10 = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @mRINGMODE = mRINGMODE
    @rELBUSY = rELBUSY
    @rELREJ = rELREJ
    @rINGTIME = rINGTIME
    @cFMODE = cFMODE
    @iMPU1 = iMPU1
    @iMPU2 = iMPU2
    @iMPU3 = iMPU3
    @iMPU4 = iMPU4
    @iMPU5 = iMPU5
    @iMPU6 = iMPU6
    @iMPU7 = iMPU7
    @iMPU8 = iMPU8
    @iMPU9 = iMPU9
    @iMPU10 = iMPU10
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_MRINGMODEResponse
#   result - ResultType
class REG_MRINGMODEResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_MRINGMODE
#   iMPU - (any)
class RPL_MRINGMODE
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_MRINGMODEResponse
#   result - ResultType
class RPL_MRINGMODEResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_MRINGMODE
#   iMPU - (any)
class DSP_MRINGMODE
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_MRINGMODEResponse
#   result - DSP_MRINGMODEType
class DSP_MRINGMODEResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CIS
#   iMPU - (any)
#   dUALRING - (any)
#   iMPUPC - (any)
#   rELBUSY - (any)
#   rELREJ - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_CIS
  attr_accessor :iMPU
  attr_accessor :dUALRING
  attr_accessor :iMPUPC
  attr_accessor :rELBUSY
  attr_accessor :rELREJ
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, dUALRING = nil, iMPUPC = nil, rELBUSY = nil, rELREJ = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @dUALRING = dUALRING
    @iMPUPC = iMPUPC
    @rELBUSY = rELBUSY
    @rELREJ = rELREJ
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CISResponse
#   result - ResultType
class REG_CISResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CIS
#   iMPU - (any)
class RPL_CIS
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CISResponse
#   result - ResultType
class RPL_CISResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CIS
#   iMPU - (any)
class DSP_CIS
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CISResponse
#   result - DSP_CISType
class DSP_CISResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CFDATA
#   iMPU - (any)
#   cFR - (any)
#   dIMPU - (any)
class ADD_CFDATA
  attr_accessor :iMPU
  attr_accessor :cFR
  attr_accessor :dIMPU

  def initialize(iMPU = nil, cFR = nil, dIMPU = nil)
    @iMPU = iMPU
    @cFR = cFR
    @dIMPU = dIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CFDATAResponse
#   result - ResultType
class ADD_CFDATAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CFDATA
#   iMPU - (any)
#   cFR - (any)
#   dIMPU - (any)
class RMV_CFDATA
  attr_accessor :iMPU
  attr_accessor :cFR
  attr_accessor :dIMPU

  def initialize(iMPU = nil, cFR = nil, dIMPU = nil)
    @iMPU = iMPU
    @cFR = cFR
    @dIMPU = dIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CFDATAResponse
#   result - ResultType
class RMV_CFDATAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CFDATA
#   iMPU - (any)
class LST_CFDATA
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CFDATAResponse
#   result - LST_CFDATAType
class LST_CFDATAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_NUMCHG
#   iMPU - (any)
#   nIMPU - (any)
#   cMODE - (any)
#   sMFLAG - (any)
class ADD_NUMCHG
  attr_accessor :iMPU
  attr_accessor :nIMPU
  attr_accessor :cMODE
  attr_accessor :sMFLAG

  def initialize(iMPU = nil, nIMPU = nil, cMODE = nil, sMFLAG = nil)
    @iMPU = iMPU
    @nIMPU = nIMPU
    @cMODE = cMODE
    @sMFLAG = sMFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_NUMCHGResponse
#   result - ResultType
class ADD_NUMCHGResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_NUMCHG
#   iMPU - (any)
#   nIMPU - (any)
#   cMODE - (any)
#   sMFLAG - (any)
class MOD_NUMCHG
  attr_accessor :iMPU
  attr_accessor :nIMPU
  attr_accessor :cMODE
  attr_accessor :sMFLAG

  def initialize(iMPU = nil, nIMPU = nil, cMODE = nil, sMFLAG = nil)
    @iMPU = iMPU
    @nIMPU = nIMPU
    @cMODE = cMODE
    @sMFLAG = sMFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_NUMCHGResponse
#   result - ResultType
class MOD_NUMCHGResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_NUMCHG
#   iMPU - (any)
class RMV_NUMCHG
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_NUMCHGResponse
#   result - ResultType
class RMV_NUMCHGResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_NUMCHG
#   iMPU - (any)
class LST_NUMCHG
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_NUMCHGResponse
#   result - LST_NUMCHGType
class LST_NUMCHGResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_BLKNUM
#   iMPU - (any)
#   bIMPU - (any)
class ADD_BLKNUM
  attr_accessor :iMPU
  attr_accessor :bIMPU

  def initialize(iMPU = nil, bIMPU = nil)
    @iMPU = iMPU
    @bIMPU = bIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_BLKNUMResponse
#   result - ResultType
class ADD_BLKNUMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_BLKNUM
#   iMPU - (any)
#   bIMPU - (any)
class RMV_BLKNUM
  attr_accessor :iMPU
  attr_accessor :bIMPU

  def initialize(iMPU = nil, bIMPU = nil)
    @iMPU = iMPU
    @bIMPU = bIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_BLKNUMResponse
#   result - ResultType
class RMV_BLKNUMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_BLKNUM
#   iMPU - (any)
class LST_BLKNUM
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_BLKNUMResponse
#   result - LST_BLKNUMType
class LST_BLKNUMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_WTNUM
#   iMPU - (any)
#   wTIMPU - (any)
class ADD_WTNUM
  attr_accessor :iMPU
  attr_accessor :wTIMPU

  def initialize(iMPU = nil, wTIMPU = nil)
    @iMPU = iMPU
    @wTIMPU = wTIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_WTNUMResponse
#   result - ResultType
class ADD_WTNUMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_WTNUM
#   iMPU - (any)
#   wTIMPU - (any)
class RMV_WTNUM
  attr_accessor :iMPU
  attr_accessor :wTIMPU

  def initialize(iMPU = nil, wTIMPU = nil)
    @iMPU = iMPU
    @wTIMPU = wTIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_WTNUMResponse
#   result - ResultType
class RMV_WTNUMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WTNUM
#   iMPU - (any)
class LST_WTNUM
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WTNUMResponse
#   result - LST_WTNUMType
class LST_WTNUMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}SET_OWSBR
#   iMPU - (any)
#   uS - (any)
#   lTOS - (any)
class SET_OWSBR
  attr_accessor :iMPU
  attr_accessor :uS
  attr_accessor :lTOS

  def initialize(iMPU = nil, uS = nil, lTOS = nil)
    @iMPU = iMPU
    @uS = uS
    @lTOS = lTOS
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}SET_OWSBRResponse
#   result - ResultType
class SET_OWSBRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_OWSBR
#   iMPU - (any)
class RMV_OWSBR
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_OWSBRResponse
#   result - ResultType
class RMV_OWSBRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_OWSBR
#   iMPU - (any)
class LST_OWSBR
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_OWSBRResponse
#   result - LST_OWSBRType
class LST_OWSBRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}PRK_OWSBR
#   iMPU - (any)
#   iCR - (any)
class PRK_OWSBR
  attr_accessor :iMPU
  attr_accessor :iCR

  def initialize(iMPU = nil, iCR = nil)
    @iMPU = iMPU
    @iCR = iCR
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}PRK_OWSBRResponse
#   result - ResultType
class PRK_OWSBRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RES_OWSBR
#   iMPU - (any)
class RES_OWSBR
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RES_OWSBRResponse
#   result - ResultType
class RES_OWSBRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_STRATEGY
#   iMPU - (any)
#   gREENSTR - (any)
#   rEDSTR - (any)
#   oTHSTR - (any)
class ADD_STRATEGY
  attr_accessor :iMPU
  attr_accessor :gREENSTR
  attr_accessor :rEDSTR
  attr_accessor :oTHSTR

  def initialize(iMPU = nil, gREENSTR = nil, rEDSTR = nil, oTHSTR = nil)
    @iMPU = iMPU
    @gREENSTR = gREENSTR
    @rEDSTR = rEDSTR
    @oTHSTR = oTHSTR
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_STRATEGYResponse
#   result - ResultType
class ADD_STRATEGYResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_STRATEGY
#   iMPU - (any)
#   gREENSTR - (any)
#   rEDSTR - (any)
#   oTHSTR - (any)
class MOD_STRATEGY
  attr_accessor :iMPU
  attr_accessor :gREENSTR
  attr_accessor :rEDSTR
  attr_accessor :oTHSTR

  def initialize(iMPU = nil, gREENSTR = nil, rEDSTR = nil, oTHSTR = nil)
    @iMPU = iMPU
    @gREENSTR = gREENSTR
    @rEDSTR = rEDSTR
    @oTHSTR = oTHSTR
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_STRATEGYResponse
#   result - ResultType
class MOD_STRATEGYResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_STRATEGY
#   iMPU - (any)
class LST_STRATEGY
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_STRATEGYResponse
#   result - LST_STRATEGYType
class LST_STRATEGYResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_STRATEGY
#   iMPU - (any)
class RMV_STRATEGY
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_STRATEGYResponse
#   result - ResultType
class RMV_STRATEGYResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_GREENNUM
#   iMPU - (any)
#   gIMPU - (any)
class ADD_GREENNUM
  attr_accessor :iMPU
  attr_accessor :gIMPU

  def initialize(iMPU = nil, gIMPU = nil)
    @iMPU = iMPU
    @gIMPU = gIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_GREENNUMResponse
#   result - ResultType
class ADD_GREENNUMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_GREENNUM
#   iMPU - (any)
#   gIMPU - (any)
class RMV_GREENNUM
  attr_accessor :iMPU
  attr_accessor :gIMPU

  def initialize(iMPU = nil, gIMPU = nil)
    @iMPU = iMPU
    @gIMPU = gIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_GREENNUMResponse
#   result - ResultType
class RMV_GREENNUMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_GREENNUM
#   iMPU - (any)
class LST_GREENNUM
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_GREENNUMResponse
#   result - LST_GREENNUMType
class LST_GREENNUMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_REDNUM
#   iMPU - (any)
#   rIMPU - (any)
class ADD_REDNUM
  attr_accessor :iMPU
  attr_accessor :rIMPU

  def initialize(iMPU = nil, rIMPU = nil)
    @iMPU = iMPU
    @rIMPU = rIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_REDNUMResponse
#   result - ResultType
class ADD_REDNUMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_REDNUM
#   iMPU - (any)
#   rIMPU - (any)
class RMV_REDNUM
  attr_accessor :iMPU
  attr_accessor :rIMPU

  def initialize(iMPU = nil, rIMPU = nil)
    @iMPU = iMPU
    @rIMPU = rIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_REDNUMResponse
#   result - ResultType
class RMV_REDNUMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_REDNUM
#   iMPU - (any)
class LST_REDNUM
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_REDNUMResponse
#   result - LST_REDNUMType
class LST_REDNUMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_BAOC
#   iMPU - (any)
#   bSG - (any)
class ACT_BAOC
  attr_accessor :iMPU
  attr_accessor :bSG

  def initialize(iMPU = nil, bSG = nil)
    @iMPU = iMPU
    @bSG = bSG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_BAOCResponse
#   result - ResultType
class ACT_BAOCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BAOC
#   iMPU - (any)
class DSP_BAOC
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BAOCResponse
#   result - DSP_BAOCType
class DSP_BAOCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_BAOC
#   iMPU - (any)
#   bSG - (any)
class DEA_BAOC
  attr_accessor :iMPU
  attr_accessor :bSG

  def initialize(iMPU = nil, bSG = nil)
    @iMPU = iMPU
    @bSG = bSG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_BAOCResponse
#   result - ResultType
class DEA_BAOCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_BOIC
#   iMPU - (any)
#   bSG - (any)
class ACT_BOIC
  attr_accessor :iMPU
  attr_accessor :bSG

  def initialize(iMPU = nil, bSG = nil)
    @iMPU = iMPU
    @bSG = bSG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_BOICResponse
#   result - ResultType
class ACT_BOICResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BOIC
#   iMPU - (any)
class DSP_BOIC
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BOICResponse
#   result - DSP_BOICType
class DSP_BOICResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_BOIC
#   iMPU - (any)
#   bSG - (any)
class DEA_BOIC
  attr_accessor :iMPU
  attr_accessor :bSG

  def initialize(iMPU = nil, bSG = nil)
    @iMPU = iMPU
    @bSG = bSG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_BOICResponse
#   result - ResultType
class DEA_BOICResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_BOICEXHC
#   iMPU - (any)
#   bSG - (any)
class ACT_BOICEXHC
  attr_accessor :iMPU
  attr_accessor :bSG

  def initialize(iMPU = nil, bSG = nil)
    @iMPU = iMPU
    @bSG = bSG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_BOICEXHCResponse
#   result - ResultType
class ACT_BOICEXHCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BOICEXHC
#   iMPU - (any)
class DSP_BOICEXHC
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BOICEXHCResponse
#   result - DSP_BOICEXHCType
class DSP_BOICEXHCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_BOICEXHC
#   iMPU - (any)
#   bSG - (any)
class DEA_BOICEXHC
  attr_accessor :iMPU
  attr_accessor :bSG

  def initialize(iMPU = nil, bSG = nil)
    @iMPU = iMPU
    @bSG = bSG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_BOICEXHCResponse
#   result - ResultType
class DEA_BOICEXHCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_BAIC
#   iMPU - (any)
#   bSG - (any)
class ACT_BAIC
  attr_accessor :iMPU
  attr_accessor :bSG

  def initialize(iMPU = nil, bSG = nil)
    @iMPU = iMPU
    @bSG = bSG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_BAICResponse
#   result - ResultType
class ACT_BAICResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BAIC
#   iMPU - (any)
class DSP_BAIC
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BAICResponse
#   result - DSP_BAICType
class DSP_BAICResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_BAIC
#   iMPU - (any)
#   bSG - (any)
class DEA_BAIC
  attr_accessor :iMPU
  attr_accessor :bSG

  def initialize(iMPU = nil, bSG = nil)
    @iMPU = iMPU
    @bSG = bSG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_BAICResponse
#   result - ResultType
class DEA_BAICResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_BICROM
#   iMPU - (any)
#   bSG - (any)
class ACT_BICROM
  attr_accessor :iMPU
  attr_accessor :bSG

  def initialize(iMPU = nil, bSG = nil)
    @iMPU = iMPU
    @bSG = bSG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_BICROMResponse
#   result - ResultType
class ACT_BICROMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BICROM
#   iMPU - (any)
class DSP_BICROM
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BICROMResponse
#   result - DSP_BICROMType
class DSP_BICROMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_BICROM
#   iMPU - (any)
#   bSG - (any)
class DEA_BICROM
  attr_accessor :iMPU
  attr_accessor :bSG

  def initialize(iMPU = nil, bSG = nil)
    @iMPU = iMPU
    @bSG = bSG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_BICROMResponse
#   result - ResultType
class DEA_BICROMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_SPEED_DIAL
#   iMPU - (any)
#   aBBRNUMBER - (any)
#   dESTIMPU - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_SPEED_DIAL
  attr_accessor :iMPU
  attr_accessor :aBBRNUMBER
  attr_accessor :dESTIMPU
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, aBBRNUMBER = nil, dESTIMPU = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @aBBRNUMBER = aBBRNUMBER
    @dESTIMPU = dESTIMPU
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_SPEED_DIALResponse
#   result - ResultType
class REG_SPEED_DIALResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_SPEED_DIAL
#   iMPU - (any)
#   aBBRNUMBER - (any)
class RPL_SPEED_DIAL
  attr_accessor :iMPU
  attr_accessor :aBBRNUMBER

  def initialize(iMPU = nil, aBBRNUMBER = nil)
    @iMPU = iMPU
    @aBBRNUMBER = aBBRNUMBER
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_SPEED_DIALResponse
#   result - ResultType
class RPL_SPEED_DIALResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SPEED_DIAL
#   iMPU - (any)
#   aBBRNUMBER - (any)
class DSP_SPEED_DIAL
  attr_accessor :iMPU
  attr_accessor :aBBRNUMBER

  def initialize(iMPU = nil, aBBRNUMBER = nil)
    @iMPU = iMPU
    @aBBRNUMBER = aBBRNUMBER
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SPEED_DIALResponse
#   result - DSP_SPEED_DIALType
class DSP_SPEED_DIALResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_GRNCALL
#   iMPU - (any)
#   bIMPU - (any)
#   bMODE - (any)
#   tHRPTY - (any)
#   tHRPTYTIME - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_GRNCALL
  attr_accessor :iMPU
  attr_accessor :bIMPU
  attr_accessor :bMODE
  attr_accessor :tHRPTY
  attr_accessor :tHRPTYTIME
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, bIMPU = nil, bMODE = nil, tHRPTY = nil, tHRPTYTIME = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @bIMPU = bIMPU
    @bMODE = bMODE
    @tHRPTY = tHRPTY
    @tHRPTYTIME = tHRPTYTIME
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_GRNCALLResponse
#   result - ResultType
class REG_GRNCALLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_GRNCALL
#   iMPU - (any)
class RPL_GRNCALL
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_GRNCALLResponse
#   result - ResultType
class RPL_GRNCALLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_GRNCALL
#   iMPU - (any)
class DSP_GRNCALL
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_GRNCALLResponse
#   result - DSP_GRNCALLType
class DSP_GRNCALLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}SET_UPGRADE
#   iMPU - (any)
#   cMODE - (any)
class SET_UPGRADE
  attr_accessor :iMPU
  attr_accessor :cMODE

  def initialize(iMPU = nil, cMODE = nil)
    @iMPU = iMPU
    @cMODE = cMODE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}SET_UPGRADEResponse
#   result - ResultType
class SET_UPGRADEResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_AUTOCON
#   iMPU - (any)
#   sRVIMPU - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_AUTOCON
  attr_accessor :iMPU
  attr_accessor :sRVIMPU
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, sRVIMPU = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @sRVIMPU = sRVIMPU
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_AUTOCONResponse
#   result - ResultType
class REG_AUTOCONResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_AUTOCON
#   iMPU - (any)
class RPL_AUTOCON
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_AUTOCONResponse
#   result - ResultType
class RPL_AUTOCONResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_AUTOCON
#   iMPU - (any)
class DSP_AUTOCON
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_AUTOCONResponse
#   result - DSP_AUTOCONType
class DSP_AUTOCONResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_NIGHTSRV
#   iMPU - (any)
#   sRVIMPU - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_NIGHTSRV
  attr_accessor :iMPU
  attr_accessor :sRVIMPU
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, sRVIMPU = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @sRVIMPU = sRVIMPU
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_NIGHTSRVResponse
#   result - ResultType
class REG_NIGHTSRVResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_NIGHTSRV
#   iMPU - (any)
class RPL_NIGHTSRV
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_NIGHTSRVResponse
#   result - ResultType
class RPL_NIGHTSRVResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_NIGHTSRV
#   iMPU - (any)
class DSP_NIGHTSRV
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_NIGHTSRVResponse
#   result - DSP_NIGHTSRVType
class DSP_NIGHTSRVResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_BACKNUM
#   iMPU - (any)
#   sRVIMPU - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_BACKNUM
  attr_accessor :iMPU
  attr_accessor :sRVIMPU
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, sRVIMPU = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @sRVIMPU = sRVIMPU
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_BACKNUMResponse
#   result - ResultType
class REG_BACKNUMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_BACKNUM
#   iMPU - (any)
class RPL_BACKNUM
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_BACKNUMResponse
#   result - ResultType
class RPL_BACKNUMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BACKNUM
#   iMPU - (any)
class DSP_BACKNUM
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BACKNUMResponse
#   result - DSP_BACKNUMType
class DSP_BACKNUMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_ABSENT
#   iMPU - (any)
#   vOICE - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_ABSENT
  attr_accessor :iMPU
  attr_accessor :vOICE
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, vOICE = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @vOICE = vOICE
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_ABSENTResponse
#   result - ResultType
class REG_ABSENTResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_ABSENT
#   iMPU - (any)
class RPL_ABSENT
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_ABSENTResponse
#   result - ResultType
class RPL_ABSENTResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ABSENT
#   iMPU - (any)
class DSP_ABSENT
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ABSENTResponse
#   result - DSP_ABSENTType
class DSP_ABSENTResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_ASI
#   iMPU - (any)
#   sTATE - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_ASI
  attr_accessor :iMPU
  attr_accessor :sTATE
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, sTATE = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @sTATE = sTATE
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_ASIResponse
#   result - ResultType
class REG_ASIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_ASI
#   iMPU - (any)
class RPL_ASI
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_ASIResponse
#   result - ResultType
class RPL_ASIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ASI
#   iMPU - (any)
class DSP_ASI
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ASIResponse
#   result - DSP_ASIType
class DSP_ASIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_HOTLINE
#   iMPU - (any)
#   hLITYPE - (any)
#   hLIIMPU - (any)
#   hLIDELAYTIME - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_HOTLINE
  attr_accessor :iMPU
  attr_accessor :hLITYPE
  attr_accessor :hLIIMPU
  attr_accessor :hLIDELAYTIME
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, hLITYPE = nil, hLIIMPU = nil, hLIDELAYTIME = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @hLITYPE = hLITYPE
    @hLIIMPU = hLIIMPU
    @hLIDELAYTIME = hLIDELAYTIME
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_HOTLINEResponse
#   result - ResultType
class REG_HOTLINEResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_HOTLINE
#   iMPU - (any)
class DSP_HOTLINE
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_HOTLINEResponse
#   result - DSP_HOTLINEType
class DSP_HOTLINEResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_HOTLINE
#   iMPU - (any)
class RPL_HOTLINE
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_HOTLINEResponse
#   result - ResultType
class RPL_HOTLINEResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CETMCID
#   iMPU - (any)
#   pHASE - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_CETMCID
  attr_accessor :iMPU
  attr_accessor :pHASE
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, pHASE = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @pHASE = pHASE
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CETMCIDResponse
#   result - ResultType
class REG_CETMCIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CETMCID
#   iMPU - (any)
class DSP_CETMCID
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CETMCIDResponse
#   result - DSP_CETMCIDType
class DSP_CETMCIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CETMCID
#   iMPU - (any)
class RPL_CETMCID
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CETMCIDResponse
#   result - ResultType
class RPL_CETMCIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_MCN
#   iMPU - (any)
#   bIMPU - (any)
#   bNTY - (any)
#   nANTY - (any)
#   nRCNTY - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_MCN
  attr_accessor :iMPU
  attr_accessor :bIMPU
  attr_accessor :bNTY
  attr_accessor :nANTY
  attr_accessor :nRCNTY
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, bIMPU = nil, bNTY = nil, nANTY = nil, nRCNTY = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @bIMPU = bIMPU
    @bNTY = bNTY
    @nANTY = nANTY
    @nRCNTY = nRCNTY
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_MCNResponse
#   result - ResultType
class REG_MCNResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_MCN
#   iMPU - (any)
class DSP_MCN
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_MCNResponse
#   result - DSP_MCNType
class DSP_MCNResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_MCN
#   iMPU - (any)
class RPL_MCN
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_MCNResponse
#   result - ResultType
class RPL_MCNResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}SET_SUBS
#   iMPU - (any)
#   sUBS - (any)
class SET_SUBS
  attr_accessor :iMPU
  attr_accessor :sUBS

  def initialize(iMPU = nil, sUBS = nil)
    @iMPU = iMPU
    @sUBS = sUBS
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}SET_SUBSResponse
#   result - ResultType
class SET_SUBSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_SUBS
#   iMPU - (any)
class LST_SUBS
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_SUBSResponse
#   result - LST_SUBSType
class LST_SUBSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_ONEKEY
#   iMPU - (any)
#   dUALRING - (any)
#   iMPUPC - (any)
#   rELBUSY - (any)
#   rELREJ - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_ONEKEY
  attr_accessor :iMPU
  attr_accessor :dUALRING
  attr_accessor :iMPUPC
  attr_accessor :rELBUSY
  attr_accessor :rELREJ
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, dUALRING = nil, iMPUPC = nil, rELBUSY = nil, rELREJ = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @dUALRING = dUALRING
    @iMPUPC = iMPUPC
    @rELBUSY = rELBUSY
    @rELREJ = rELREJ
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_ONEKEYResponse
#   result - ResultType
class REG_ONEKEYResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_ONEKEY
#   iMPU - (any)
class RPL_ONEKEY
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_ONEKEYResponse
#   result - ResultType
class RPL_ONEKEYResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ONEKEY
#   iMPU - (any)
class DSP_ONEKEY
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ONEKEYResponse
#   result - DSP_ONEKEYType
class DSP_ONEKEYResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_IBDS
#   iMPU - (any)
#   vIMPU - (any)
#   sUBNETID - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_IBDS
  attr_accessor :iMPU
  attr_accessor :vIMPU
  attr_accessor :sUBNETID
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, vIMPU = nil, sUBNETID = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @vIMPU = vIMPU
    @sUBNETID = sUBNETID
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_IBDSResponse
#   result - ResultType
class REG_IBDSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_IBDS
#   iMPU - (any)
class DSP_IBDS
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_IBDSResponse
#   result - DSP_IBDSType
class DSP_IBDSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_IBDS
#   iMPU - (any)
class RPL_IBDS
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_IBDSResponse
#   result - ResultType
class RPL_IBDSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}QRY_IBDS
#   iMPU - (any)
class QRY_IBDS
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}QRY_IBDSResponse
#   result - QRY_IBDSType
class QRY_IBDSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_OBDS
#   iMPU - (any)
#   vIMPU - (any)
#   sUBNETID - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_OBDS
  attr_accessor :iMPU
  attr_accessor :vIMPU
  attr_accessor :sUBNETID
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, vIMPU = nil, sUBNETID = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @vIMPU = vIMPU
    @sUBNETID = sUBNETID
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_OBDSResponse
#   result - ResultType
class REG_OBDSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_OBDS
#   iMPU - (any)
class DSP_OBDS
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_OBDSResponse
#   result - DSP_OBDSType
class DSP_OBDSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_OBDS
#   iMPU - (any)
#   vIMPU - (any)
class RPL_OBDS
  attr_accessor :iMPU
  attr_accessor :vIMPU

  def initialize(iMPU = nil, vIMPU = nil)
    @iMPU = iMPU
    @vIMPU = vIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_OBDSResponse
#   result - ResultType
class RPL_OBDSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_NPAS
#   iMPU - (any)
#   nTN - (any)
#   nSIPN - (any)
#   pYEAR - (any)
#   pMONTH - (any)
#   pDAY - (any)
#   pHOUR - (any)
#   pMINUTE - (any)
#   aYEAR - (any)
#   aMONTH - (any)
#   aDAY - (any)
#   aHOUR - (any)
#   aMINUTE - (any)
#   eYEAR - (any)
#   eMONTH - (any)
#   eDAY - (any)
#   pAMODE - (any)
#   aAMODE - (any)
class ADD_NPAS
  attr_accessor :iMPU
  attr_accessor :nTN
  attr_accessor :nSIPN
  attr_accessor :pYEAR
  attr_accessor :pMONTH
  attr_accessor :pDAY
  attr_accessor :pHOUR
  attr_accessor :pMINUTE
  attr_accessor :aYEAR
  attr_accessor :aMONTH
  attr_accessor :aDAY
  attr_accessor :aHOUR
  attr_accessor :aMINUTE
  attr_accessor :eYEAR
  attr_accessor :eMONTH
  attr_accessor :eDAY
  attr_accessor :pAMODE
  attr_accessor :aAMODE

  def initialize(iMPU = nil, nTN = nil, nSIPN = nil, pYEAR = nil, pMONTH = nil, pDAY = nil, pHOUR = nil, pMINUTE = nil, aYEAR = nil, aMONTH = nil, aDAY = nil, aHOUR = nil, aMINUTE = nil, eYEAR = nil, eMONTH = nil, eDAY = nil, pAMODE = nil, aAMODE = nil)
    @iMPU = iMPU
    @nTN = nTN
    @nSIPN = nSIPN
    @pYEAR = pYEAR
    @pMONTH = pMONTH
    @pDAY = pDAY
    @pHOUR = pHOUR
    @pMINUTE = pMINUTE
    @aYEAR = aYEAR
    @aMONTH = aMONTH
    @aDAY = aDAY
    @aHOUR = aHOUR
    @aMINUTE = aMINUTE
    @eYEAR = eYEAR
    @eMONTH = eMONTH
    @eDAY = eDAY
    @pAMODE = pAMODE
    @aAMODE = aAMODE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_NPASResponse
#   result - ResultType
class ADD_NPASResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_NPAS
#   iMPU - (any)
#   pYEAR - (any)
#   pMONTH - (any)
#   pDAY - (any)
#   pHOUR - (any)
#   pMINUTE - (any)
#   aYEAR - (any)
#   aMONTH - (any)
#   aDAY - (any)
#   aHOUR - (any)
#   aMINUTE - (any)
#   eYEAR - (any)
#   eMONTH - (any)
#   eDAY - (any)
#   pAMODE - (any)
#   aAMODE - (any)
class MOD_NPAS
  attr_accessor :iMPU
  attr_accessor :pYEAR
  attr_accessor :pMONTH
  attr_accessor :pDAY
  attr_accessor :pHOUR
  attr_accessor :pMINUTE
  attr_accessor :aYEAR
  attr_accessor :aMONTH
  attr_accessor :aDAY
  attr_accessor :aHOUR
  attr_accessor :aMINUTE
  attr_accessor :eYEAR
  attr_accessor :eMONTH
  attr_accessor :eDAY
  attr_accessor :pAMODE
  attr_accessor :aAMODE

  def initialize(iMPU = nil, pYEAR = nil, pMONTH = nil, pDAY = nil, pHOUR = nil, pMINUTE = nil, aYEAR = nil, aMONTH = nil, aDAY = nil, aHOUR = nil, aMINUTE = nil, eYEAR = nil, eMONTH = nil, eDAY = nil, pAMODE = nil, aAMODE = nil)
    @iMPU = iMPU
    @pYEAR = pYEAR
    @pMONTH = pMONTH
    @pDAY = pDAY
    @pHOUR = pHOUR
    @pMINUTE = pMINUTE
    @aYEAR = aYEAR
    @aMONTH = aMONTH
    @aDAY = aDAY
    @aHOUR = aHOUR
    @aMINUTE = aMINUTE
    @eYEAR = eYEAR
    @eMONTH = eMONTH
    @eDAY = eDAY
    @pAMODE = pAMODE
    @aAMODE = aAMODE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_NPASResponse
#   result - ResultType
class MOD_NPASResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_NPAS
#   iMPU - (any)
class RMV_NPAS
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_NPASResponse
#   result - ResultType
class RMV_NPASResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_NPAS
#   iMPU - (any)
class LST_NPAS
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_NPASResponse
#   result - LST_NPASType
class LST_NPASResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_ALLCFX
#   iMPU - (any)
#   bSV - (any)
#   bSG - (any)
#   dIMPU - (any)
#   sUBINF - (any)
#   nOTIFYCALLER - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_ALLCFX
  attr_accessor :iMPU
  attr_accessor :bSV
  attr_accessor :bSG
  attr_accessor :dIMPU
  attr_accessor :sUBINF
  attr_accessor :nOTIFYCALLER
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, bSV = nil, bSG = nil, dIMPU = nil, sUBINF = nil, nOTIFYCALLER = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @bSV = bSV
    @bSG = bSG
    @dIMPU = dIMPU
    @sUBINF = sUBINF
    @nOTIFYCALLER = nOTIFYCALLER
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_ALLCFXResponse
#   result - ResultType
class REG_ALLCFXResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_ALLCFX
#   iMPU - (any)
class RPL_ALLCFX
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_ALLCFXResponse
#   result - ResultType
class RPL_ALLCFXResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CONCFX
#   iMPU - (any)
#   bSV - (any)
#   bSG - (any)
#   dIMPU - (any)
#   sUBINF - (any)
#   nOTIFYCALLER - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_CONCFX
  attr_accessor :iMPU
  attr_accessor :bSV
  attr_accessor :bSG
  attr_accessor :dIMPU
  attr_accessor :sUBINF
  attr_accessor :nOTIFYCALLER
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, bSV = nil, bSG = nil, dIMPU = nil, sUBINF = nil, nOTIFYCALLER = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @bSV = bSV
    @bSG = bSG
    @dIMPU = dIMPU
    @sUBINF = sUBINF
    @nOTIFYCALLER = nOTIFYCALLER
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CONCFXResponse
#   result - ResultType
class REG_CONCFXResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CONCFX
#   iMPU - (any)
class RPL_CONCFX
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CONCFXResponse
#   result - ResultType
class RPL_CONCFXResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_GOIR
#   iMPU - (any)
#   gMODE - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_GOIR
  attr_accessor :iMPU
  attr_accessor :gMODE
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, gMODE = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @gMODE = gMODE
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_GOIRResponse
#   result - ResultType
class REG_GOIRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_GOIR
#   iMPU - (any)
class RPL_GOIR
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_GOIRResponse
#   result - ResultType
class RPL_GOIRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_GOIR
#   iMPU - (any)
class DSP_GOIR
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_GOIRResponse
#   result - DSP_GOIRType
class DSP_GOIRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_MOIR
#   iMPU - (any)
#   mMODE - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_MOIR
  attr_accessor :iMPU
  attr_accessor :mMODE
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, mMODE = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @mMODE = mMODE
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_MOIRResponse
#   result - ResultType
class REG_MOIRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_MOIR
#   iMPU - (any)
class RPL_MOIR
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_MOIRResponse
#   result - ResultType
class RPL_MOIRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_MOIR
#   iMPU - (any)
class DSP_MOIR
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_MOIRResponse
#   result - DSP_MOIRType
class DSP_MOIRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_TIR
#   iMPU - (any)
#   tMODE - (any)
#   sTYPE - (any)
#   sHOUR - (any)
#   sMINUTE - (any)
#   eHOUR - (any)
#   eMINUTE - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_TIR
  attr_accessor :iMPU
  attr_accessor :tMODE
  attr_accessor :sTYPE
  attr_accessor :sHOUR
  attr_accessor :sMINUTE
  attr_accessor :eHOUR
  attr_accessor :eMINUTE
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, tMODE = nil, sTYPE = nil, sHOUR = nil, sMINUTE = nil, eHOUR = nil, eMINUTE = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @tMODE = tMODE
    @sTYPE = sTYPE
    @sHOUR = sHOUR
    @sMINUTE = sMINUTE
    @eHOUR = eHOUR
    @eMINUTE = eMINUTE
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_TIRResponse
#   result - ResultType
class REG_TIRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_TIR
#   iMPU - (any)
class RPL_TIR
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_TIRResponse
#   result - ResultType
class RPL_TIRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_TIR
#   iMPU - (any)
class DSP_TIR
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_TIRResponse
#   result - DSP_TIRType
class DSP_TIRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_DSTR
#   iMPU - (any)
#   pATTERN - (any)
#   cWPATTERN - (any)
#   sIMPU - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_DSTR
  attr_accessor :iMPU
  attr_accessor :pATTERN
  attr_accessor :cWPATTERN
  attr_accessor :sIMPU
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, pATTERN = nil, cWPATTERN = nil, sIMPU = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @pATTERN = pATTERN
    @cWPATTERN = cWPATTERN
    @sIMPU = sIMPU
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_DSTRResponse
#   result - ResultType
class REG_DSTRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_DSTR
#   iMPU - (any)
#   pATTERN - (any)
#   cWPATTERN - (any)
#   sIMPU - (any)
class RPL_DSTR
  attr_accessor :iMPU
  attr_accessor :pATTERN
  attr_accessor :cWPATTERN
  attr_accessor :sIMPU

  def initialize(iMPU = nil, pATTERN = nil, cWPATTERN = nil, sIMPU = nil)
    @iMPU = iMPU
    @pATTERN = pATTERN
    @cWPATTERN = cWPATTERN
    @sIMPU = sIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_DSTRResponse
#   result - ResultType
class RPL_DSTRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DSTR
#   iMPU - (any)
#   pATTERN - (any)
#   cWPATTERN - (any)
#   sIMPU - (any)
class DSP_DSTR
  attr_accessor :iMPU
  attr_accessor :pATTERN
  attr_accessor :cWPATTERN
  attr_accessor :sIMPU

  def initialize(iMPU = nil, pATTERN = nil, cWPATTERN = nil, sIMPU = nil)
    @iMPU = iMPU
    @pATTERN = pATTERN
    @cWPATTERN = cWPATTERN
    @sIMPU = sIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DSTRResponse
#   result - DSP_DSTRType
class DSP_DSTRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_VIMPURequest
#   vIMPU - (any)
#   sUBNETID - (any)
#   oCPFLAG - (any)
class ADD_VIMPURequest
  attr_accessor :vIMPU
  attr_accessor :sUBNETID
  attr_accessor :oCPFLAG

  def initialize(vIMPU = nil, sUBNETID = nil, oCPFLAG = nil)
    @vIMPU = vIMPU
    @sUBNETID = sUBNETID
    @oCPFLAG = oCPFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_VIMPUResponse
#   result - ResultType
class ADD_VIMPUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_VIMPURequest
#   vIMPU - (any)
#   sUBNETID - (any)
#   mANDRMV - (any)
class RMV_VIMPURequest
  attr_accessor :vIMPU
  attr_accessor :sUBNETID
  attr_accessor :mANDRMV

  def initialize(vIMPU = nil, sUBNETID = nil, mANDRMV = nil)
    @vIMPU = vIMPU
    @sUBNETID = sUBNETID
    @mANDRMV = mANDRMV
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_VIMPUResponse
#   result - ResultType
class RMV_VIMPUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_VIMPURequest
#   vIMPU - (any)
#   sUBNETID - (any)
#   oCPFLAG - (any)
class MOD_VIMPURequest
  attr_accessor :vIMPU
  attr_accessor :sUBNETID
  attr_accessor :oCPFLAG

  def initialize(vIMPU = nil, sUBNETID = nil, oCPFLAG = nil)
    @vIMPU = vIMPU
    @sUBNETID = sUBNETID
    @oCPFLAG = oCPFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_VIMPUResponse
#   result - ResultType
class MOD_VIMPUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_VIMPURequest
#   vIMPU - (any)
#   sUBNETID - (any)
#   oCPFLAG - (any)
#   qRYPOS - (any)
#   qRYAMOUNT - (any)
class LST_VIMPURequest
  attr_accessor :vIMPU
  attr_accessor :sUBNETID
  attr_accessor :oCPFLAG
  attr_accessor :qRYPOS
  attr_accessor :qRYAMOUNT

  def initialize(vIMPU = nil, sUBNETID = nil, oCPFLAG = nil, qRYPOS = nil, qRYAMOUNT = nil)
    @vIMPU = vIMPU
    @sUBNETID = sUBNETID
    @oCPFLAG = oCPFLAG
    @qRYPOS = qRYPOS
    @qRYAMOUNT = qRYAMOUNT
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_VIMPUResponse
#   result - LST_VIMPUType
class LST_VIMPUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_IBDVIMPURequest
#   sUBNETID - (any)
class LST_IBDVIMPURequest
  attr_accessor :sUBNETID

  def initialize(sUBNETID = nil)
    @sUBNETID = sUBNETID
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_IBDVIMPUResponse
#   result - LST_IBDVIMPUType
class LST_IBDVIMPUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}PRK_SBR
#   iMPU - (any)
#   sTYPE - (any)
#   tREAT - (any)
#   rNUM - (any)
class PRK_SBR
  attr_accessor :iMPU
  attr_accessor :sTYPE
  attr_accessor :tREAT
  attr_accessor :rNUM

  def initialize(iMPU = nil, sTYPE = nil, tREAT = nil, rNUM = nil)
    @iMPU = iMPU
    @sTYPE = sTYPE
    @tREAT = tREAT
    @rNUM = rNUM
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}PRK_SBRResponse
#   result - ResultType
class PRK_SBRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PRKSBR
#   iMPU - (any)
class LST_PRKSBR
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PRKSBRResponse
#   result - LST_PRKSBRType
class LST_PRKSBRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RES_PRKSBR
#   iMPU - (any)
class RES_PRKSBR
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RES_PRKSBRResponse
#   result - ResultType
class RES_PRKSBRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_NUMINVA
#   iMPU - (any)
#   dURATION - (any)
#   tN - (any)
#   yEAR - (any)
#   mONTH - (any)
#   dAY - (any)
class ADD_NUMINVA
  attr_accessor :iMPU
  attr_accessor :dURATION
  attr_accessor :tN
  attr_accessor :yEAR
  attr_accessor :mONTH
  attr_accessor :dAY

  def initialize(iMPU = nil, dURATION = nil, tN = nil, yEAR = nil, mONTH = nil, dAY = nil)
    @iMPU = iMPU
    @dURATION = dURATION
    @tN = tN
    @yEAR = yEAR
    @mONTH = mONTH
    @dAY = dAY
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_NUMINVAResponse
#   result - ResultType
class ADD_NUMINVAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_NUMINVA
#   iMPU - (any)
#   dURATION - (any)
#   tN - (any)
class MOD_NUMINVA
  attr_accessor :iMPU
  attr_accessor :dURATION
  attr_accessor :tN

  def initialize(iMPU = nil, dURATION = nil, tN = nil)
    @iMPU = iMPU
    @dURATION = dURATION
    @tN = tN
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_NUMINVAResponse
#   result - ResultType
class MOD_NUMINVAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_NUMINVA
#   iMPU - (any)
class RMV_NUMINVA
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_NUMINVAResponse
#   result - ResultType
class RMV_NUMINVAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_NUMINVA
#   iMPU - (any)
class LST_NUMINVA
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_NUMINVAResponse
#   result - LST_NUMINVAType
class LST_NUMINVAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_OUTBOUNDUSER
#   iMPU - (any)
#   sUBNETID - (any)
#   vIMPU1 - (any)
#   sUBNETID1 - (any)
#   vIMPU2 - (any)
#   sUBNETID2 - (any)
#   vIMPU3 - (any)
#   sUBNETID3 - (any)
#   vIMPU4 - (any)
#   sUBNETID4 - (any)
#   vIMPU5 - (any)
#   sUBNETID5 - (any)
#   vIMPU6 - (any)
#   sUBNETID6 - (any)
#   vIMPU7 - (any)
#   sUBNETID7 - (any)
#   vIMPU8 - (any)
#   sUBNETID8 - (any)
#   vIMPU9 - (any)
#   sUBNETID9 - (any)
#   vIMPU10 - (any)
#   sUBNETID10 - (any)
#   vIMPU11 - (any)
#   sUBNETID11 - (any)
#   vIMPU12 - (any)
#   sUBNETID12 - (any)
#   vIMPU13 - (any)
#   sUBNETID13 - (any)
#   vIMPU14 - (any)
#   sUBNETID14 - (any)
#   vIMPU15 - (any)
#   sUBNETID15 - (any)
class ADD_OUTBOUNDUSER
  attr_accessor :iMPU
  attr_accessor :sUBNETID
  attr_accessor :vIMPU1
  attr_accessor :sUBNETID1
  attr_accessor :vIMPU2
  attr_accessor :sUBNETID2
  attr_accessor :vIMPU3
  attr_accessor :sUBNETID3
  attr_accessor :vIMPU4
  attr_accessor :sUBNETID4
  attr_accessor :vIMPU5
  attr_accessor :sUBNETID5
  attr_accessor :vIMPU6
  attr_accessor :sUBNETID6
  attr_accessor :vIMPU7
  attr_accessor :sUBNETID7
  attr_accessor :vIMPU8
  attr_accessor :sUBNETID8
  attr_accessor :vIMPU9
  attr_accessor :sUBNETID9
  attr_accessor :vIMPU10
  attr_accessor :sUBNETID10
  attr_accessor :vIMPU11
  attr_accessor :sUBNETID11
  attr_accessor :vIMPU12
  attr_accessor :sUBNETID12
  attr_accessor :vIMPU13
  attr_accessor :sUBNETID13
  attr_accessor :vIMPU14
  attr_accessor :sUBNETID14
  attr_accessor :vIMPU15
  attr_accessor :sUBNETID15

  def initialize(iMPU = nil, sUBNETID = nil, vIMPU1 = nil, sUBNETID1 = nil, vIMPU2 = nil, sUBNETID2 = nil, vIMPU3 = nil, sUBNETID3 = nil, vIMPU4 = nil, sUBNETID4 = nil, vIMPU5 = nil, sUBNETID5 = nil, vIMPU6 = nil, sUBNETID6 = nil, vIMPU7 = nil, sUBNETID7 = nil, vIMPU8 = nil, sUBNETID8 = nil, vIMPU9 = nil, sUBNETID9 = nil, vIMPU10 = nil, sUBNETID10 = nil, vIMPU11 = nil, sUBNETID11 = nil, vIMPU12 = nil, sUBNETID12 = nil, vIMPU13 = nil, sUBNETID13 = nil, vIMPU14 = nil, sUBNETID14 = nil, vIMPU15 = nil, sUBNETID15 = nil)
    @iMPU = iMPU
    @sUBNETID = sUBNETID
    @vIMPU1 = vIMPU1
    @sUBNETID1 = sUBNETID1
    @vIMPU2 = vIMPU2
    @sUBNETID2 = sUBNETID2
    @vIMPU3 = vIMPU3
    @sUBNETID3 = sUBNETID3
    @vIMPU4 = vIMPU4
    @sUBNETID4 = sUBNETID4
    @vIMPU5 = vIMPU5
    @sUBNETID5 = sUBNETID5
    @vIMPU6 = vIMPU6
    @sUBNETID6 = sUBNETID6
    @vIMPU7 = vIMPU7
    @sUBNETID7 = sUBNETID7
    @vIMPU8 = vIMPU8
    @sUBNETID8 = sUBNETID8
    @vIMPU9 = vIMPU9
    @sUBNETID9 = sUBNETID9
    @vIMPU10 = vIMPU10
    @sUBNETID10 = sUBNETID10
    @vIMPU11 = vIMPU11
    @sUBNETID11 = sUBNETID11
    @vIMPU12 = vIMPU12
    @sUBNETID12 = sUBNETID12
    @vIMPU13 = vIMPU13
    @sUBNETID13 = sUBNETID13
    @vIMPU14 = vIMPU14
    @sUBNETID14 = sUBNETID14
    @vIMPU15 = vIMPU15
    @sUBNETID15 = sUBNETID15
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_OUTBOUNDUSERResponse
#   result - ResultType
class ADD_OUTBOUNDUSERResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_OUTBOUNDUSER
#   iMPU - (any)
#   vIMPU1 - (any)
#   vIMPU2 - (any)
#   vIMPU3 - (any)
#   vIMPU4 - (any)
#   vIMPU5 - (any)
#   vIMPU6 - (any)
#   vIMPU7 - (any)
#   vIMPU8 - (any)
#   vIMPU9 - (any)
#   vIMPU10 - (any)
#   vIMPU11 - (any)
#   vIMPU12 - (any)
#   vIMPU13 - (any)
#   vIMPU14 - (any)
#   vIMPU15 - (any)
class RMV_OUTBOUNDUSER
  attr_accessor :iMPU
  attr_accessor :vIMPU1
  attr_accessor :vIMPU2
  attr_accessor :vIMPU3
  attr_accessor :vIMPU4
  attr_accessor :vIMPU5
  attr_accessor :vIMPU6
  attr_accessor :vIMPU7
  attr_accessor :vIMPU8
  attr_accessor :vIMPU9
  attr_accessor :vIMPU10
  attr_accessor :vIMPU11
  attr_accessor :vIMPU12
  attr_accessor :vIMPU13
  attr_accessor :vIMPU14
  attr_accessor :vIMPU15

  def initialize(iMPU = nil, vIMPU1 = nil, vIMPU2 = nil, vIMPU3 = nil, vIMPU4 = nil, vIMPU5 = nil, vIMPU6 = nil, vIMPU7 = nil, vIMPU8 = nil, vIMPU9 = nil, vIMPU10 = nil, vIMPU11 = nil, vIMPU12 = nil, vIMPU13 = nil, vIMPU14 = nil, vIMPU15 = nil)
    @iMPU = iMPU
    @vIMPU1 = vIMPU1
    @vIMPU2 = vIMPU2
    @vIMPU3 = vIMPU3
    @vIMPU4 = vIMPU4
    @vIMPU5 = vIMPU5
    @vIMPU6 = vIMPU6
    @vIMPU7 = vIMPU7
    @vIMPU8 = vIMPU8
    @vIMPU9 = vIMPU9
    @vIMPU10 = vIMPU10
    @vIMPU11 = vIMPU11
    @vIMPU12 = vIMPU12
    @vIMPU13 = vIMPU13
    @vIMPU14 = vIMPU14
    @vIMPU15 = vIMPU15
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_OUTBOUNDUSERResponse
#   result - ResultType
class RMV_OUTBOUNDUSERResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_OUTBOUNDVIMPU
#   iMPU - (any)
#   vIMPU1 - (any)
#   sUBNETID1 - (any)
class ADD_OUTBOUNDVIMPU
  attr_accessor :iMPU
  attr_accessor :vIMPU1
  attr_accessor :sUBNETID1

  def initialize(iMPU = nil, vIMPU1 = nil, sUBNETID1 = nil)
    @iMPU = iMPU
    @vIMPU1 = vIMPU1
    @sUBNETID1 = sUBNETID1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_OUTBOUNDVIMPUResponse
#   result - ResultType
class ADD_OUTBOUNDVIMPUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_OUTBOUNDVIMPU
#   iMPU - (any)
#   vIMPU1 - (any)
class RMV_OUTBOUNDVIMPU
  attr_accessor :iMPU
  attr_accessor :vIMPU1

  def initialize(iMPU = nil, vIMPU1 = nil)
    @iMPU = iMPU
    @vIMPU1 = vIMPU1
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_OUTBOUNDVIMPUResponse
#   result - ResultType
class RMV_OUTBOUNDVIMPUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}APPLY_PRVSNSBR
#   iMPU - (any)
#   sUBNETID - (any)
#   vIMPU - (any)
#   cBNUMBER - (any)
#   dOMAIN - (any)
class APPLY_PRVSNSBR
  attr_accessor :iMPU
  attr_accessor :sUBNETID
  attr_accessor :vIMPU
  attr_accessor :cBNUMBER
  attr_accessor :dOMAIN

  def initialize(iMPU = nil, sUBNETID = nil, vIMPU = nil, cBNUMBER = nil, dOMAIN = nil)
    @iMPU = iMPU
    @sUBNETID = sUBNETID
    @vIMPU = vIMPU
    @cBNUMBER = cBNUMBER
    @dOMAIN = dOMAIN
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}APPLY_PRVSNSBRResponse
#   result - ResultType
class APPLY_PRVSNSBRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_IBDSUBNUM
#   hOMENUM - (any)
#   sUBID - (any)
class ADD_IBDSUBNUM
  attr_accessor :hOMENUM
  attr_accessor :sUBID

  def initialize(hOMENUM = nil, sUBID = nil)
    @hOMENUM = hOMENUM
    @sUBID = sUBID
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_IBDSUBNUMResponse
#   result - ResultType
class ADD_IBDSUBNUMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_IBDSUBNUM
#   hOMENUM - (any)
#   sUBID - (any)
class LST_IBDSUBNUM
  attr_accessor :hOMENUM
  attr_accessor :sUBID

  def initialize(hOMENUM = nil, sUBID = nil)
    @hOMENUM = hOMENUM
    @sUBID = sUBID
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_IBDSUBNUMResponse
#   result - LST_IBDSUBNUMType
class LST_IBDSUBNUMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}AddSubUsr
#   vIMPU - (any)
#   sUBNETID - (any)
class AddSubUsr
  attr_accessor :vIMPU
  attr_accessor :sUBNETID

  def initialize(vIMPU = nil, sUBNETID = nil)
    @vIMPU = vIMPU
    @sUBNETID = sUBNETID
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}AddSubUsrResponse
#   result - ResultType
class AddSubUsrResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}CancelSubUsr
#   vIMPU - (any)
class CancelSubUsr
  attr_accessor :vIMPU

  def initialize(vIMPU = nil)
    @vIMPU = vIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}CancelSubUsrResponse
#   result - ResultType
class CancelSubUsrResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RmvSubUsr
#   vIMPU - (any)
class RmvSubUsr
  attr_accessor :vIMPU

  def initialize(vIMPU = nil)
    @vIMPU = vIMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RmvSubUsrResponse
#   result - ResultType
class RmvSubUsrResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CALLERID
#   iMPU - (any)
#   bIMPU - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_CALLERID
  attr_accessor :iMPU
  attr_accessor :bIMPU
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, bIMPU = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @bIMPU = bIMPU
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CALLERIDResponse
#   result - ResultType
class REG_CALLERIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CALLERID
#   iMPU - (any)
class RPL_CALLERID
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CALLERIDResponse
#   result - ResultType
class RPL_CALLERIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CALLERID
#   iMPU - (any)
class DSP_CALLERID
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CALLERIDResponse
#   result - DSP_CALLERIDType
class DSP_CALLERIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_CALLERID
#   iMPU - (any)
class ACT_CALLERID
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_CALLERIDResponse
#   result - ResultType
class ACT_CALLERIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_CALLERID
#   iMPU - (any)
class DEA_CALLERID
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_CALLERIDResponse
#   result - ResultType
class DEA_CALLERIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_IPTVVC
#   iMPU - (any)
#   sTBIMPU - (any)
#   rEGFLAG - (any)
class REG_IPTVVC
  attr_accessor :iMPU
  attr_accessor :sTBIMPU
  attr_accessor :rEGFLAG

  def initialize(iMPU = nil, sTBIMPU = nil, rEGFLAG = nil)
    @iMPU = iMPU
    @sTBIMPU = sTBIMPU
    @rEGFLAG = rEGFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_IPTVVCResponse
#   result - ResultType
class REG_IPTVVCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_IPTVVC
#   iMPU - (any)
class RPL_IPTVVC
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_IPTVVCResponse
#   result - ResultType
class RPL_IPTVVCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_IPTVVC
#   iMPU - (any)
class DSP_IPTVVC
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_IPTVVCResponse
#   result - DSP_IPTVVCType
class DSP_IPTVVCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_NP
#   iMPU - (any)
#   pIMPU - (any)
#   rEGFLAG - (any)
class REG_NP
  attr_accessor :iMPU
  attr_accessor :pIMPU
  attr_accessor :rEGFLAG

  def initialize(iMPU = nil, pIMPU = nil, rEGFLAG = nil)
    @iMPU = iMPU
    @pIMPU = pIMPU
    @rEGFLAG = rEGFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_NPResponse
#   result - ResultType
class REG_NPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_NP
#   iMPU - (any)
class RPL_NP
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_NPResponse
#   result - ResultType
class RPL_NPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_NP
#   iMPU - (any)
class DSP_NP
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_NPResponse
#   result - DSP_NPType
class DSP_NPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_SEC
#   iMPU - (any)
#   sECIMPU - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_SEC
  attr_accessor :iMPU
  attr_accessor :sECIMPU
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, sECIMPU = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @sECIMPU = sECIMPU
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_SECResponse
#   result - ResultType
class REG_SECResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_SEC
#   iMPU - (any)
class RPL_SEC
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_SECResponse
#   result - ResultType
class RPL_SECResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SEC
#   iMPU - (any)
class DSP_SEC
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SECResponse
#   result - DSP_SECType
class DSP_SECResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_SB
#   iMPU - (any)
#   pRIONUMLST - REG_SB::PRIONUMLST
#   sTARTTIME - (any)
#   sTOPTIME - (any)
#   rECURRENCE - (any)
#   rEGFLAG - (any)
#   aUTOACTFLAG - (any)
class REG_SB

  # inner class for member: PRIONUMLST
  # {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}PRIONUMLST
  #   pRIONUM - (any)
  class PRIONUMLST
    attr_accessor :pRIONUM

    def initialize(pRIONUM = nil)
      @pRIONUM = pRIONUM
    end
  end

  attr_accessor :iMPU
  attr_accessor :pRIONUMLST
  attr_accessor :sTARTTIME
  attr_accessor :sTOPTIME
  attr_accessor :rECURRENCE
  attr_accessor :rEGFLAG
  attr_accessor :aUTOACTFLAG

  def initialize(iMPU = nil, pRIONUMLST = [], sTARTTIME = nil, sTOPTIME = nil, rECURRENCE = nil, rEGFLAG = nil, aUTOACTFLAG = nil)
    @iMPU = iMPU
    @pRIONUMLST = pRIONUMLST
    @sTARTTIME = sTARTTIME
    @sTOPTIME = sTOPTIME
    @rECURRENCE = rECURRENCE
    @rEGFLAG = rEGFLAG
    @aUTOACTFLAG = aUTOACTFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_SBResponse
#   result - ResultType
class REG_SBResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_SB
#   iMPU - (any)
#   pRIONUM - (any)
class RPL_SB
  attr_accessor :iMPU
  attr_accessor :pRIONUM

  def initialize(iMPU = nil, pRIONUM = nil)
    @iMPU = iMPU
    @pRIONUM = pRIONUM
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_SBResponse
#   result - ResultType
class RPL_SBResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SB
#   responseComplexType - (any)
#   iMPU - (any)
class DSP_SB
  attr_accessor :responseComplexType
  attr_accessor :iMPU

  def initialize(responseComplexType = nil, iMPU = nil)
    @responseComplexType = responseComplexType
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SBResponse
#   result - DSP_SBType
class DSP_SBResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_FILCRIT
#   iMPU - (any)
#   nAME - (any)
#   cOMBIN - (any)
#   cALLERINFO - (any)
#   pRESTATUS - (any)
#   hOLDGRP - (any)
#   dATEMODE - (any)
#   mONTH - (any)
#   oRDER - (any)
#   dAYOFWEEK - (any)
#   sTARTDAY - (any)
#   eNDDAY - (any)
#   sTARTDATE - (any)
#   eNDDATE - (any)
#   sTARTTIME - (any)
#   eNDTIME - (any)
class ADD_FILCRIT
  attr_accessor :iMPU
  attr_accessor :nAME
  attr_accessor :cOMBIN
  attr_accessor :cALLERINFO
  attr_accessor :pRESTATUS
  attr_accessor :hOLDGRP
  attr_accessor :dATEMODE
  attr_accessor :mONTH
  attr_accessor :oRDER
  attr_accessor :dAYOFWEEK
  attr_accessor :sTARTDAY
  attr_accessor :eNDDAY
  attr_accessor :sTARTDATE
  attr_accessor :eNDDATE
  attr_accessor :sTARTTIME
  attr_accessor :eNDTIME

  def initialize(iMPU = nil, nAME = nil, cOMBIN = nil, cALLERINFO = nil, pRESTATUS = nil, hOLDGRP = nil, dATEMODE = nil, mONTH = nil, oRDER = nil, dAYOFWEEK = nil, sTARTDAY = nil, eNDDAY = nil, sTARTDATE = nil, eNDDATE = nil, sTARTTIME = nil, eNDTIME = nil)
    @iMPU = iMPU
    @nAME = nAME
    @cOMBIN = cOMBIN
    @cALLERINFO = cALLERINFO
    @pRESTATUS = pRESTATUS
    @hOLDGRP = hOLDGRP
    @dATEMODE = dATEMODE
    @mONTH = mONTH
    @oRDER = oRDER
    @dAYOFWEEK = dAYOFWEEK
    @sTARTDAY = sTARTDAY
    @eNDDAY = eNDDAY
    @sTARTDATE = sTARTDATE
    @eNDDATE = eNDDATE
    @sTARTTIME = sTARTTIME
    @eNDTIME = eNDTIME
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_FILCRITResponse
#   result - ResultType
class ADD_FILCRITResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_FILCRIT
#   iMPU - (any)
#   nAME - (any)
class RMV_FILCRIT
  attr_accessor :iMPU
  attr_accessor :nAME

  def initialize(iMPU = nil, nAME = nil)
    @iMPU = iMPU
    @nAME = nAME
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_FILCRITResponse
#   result - ResultType
class RMV_FILCRITResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_FILCRIT
#   iMPU - (any)
#   nAME - (any)
#   cOMBIN - (any)
#   cALLERINFO - (any)
#   pRESTATUS - (any)
#   hOLDGRP - (any)
#   dATEMODE - (any)
#   mONTH - (any)
#   oRDER - (any)
#   dAYOFWEEK - (any)
#   sTARTDAY - (any)
#   eNDDAY - (any)
#   sTARTDATE - (any)
#   eNDDATE - (any)
#   sTARTTIME - (any)
#   eNDTIME - (any)
class MOD_FILCRIT
  attr_accessor :iMPU
  attr_accessor :nAME
  attr_accessor :cOMBIN
  attr_accessor :cALLERINFO
  attr_accessor :pRESTATUS
  attr_accessor :hOLDGRP
  attr_accessor :dATEMODE
  attr_accessor :mONTH
  attr_accessor :oRDER
  attr_accessor :dAYOFWEEK
  attr_accessor :sTARTDAY
  attr_accessor :eNDDAY
  attr_accessor :sTARTDATE
  attr_accessor :eNDDATE
  attr_accessor :sTARTTIME
  attr_accessor :eNDTIME

  def initialize(iMPU = nil, nAME = nil, cOMBIN = nil, cALLERINFO = nil, pRESTATUS = nil, hOLDGRP = nil, dATEMODE = nil, mONTH = nil, oRDER = nil, dAYOFWEEK = nil, sTARTDAY = nil, eNDDAY = nil, sTARTDATE = nil, eNDDATE = nil, sTARTTIME = nil, eNDTIME = nil)
    @iMPU = iMPU
    @nAME = nAME
    @cOMBIN = cOMBIN
    @cALLERINFO = cALLERINFO
    @pRESTATUS = pRESTATUS
    @hOLDGRP = hOLDGRP
    @dATEMODE = dATEMODE
    @mONTH = mONTH
    @oRDER = oRDER
    @dAYOFWEEK = dAYOFWEEK
    @sTARTDAY = sTARTDAY
    @eNDDAY = eNDDAY
    @sTARTDATE = sTARTDATE
    @eNDDATE = eNDDATE
    @sTARTTIME = sTARTTIME
    @eNDTIME = eNDTIME
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_FILCRITResponse
#   result - ResultType
class MOD_FILCRITResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_FILCRIT
#   iMPU - (any)
#   nAME - (any)
class LST_FILCRIT
  attr_accessor :iMPU
  attr_accessor :nAME

  def initialize(iMPU = nil, nAME = nil)
    @iMPU = iMPU
    @nAME = nAME
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_FILCRITResponse
#   result - LST_FILCRITType
class LST_FILCRITResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CALLERINFO
#   iMPU - (any)
#   cALLERNUM - (any)
#   cALLERTYPE - (any)
class ADD_CALLERINFO
  attr_accessor :iMPU
  attr_accessor :cALLERNUM
  attr_accessor :cALLERTYPE

  def initialize(iMPU = nil, cALLERNUM = nil, cALLERTYPE = nil)
    @iMPU = iMPU
    @cALLERNUM = cALLERNUM
    @cALLERTYPE = cALLERTYPE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CALLERINFOResponse
#   result - ResultType
class ADD_CALLERINFOResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CALLERINFO
#   iMPU - (any)
#   cALLERNUM - (any)
class RMV_CALLERINFO
  attr_accessor :iMPU
  attr_accessor :cALLERNUM

  def initialize(iMPU = nil, cALLERNUM = nil)
    @iMPU = iMPU
    @cALLERNUM = cALLERNUM
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CALLERINFOResponse
#   result - ResultType
class RMV_CALLERINFOResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CALLERINFO
#   iMPU - (any)
#   cALLERNUM - (any)
#   cALLERTYPE - (any)
class MOD_CALLERINFO
  attr_accessor :iMPU
  attr_accessor :cALLERNUM
  attr_accessor :cALLERTYPE

  def initialize(iMPU = nil, cALLERNUM = nil, cALLERTYPE = nil)
    @iMPU = iMPU
    @cALLERNUM = cALLERNUM
    @cALLERTYPE = cALLERTYPE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CALLERINFOResponse
#   result - ResultType
class MOD_CALLERINFOResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CALLERINFO
#   iMPU - (any)
#   cALLERNUM - (any)
#   cALLERTYPE - (any)
class LST_CALLERINFO
  attr_accessor :iMPU
  attr_accessor :cALLERNUM
  attr_accessor :cALLERTYPE

  def initialize(iMPU = nil, cALLERNUM = nil, cALLERTYPE = nil)
    @iMPU = iMPU
    @cALLERNUM = cALLERNUM
    @cALLERTYPE = cALLERTYPE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CALLERINFOResponse
#   result - LST_CALLERINFOType
class LST_CALLERINFOResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}SET_PRESSTUS
#   iMPU - (any)
#   pRESSTUS - (any)
class SET_PRESSTUS
  attr_accessor :iMPU
  attr_accessor :pRESSTUS

  def initialize(iMPU = nil, pRESSTUS = nil)
    @iMPU = iMPU
    @pRESSTUS = pRESSTUS
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}SET_PRESSTUSResponse
#   result - ResultType
class SET_PRESSTUSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PRESSTUS
#   iMPU - (any)
class LST_PRESSTUS
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PRESSTUSResponse
#   result - LST_PRESSTUSType
class LST_PRESSTUSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_ONENUM
#   iMPU - (any)
#   iDX - (any)
#   pRIO - (any)
#   sRVTYPE - (any)
#   nUMTYPE - (any)
#   rELNUMDATA - ADD_ONENUM::RELNUMDATA
#   pROMODE302 - (any)
#   rINGTONE - (any)
#   cWRTONE - (any)
#   rTYPE - (any)
#   cFMODE - (any)
#   fLTCOMB - (any)
#   cALLEEDSPNUM - (any)
#   aSSIDX - (any)
#   rEGFLAG - (any)
class ADD_ONENUM

  # inner class for member: RELNUMDATA
  # {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RELNUMDATA
  #   rELNUMLST - (any)
  class RELNUMDATA
    attr_accessor :rELNUMLST

    def initialize(rELNUMLST = nil)
      @rELNUMLST = rELNUMLST
    end
  end

  attr_accessor :iMPU
  attr_accessor :iDX
  attr_accessor :pRIO
  attr_accessor :sRVTYPE
  attr_accessor :nUMTYPE
  attr_accessor :rELNUMDATA
  attr_accessor :pROMODE302
  attr_accessor :rINGTONE
  attr_accessor :cWRTONE
  attr_accessor :rTYPE
  attr_accessor :cFMODE
  attr_accessor :fLTCOMB
  attr_accessor :cALLEEDSPNUM
  attr_accessor :aSSIDX
  attr_accessor :rEGFLAG

  def initialize(iMPU = nil, iDX = nil, pRIO = nil, sRVTYPE = nil, nUMTYPE = nil, rELNUMDATA = [], pROMODE302 = nil, rINGTONE = nil, cWRTONE = nil, rTYPE = nil, cFMODE = nil, fLTCOMB = nil, cALLEEDSPNUM = nil, aSSIDX = nil, rEGFLAG = nil)
    @iMPU = iMPU
    @iDX = iDX
    @pRIO = pRIO
    @sRVTYPE = sRVTYPE
    @nUMTYPE = nUMTYPE
    @rELNUMDATA = rELNUMDATA
    @pROMODE302 = pROMODE302
    @rINGTONE = rINGTONE
    @cWRTONE = cWRTONE
    @rTYPE = rTYPE
    @cFMODE = cFMODE
    @fLTCOMB = fLTCOMB
    @cALLEEDSPNUM = cALLEEDSPNUM
    @aSSIDX = aSSIDX
    @rEGFLAG = rEGFLAG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_ONENUMResponse
#   result - ResultType
class ADD_ONENUMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_ONENUM
#   iMPU - (any)
#   iDX - (any)
#   pRIO - (any)
class RMV_ONENUM
  attr_accessor :iMPU
  attr_accessor :iDX
  attr_accessor :pRIO

  def initialize(iMPU = nil, iDX = nil, pRIO = nil)
    @iMPU = iMPU
    @iDX = iDX
    @pRIO = pRIO
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_ONENUMResponse
#   result - ResultType
class RMV_ONENUMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_ONENUM
#   iMPU - (any)
#   iDX - (any)
#   pRIO - (any)
#   sRVTYPE - (any)
#   nUMTYPE - (any)
#   rELNUMDATA - MOD_ONENUM::RELNUMDATA
#   pROMODE302 - (any)
#   rINGTONE - (any)
#   cWRTONE - (any)
#   rTYPE - (any)
#   cFMODE - (any)
#   fLTCOMB - (any)
#   cALLEEDSPNUM - (any)
#   aSSIDX - (any)
class MOD_ONENUM

  # inner class for member: RELNUMDATA
  # {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RELNUMDATA
  #   rELNUMLST - (any)
  class RELNUMDATA
    attr_accessor :rELNUMLST

    def initialize(rELNUMLST = nil)
      @rELNUMLST = rELNUMLST
    end
  end

  attr_accessor :iMPU
  attr_accessor :iDX
  attr_accessor :pRIO
  attr_accessor :sRVTYPE
  attr_accessor :nUMTYPE
  attr_accessor :rELNUMDATA
  attr_accessor :pROMODE302
  attr_accessor :rINGTONE
  attr_accessor :cWRTONE
  attr_accessor :rTYPE
  attr_accessor :cFMODE
  attr_accessor :fLTCOMB
  attr_accessor :cALLEEDSPNUM
  attr_accessor :aSSIDX

  def initialize(iMPU = nil, iDX = nil, pRIO = nil, sRVTYPE = nil, nUMTYPE = nil, rELNUMDATA = [], pROMODE302 = nil, rINGTONE = nil, cWRTONE = nil, rTYPE = nil, cFMODE = nil, fLTCOMB = nil, cALLEEDSPNUM = nil, aSSIDX = nil)
    @iMPU = iMPU
    @iDX = iDX
    @pRIO = pRIO
    @sRVTYPE = sRVTYPE
    @nUMTYPE = nUMTYPE
    @rELNUMDATA = rELNUMDATA
    @pROMODE302 = pROMODE302
    @rINGTONE = rINGTONE
    @cWRTONE = cWRTONE
    @rTYPE = rTYPE
    @cFMODE = cFMODE
    @fLTCOMB = fLTCOMB
    @cALLEEDSPNUM = cALLEEDSPNUM
    @aSSIDX = aSSIDX
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_ONENUMResponse
#   result - ResultType
class MOD_ONENUMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ONENUM
#   responseComplexType - (any)
#   iMPU - (any)
#   iDX - (any)
#   pRIO - (any)
class LST_ONENUM
  attr_accessor :responseComplexType
  attr_accessor :iMPU
  attr_accessor :iDX
  attr_accessor :pRIO

  def initialize(responseComplexType = nil, iMPU = nil, iDX = nil, pRIO = nil)
    @responseComplexType = responseComplexType
    @iMPU = iMPU
    @iDX = iDX
    @pRIO = pRIO
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ONENUMResponse
#   result - LST_ONENUMType
class LST_ONENUMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_ASSLST
#   iMPU - (any)
#   aSSIDX - (any)
#   aSSTYPE - (any)
#   aSSDATA - ADD_ASSLST::ASSDATA
class ADD_ASSLST

  # inner class for member: ASSDATA
  # {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ASSDATA
  #   aCTED - (any)
  #   dSPNUM - (any)
  #   pRMNUM - (any)
  #   mAXNUM - (any)
  #   rTIME - (any)
  #   aND - ADD_ASSLST::ASSDATA::AND
  class ASSDATA

    # inner class for member: AND
    # {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}AND
    #   aN - (any)
    #   uT - (any)
    #   nA - (any)
    #   nRT - (any)
    class AND
      attr_accessor :aN
      attr_accessor :uT
      attr_accessor :nA
      attr_accessor :nRT

      def initialize(aN = nil, uT = nil, nA = nil, nRT = nil)
        @aN = aN
        @uT = uT
        @nA = nA
        @nRT = nRT
      end
    end

    attr_accessor :aCTED
    attr_accessor :dSPNUM
    attr_accessor :pRMNUM
    attr_accessor :mAXNUM
    attr_accessor :rTIME
    attr_accessor :aND

    def initialize(aCTED = nil, dSPNUM = nil, pRMNUM = nil, mAXNUM = nil, rTIME = nil, aND = [])
      @aCTED = aCTED
      @dSPNUM = dSPNUM
      @pRMNUM = pRMNUM
      @mAXNUM = mAXNUM
      @rTIME = rTIME
      @aND = aND
    end
  end

  attr_accessor :iMPU
  attr_accessor :aSSIDX
  attr_accessor :aSSTYPE
  attr_accessor :aSSDATA

  def initialize(iMPU = nil, aSSIDX = nil, aSSTYPE = nil, aSSDATA = nil)
    @iMPU = iMPU
    @aSSIDX = aSSIDX
    @aSSTYPE = aSSTYPE
    @aSSDATA = aSSDATA
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_ASSLSTResponse
#   result - ResultType
class ADD_ASSLSTResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_ASSLST
#   iMPU - (any)
#   aSSIDX - (any)
#   aSSTYPE - (any)
class RMV_ASSLST
  attr_accessor :iMPU
  attr_accessor :aSSIDX
  attr_accessor :aSSTYPE

  def initialize(iMPU = nil, aSSIDX = nil, aSSTYPE = nil)
    @iMPU = iMPU
    @aSSIDX = aSSIDX
    @aSSTYPE = aSSTYPE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_ASSLSTResponse
#   result - ResultType
class RMV_ASSLSTResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_ASSLST
#   iMPU - (any)
#   aSSIDX - (any)
#   aSSTYPE - (any)
#   aSSDATA - MOD_ASSLST::ASSDATA
class MOD_ASSLST

  # inner class for member: ASSDATA
  # {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ASSDATA
  #   aCTED - (any)
  #   dSPNUM - (any)
  #   pRMNUM - (any)
  #   mAXNUM - (any)
  #   rTIME - (any)
  #   aND - MOD_ASSLST::ASSDATA::AND
  class ASSDATA

    # inner class for member: AND
    # {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}AND
    #   aN - (any)
    #   uT - (any)
    #   nA - (any)
    #   nRT - (any)
    class AND
      attr_accessor :aN
      attr_accessor :uT
      attr_accessor :nA
      attr_accessor :nRT

      def initialize(aN = nil, uT = nil, nA = nil, nRT = nil)
        @aN = aN
        @uT = uT
        @nA = nA
        @nRT = nRT
      end
    end

    attr_accessor :aCTED
    attr_accessor :dSPNUM
    attr_accessor :pRMNUM
    attr_accessor :mAXNUM
    attr_accessor :rTIME
    attr_accessor :aND

    def initialize(aCTED = nil, dSPNUM = nil, pRMNUM = nil, mAXNUM = nil, rTIME = nil, aND = [])
      @aCTED = aCTED
      @dSPNUM = dSPNUM
      @pRMNUM = pRMNUM
      @mAXNUM = mAXNUM
      @rTIME = rTIME
      @aND = aND
    end
  end

  attr_accessor :iMPU
  attr_accessor :aSSIDX
  attr_accessor :aSSTYPE
  attr_accessor :aSSDATA

  def initialize(iMPU = nil, aSSIDX = nil, aSSTYPE = nil, aSSDATA = nil)
    @iMPU = iMPU
    @aSSIDX = aSSIDX
    @aSSTYPE = aSSTYPE
    @aSSDATA = aSSDATA
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_ASSLSTResponse
#   result - ResultType
class MOD_ASSLSTResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ASSLST
#   responseComplexType - (any)
#   iMPU - (any)
#   aSSIDX - (any)
#   aSSTYPE - (any)
class LST_ASSLST
  attr_accessor :responseComplexType
  attr_accessor :iMPU
  attr_accessor :aSSIDX
  attr_accessor :aSSTYPE

  def initialize(responseComplexType = nil, iMPU = nil, aSSIDX = nil, aSSTYPE = nil)
    @responseComplexType = responseComplexType
    @iMPU = iMPU
    @aSSIDX = aSSIDX
    @aSSTYPE = aSSTYPE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ASSLSTResponse
#   result - LST_ASSLSTType
class LST_ASSLSTResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CUGINFO
#   iMPU - (any)
#   nETWORKID - (any)
#   iNTERLOCKCODE - (any)
#   pRIORITY - (any)
class ADD_CUGINFO
  attr_accessor :iMPU
  attr_accessor :nETWORKID
  attr_accessor :iNTERLOCKCODE
  attr_accessor :pRIORITY

  def initialize(iMPU = nil, nETWORKID = nil, iNTERLOCKCODE = nil, pRIORITY = nil)
    @iMPU = iMPU
    @nETWORKID = nETWORKID
    @iNTERLOCKCODE = iNTERLOCKCODE
    @pRIORITY = pRIORITY
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CUGINFOResponse
#   result - ResultType
class ADD_CUGINFOResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CUGINFO
#   iMPU - (any)
#   nETWORKID - (any)
#   iNTERLOCKCODE - (any)
#   pRIORITY - (any)
class MOD_CUGINFO
  attr_accessor :iMPU
  attr_accessor :nETWORKID
  attr_accessor :iNTERLOCKCODE
  attr_accessor :pRIORITY

  def initialize(iMPU = nil, nETWORKID = nil, iNTERLOCKCODE = nil, pRIORITY = nil)
    @iMPU = iMPU
    @nETWORKID = nETWORKID
    @iNTERLOCKCODE = iNTERLOCKCODE
    @pRIORITY = pRIORITY
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CUGINFOResponse
#   result - ResultType
class MOD_CUGINFOResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CUGINFO
#   iMPU - (any)
class RMV_CUGINFO
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CUGINFOResponse
#   result - ResultType
class RMV_CUGINFOResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CUGINFO
#   iMPU - (any)
class LST_CUGINFO
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CUGINFOResponse
#   result - LST_CUGINFOType
class LST_CUGINFOResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_SS
class REG_SS
  def initialize
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_SSResponse
#   result - ResultType
class REG_SSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SS
class DSP_SS
  def initialize
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SSResponse
#   result - ResultType
class DSP_SSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RST_PIN
#   iMPU - (any)
#   pIN - (any)
class RST_PIN
  attr_accessor :iMPU
  attr_accessor :pIN

  def initialize(iMPU = nil, pIN = nil)
    @iMPU = iMPU
    @pIN = pIN
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RST_PINResponse
#   result - ResultType
class RST_PINResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_PIN
#   iMPU - (any)
class DSP_PIN
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_PINResponse
#   result - DSP_PINType
class DSP_PINResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}SET_PINMODE
#   iMPU - (any)
#   uPF - (any)
class SET_PINMODE
  attr_accessor :iMPU
  attr_accessor :uPF

  def initialize(iMPU = nil, uPF = nil)
    @iMPU = iMPU
    @uPF = uPF
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}SET_PINMODEResponse
#   result - ResultType
class SET_PINMODEResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PINMODE
#   iMPU - (any)
class LST_PINMODE
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PINMODEResponse
#   result - LST_PINMODEType
class LST_PINMODEResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}SET_CDIVBARGRP
#   iMPU - (any)
#   cDIVBARGRP - (any)
class SET_CDIVBARGRP
  attr_accessor :iMPU
  attr_accessor :cDIVBARGRP

  def initialize(iMPU = nil, cDIVBARGRP = nil)
    @iMPU = iMPU
    @cDIVBARGRP = cDIVBARGRP
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}SET_CDIVBARGRPResponse
#   result - ResultType
class SET_CDIVBARGRPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CDIVBARGRP
#   iMPU - (any)
class LST_CDIVBARGRP
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CDIVBARGRPResponse
#   result - LST_CDIVBARGRPType
class LST_CDIVBARGRPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SS_USE_ALLOWED
#   iMPU - (any)
#   dSPOPTIMIZE - (any)
class DSP_SS_USE_ALLOWED
  attr_accessor :iMPU
  attr_accessor :dSPOPTIMIZE

  def initialize(iMPU = nil, dSPOPTIMIZE = nil)
    @iMPU = iMPU
    @dSPOPTIMIZE = dSPOPTIMIZE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SS_USE_ALLOWEDResponse
#   result - DSP_SS_USE_ALLOWEDType
class DSP_SS_USE_ALLOWEDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_TPRequest
#   mEGROUP - (any)
#   tEMPLATEIDX - (any)
#   tEMPLATENAME - (any)
#   dSPIDX - (any)
#   lP - (any)
#   cSC - (any)
#   uTYPE - (any)
#   vCCFLAG - (any)
#   vTFLAG - (any)
#   nSCFU - (any)
#   nSCFUVM - (any)
#   nSCFB - (any)
#   nSCFBVM - (any)
#   nSCFNR - (any)
#   nSCFNRVM - (any)
#   nSCFNL - (any)
#   nSCFNLVM - (any)
#   nSCD - (any)
#   nSCDVM - (any)
#   nSCFNRC - (any)
#   nSCFNRCVM - (any)
#   nSCLIP - (any)
#   nSCIDCW - (any)
#   nSRIO - (any)
#   nSCNIP - (any)
#   nSCLIR - (any)
#   nSRIP - (any)
#   nSCNIR - (any)
#   nSRID - (any)
#   nSNRID - (any)
#   nSRND - (any)
#   nSNRND - (any)
#   nSCW - (any)
#   nSCCW - (any)
#   nSOIP - (any)
#   nSACRM - (any)
#   nSGOIR - (any)
#   nSMOIR - (any)
#   nSTIP - (any)
#   nSTIR - (any)
#   nSOTIR - (any)
#   nSCLIPNOSCREENING - (any)
#   nSCR - (any)
#   nSWAKE_UP - (any)
#   nSAOC_D - (any)
#   nSAOC_E - (any)
#   nSXEXH - (any)
#   nSXEGJ - (any)
#   nSCWCFNR - (any)
#   nSIIFC - (any)
#   nSDN_CALL_OUT_BAR - (any)
#   nSCCBS - (any)
#   nSCCNR - (any)
#   nSCCBSR - (any)
#   nSCCNRR - (any)
#   nS3PTY - (any)
#   nSNPTY - (any)
#   nSDND - (any)
#   nSMCR - (any)
#   nSCBA - (any)
#   nSTMP_LIN - (any)
#   nSCODEC_CNTRL - (any)
#   nSMWI - (any)
#   nSDC - (any)
#   nSHOLD - (any)
#   nSECT - (any)
#   nSCFTB - (any)
#   nSDAN - (any)
#   nSSTOP_SECRET - (any)
#   nSMCID - (any)
#   nSEBO - (any)
#   nSICO - (any)
#   nSOUTG - (any)
#   nSINQYH - (any)
#   nSUINFO - (any)
#   nSDN_CALL_OUT_ALLOW - (any)
#   nSSIC - (any)
#   nSSOC - (any)
#   nSSETCFNRTIME - (any)
#   nSCFS - (any)
#   nSCFSB - (any)
#   nSFAX - (any)
#   nSABRC - (any)
#   nSACRTOVM - (any)
#   nSPREPAID - (any)
#   nSCRBT - (any)
#   nSICB - (any)
#   nSMRINGING - (any)
#   nSCIS - (any)
#   nSCBEG - (any)
#   nSCOLP - (any)
#   nSCOLR - (any)
#   nSCOLPOVR - (any)
#   nSBAOC - (any)
#   nSBOIC - (any)
#   nSBOICEXHC - (any)
#   nSBAIC - (any)
#   nSBICROM - (any)
#   nSSPEED_DIAL - (any)
#   nSSD1D - (any)
#   nSSD2D - (any)
#   nSGRNCALL - (any)
#   nSCPARK - (any)
#   nSGAA - (any)
#   nSQSNS - (any)
#   nSMSN - (any)
#   nSHOTLINE - (any)
#   nSAOC_S - (any)
#   nSNIGHTSRV - (any)
#   nSBACKNUM - (any)
#   nSAUTOCON - (any)
#   nSCAMPON - (any)
#   nSCTD - (any)
#   nSCLICKHOLD - (any)
#   nSQUEUE - (any)
#   nSSANSWER - (any)
#   nSICENCF - (any)
#   nSCFGO - (any)
#   nSCECT - (any)
#   nSCTGO - (any)
#   nSCTIO - (any)
#   nSSETBUSY - (any)
#   nSOVERSTEP - (any)
#   nSABSENT - (any)
#   nSMONITOR - (any)
#   nSFMONITOR - (any)
#   nSDISCNT - (any)
#   nSFDISCNT - (any)
#   nSINSERT - (any)
#   nSFINSERT - (any)
#   nSASI - (any)
#   nSPWCB - (any)
#   nSRD - (any)
#   nSLCPS - (any)
#   nSNCPS - (any)
#   nSICPS - (any)
#   nSHCPS - (any)
#   nSCBCLOCK - (any)
#   nSMINIBAR - (any)
#   nSMCN - (any)
#   nSDSTR - (any)
#   nSOPRREG - (any)
#   nSONEKEY - (any)
#   nSINBOUND - (any)
#   nSOUTBOUND - (any)
#   nSCALLERID - (any)
#   nSCUN - (any)
#   nSIPTVVC - (any)
#   nSNP - (any)
#   nSSEC - (any)
#   nSSECSTA - (any)
#   nSHRCN - (any)
#   nSSB - (any)
#   nSSCCA - (any)
#   nSCCS - (any)
#   nSOCCR - (any)
#   nSIMSMS - (any)
#   lCO - (any)
#   lC - (any)
#   lCT - (any)
#   nTT - (any)
#   iTT - (any)
#   iCTX - (any)
#   oCTX - (any)
#   iNTT - (any)
#   iITT - (any)
#   iCLT - (any)
#   iCDDD - (any)
#   iCIDD - (any)
#   iOLT - (any)
#   cTLCO - (any)
#   cTLCT - (any)
#   cTLD - (any)
#   cTINTNANP - (any)
#   cTINTWORLD - (any)
#   cTDA - (any)
#   cTOSM - (any)
#   cTOSP - (any)
#   cTOSP1 - (any)
#   cCO1 - (any)
#   cCO2 - (any)
#   cCO3 - (any)
#   cCO4 - (any)
#   cCO5 - (any)
#   cCO6 - (any)
#   cCO7 - (any)
#   cCO8 - (any)
#   cCO9 - (any)
#   cCO10 - (any)
#   cCO11 - (any)
#   cCO12 - (any)
#   cCO13 - (any)
#   cCO14 - (any)
#   cCO15 - (any)
#   cCO16 - (any)
#   cCO17 - (any)
#   cCO18 - (any)
#   cCO19 - (any)
#   cCO20 - (any)
#   cCO21 - (any)
#   cCO22 - (any)
#   cCO23 - (any)
#   cCO24 - (any)
#   cCO25 - (any)
#   cCO26 - (any)
#   cCO27 - (any)
#   cCO28 - (any)
#   cCO29 - (any)
#   cCO30 - (any)
#   cCO31 - (any)
#   cCO32 - (any)
#   hIGHENTCO - (any)
#   oPERATOR - (any)
#   sUPYSRV - (any)
#   iDDCI - (any)
#   nTCI - (any)
#   lTCI - (any)
#   rSC - (any)
#   cIG - (any)
#   oUTRST - (any)
#   iNRST - (any)
#   nOAT - (any)
#   rINGCOUNT - (any)
#   vMAIND - (any)
#   vDMAIND - (any)
#   tGRP - (any)
#   tIDHLD - (any)
#   tIDCW - (any)
#   sCF - (any)
#   lMTGRP - (any)
#   fLBGRP - (any)
#   sLBGRP - (any)
#   cOP - (any)
#   g711_64K_A_LAW - (any)
#   g711_64K_U_LAW - (any)
#   g722 - (any)
#   g723 - (any)
#   g726 - (any)
#   g728 - (any)
#   g729 - (any)
#   cODEC_MP4A - (any)
#   cODEC2833 - (any)
#   cODEC2198 - (any)
#   g726_40 - (any)
#   g726_32 - (any)
#   g726_24 - (any)
#   g726_16 - (any)
#   aMR - (any)
#   cLEARMODE - (any)
#   iLBC - (any)
#   sPEEX - (any)
#   g729EV - (any)
#   eVRC - (any)
#   eVRCB - (any)
#   h261 - (any)
#   h263 - (any)
#   cODEC_MP4V - (any)
#   h264 - (any)
#   t38 - (any)
#   t120 - (any)
#   g711A_VBD - (any)
#   g711U_VBD - (any)
#   g726_VBD - (any)
#   g726_40_VBD - (any)
#   g726_32_VBD - (any)
#   g726_24_VBD - (any)
#   g726_16_VBD - (any)
#   wIND_BAND_AMR - (any)
#   gSM610 - (any)
#   h263_2000 - (any)
#   bROADVOICE_32 - (any)
#   uNKNOWN_CODEC - (any)
#   aCODEC - (any)
#   vCODEC - (any)
#   pOLIDX - (any)
#   nCPI - (any)
#   iCPI - (any)
#   hCPI - (any)
#   eBOCL - (any)
#   eBOPL - (any)
#   eBOIT - (any)
#   rM - (any)
#   cPC - (any)
#   pCHG - (any)
#   tFPT - (any)
#   cHT - (any)
#   mCIDMODE - (any)
#   mCIDCMODE - (any)
#   mCIDAMODE - (any)
#   pREPAIDIDX - (any)
#   cRBTID - (any)
#   oDBBICTYPE - (any)
#   oDBBOCTYPE - (any)
#   oDBBARTYPE - (any)
#   oDBSS - (any)
#   oDBBRCFTYPE - (any)
#   oDBINFORM - (any)
#   oDBENTAIN - (any)
#   oDBPLMNBAR1 - (any)
#   oDBPLMNBAR2 - (any)
#   oDBPLMNBAR3 - (any)
#   oDBPLMNBAR4 - (any)
#   pNOTI - (any)
#   mAXPARACALL - (any)
#   aTSDTMBUSY - (any)
#   cALLCOUNT - (any)
#   cDNOTICALLER - (any)
#   iSCHGFLAG - (any)
#   cHC - (any)
#   cUSER - (any)
#   cGRP - (any)
#   cUSERGRP - (any)
#   sTCF - (any)
#   cHARSC - (any)
#   rEGUIDX - (any)
#   sOCBFUNC - (any)
#   sOCBPTONEIDX - (any)
#   aDMINCBA - (any)
#   aDCONTROL_DIVERSION - (any)
#   dPR - (any)
#   pRON - (any)
#   cPCRUS - (any)
#   cUSCAT - (any)
#   sPT100REL - (any)
#   aNALYSISMODE - (any)
#   gRPIDX - (any)
#   sCADDRIDX - (any)
#   cDNOCB - (any)
#   kVALUE - (any)
#   iNPFIDX - (any)
class ADD_TPRequest
  attr_accessor :mEGROUP
  attr_accessor :tEMPLATEIDX
  attr_accessor :tEMPLATENAME
  attr_accessor :dSPIDX
  attr_accessor :lP
  attr_accessor :cSC
  attr_accessor :uTYPE
  attr_accessor :vCCFLAG
  attr_accessor :vTFLAG
  attr_accessor :nSCFU
  attr_accessor :nSCFUVM
  attr_accessor :nSCFB
  attr_accessor :nSCFBVM
  attr_accessor :nSCFNR
  attr_accessor :nSCFNRVM
  attr_accessor :nSCFNL
  attr_accessor :nSCFNLVM
  attr_accessor :nSCD
  attr_accessor :nSCDVM
  attr_accessor :nSCFNRC
  attr_accessor :nSCFNRCVM
  attr_accessor :nSCLIP
  attr_accessor :nSCIDCW
  attr_accessor :nSRIO
  attr_accessor :nSCNIP
  attr_accessor :nSCLIR
  attr_accessor :nSRIP
  attr_accessor :nSCNIR
  attr_accessor :nSRID
  attr_accessor :nSNRID
  attr_accessor :nSRND
  attr_accessor :nSNRND
  attr_accessor :nSCW
  attr_accessor :nSCCW
  attr_accessor :nSOIP
  attr_accessor :nSACRM
  attr_accessor :nSGOIR
  attr_accessor :nSMOIR
  attr_accessor :nSTIP
  attr_accessor :nSTIR
  attr_accessor :nSOTIR
  attr_accessor :nSCLIPNOSCREENING
  attr_accessor :nSCR
  attr_accessor :nSWAKE_UP
  attr_accessor :nSAOC_D
  attr_accessor :nSAOC_E
  attr_accessor :nSXEXH
  attr_accessor :nSXEGJ
  attr_accessor :nSCWCFNR
  attr_accessor :nSIIFC
  attr_accessor :nSDN_CALL_OUT_BAR
  attr_accessor :nSCCBS
  attr_accessor :nSCCNR
  attr_accessor :nSCCBSR
  attr_accessor :nSCCNRR
  attr_accessor :nS3PTY
  attr_accessor :nSNPTY
  attr_accessor :nSDND
  attr_accessor :nSMCR
  attr_accessor :nSCBA
  attr_accessor :nSTMP_LIN
  attr_accessor :nSCODEC_CNTRL
  attr_accessor :nSMWI
  attr_accessor :nSDC
  attr_accessor :nSHOLD
  attr_accessor :nSECT
  attr_accessor :nSCFTB
  attr_accessor :nSDAN
  attr_accessor :nSSTOP_SECRET
  attr_accessor :nSMCID
  attr_accessor :nSEBO
  attr_accessor :nSICO
  attr_accessor :nSOUTG
  attr_accessor :nSINQYH
  attr_accessor :nSUINFO
  attr_accessor :nSDN_CALL_OUT_ALLOW
  attr_accessor :nSSIC
  attr_accessor :nSSOC
  attr_accessor :nSSETCFNRTIME
  attr_accessor :nSCFS
  attr_accessor :nSCFSB
  attr_accessor :nSFAX
  attr_accessor :nSABRC
  attr_accessor :nSACRTOVM
  attr_accessor :nSPREPAID
  attr_accessor :nSCRBT
  attr_accessor :nSICB
  attr_accessor :nSMRINGING
  attr_accessor :nSCIS
  attr_accessor :nSCBEG
  attr_accessor :nSCOLP
  attr_accessor :nSCOLR
  attr_accessor :nSCOLPOVR
  attr_accessor :nSBAOC
  attr_accessor :nSBOIC
  attr_accessor :nSBOICEXHC
  attr_accessor :nSBAIC
  attr_accessor :nSBICROM
  attr_accessor :nSSPEED_DIAL
  attr_accessor :nSSD1D
  attr_accessor :nSSD2D
  attr_accessor :nSGRNCALL
  attr_accessor :nSCPARK
  attr_accessor :nSGAA
  attr_accessor :nSQSNS
  attr_accessor :nSMSN
  attr_accessor :nSHOTLINE
  attr_accessor :nSAOC_S
  attr_accessor :nSNIGHTSRV
  attr_accessor :nSBACKNUM
  attr_accessor :nSAUTOCON
  attr_accessor :nSCAMPON
  attr_accessor :nSCTD
  attr_accessor :nSCLICKHOLD
  attr_accessor :nSQUEUE
  attr_accessor :nSSANSWER
  attr_accessor :nSICENCF
  attr_accessor :nSCFGO
  attr_accessor :nSCECT
  attr_accessor :nSCTGO
  attr_accessor :nSCTIO
  attr_accessor :nSSETBUSY
  attr_accessor :nSOVERSTEP
  attr_accessor :nSABSENT
  attr_accessor :nSMONITOR
  attr_accessor :nSFMONITOR
  attr_accessor :nSDISCNT
  attr_accessor :nSFDISCNT
  attr_accessor :nSINSERT
  attr_accessor :nSFINSERT
  attr_accessor :nSASI
  attr_accessor :nSPWCB
  attr_accessor :nSRD
  attr_accessor :nSLCPS
  attr_accessor :nSNCPS
  attr_accessor :nSICPS
  attr_accessor :nSHCPS
  attr_accessor :nSCBCLOCK
  attr_accessor :nSMINIBAR
  attr_accessor :nSMCN
  attr_accessor :nSDSTR
  attr_accessor :nSOPRREG
  attr_accessor :nSONEKEY
  attr_accessor :nSINBOUND
  attr_accessor :nSOUTBOUND
  attr_accessor :nSCALLERID
  attr_accessor :nSCUN
  attr_accessor :nSIPTVVC
  attr_accessor :nSNP
  attr_accessor :nSSEC
  attr_accessor :nSSECSTA
  attr_accessor :nSHRCN
  attr_accessor :nSSB
  attr_accessor :nSSCCA
  attr_accessor :nSCCS
  attr_accessor :nSOCCR
  attr_accessor :nSIMSMS
  attr_accessor :lCO
  attr_accessor :lC
  attr_accessor :lCT
  attr_accessor :nTT
  attr_accessor :iTT
  attr_accessor :iCTX
  attr_accessor :oCTX
  attr_accessor :iNTT
  attr_accessor :iITT
  attr_accessor :iCLT
  attr_accessor :iCDDD
  attr_accessor :iCIDD
  attr_accessor :iOLT
  attr_accessor :cTLCO
  attr_accessor :cTLCT
  attr_accessor :cTLD
  attr_accessor :cTINTNANP
  attr_accessor :cTINTWORLD
  attr_accessor :cTDA
  attr_accessor :cTOSM
  attr_accessor :cTOSP
  attr_accessor :cTOSP1
  attr_accessor :cCO1
  attr_accessor :cCO2
  attr_accessor :cCO3
  attr_accessor :cCO4
  attr_accessor :cCO5
  attr_accessor :cCO6
  attr_accessor :cCO7
  attr_accessor :cCO8
  attr_accessor :cCO9
  attr_accessor :cCO10
  attr_accessor :cCO11
  attr_accessor :cCO12
  attr_accessor :cCO13
  attr_accessor :cCO14
  attr_accessor :cCO15
  attr_accessor :cCO16
  attr_accessor :cCO17
  attr_accessor :cCO18
  attr_accessor :cCO19
  attr_accessor :cCO20
  attr_accessor :cCO21
  attr_accessor :cCO22
  attr_accessor :cCO23
  attr_accessor :cCO24
  attr_accessor :cCO25
  attr_accessor :cCO26
  attr_accessor :cCO27
  attr_accessor :cCO28
  attr_accessor :cCO29
  attr_accessor :cCO30
  attr_accessor :cCO31
  attr_accessor :cCO32
  attr_accessor :hIGHENTCO
  attr_accessor :oPERATOR
  attr_accessor :sUPYSRV
  attr_accessor :iDDCI
  attr_accessor :nTCI
  attr_accessor :lTCI
  attr_accessor :rSC
  attr_accessor :cIG
  attr_accessor :oUTRST
  attr_accessor :iNRST
  attr_accessor :nOAT
  attr_accessor :rINGCOUNT
  attr_accessor :vMAIND
  attr_accessor :vDMAIND
  attr_accessor :tGRP
  attr_accessor :tIDHLD
  attr_accessor :tIDCW
  attr_accessor :sCF
  attr_accessor :lMTGRP
  attr_accessor :fLBGRP
  attr_accessor :sLBGRP
  attr_accessor :cOP
  attr_accessor :g711_64K_A_LAW
  attr_accessor :g711_64K_U_LAW
  attr_accessor :g722
  attr_accessor :g723
  attr_accessor :g726
  attr_accessor :g728
  attr_accessor :g729
  attr_accessor :cODEC_MP4A
  attr_accessor :cODEC2833
  attr_accessor :cODEC2198
  attr_accessor :g726_40
  attr_accessor :g726_32
  attr_accessor :g726_24
  attr_accessor :g726_16
  attr_accessor :aMR
  attr_accessor :cLEARMODE
  attr_accessor :iLBC
  attr_accessor :sPEEX
  attr_accessor :g729EV
  attr_accessor :eVRC
  attr_accessor :eVRCB
  attr_accessor :h261
  attr_accessor :h263
  attr_accessor :cODEC_MP4V
  attr_accessor :h264
  attr_accessor :t38
  attr_accessor :t120
  attr_accessor :g711A_VBD
  attr_accessor :g711U_VBD
  attr_accessor :g726_VBD
  attr_accessor :g726_40_VBD
  attr_accessor :g726_32_VBD
  attr_accessor :g726_24_VBD
  attr_accessor :g726_16_VBD
  attr_accessor :wIND_BAND_AMR
  attr_accessor :gSM610
  attr_accessor :h263_2000
  attr_accessor :bROADVOICE_32
  attr_accessor :uNKNOWN_CODEC
  attr_accessor :aCODEC
  attr_accessor :vCODEC
  attr_accessor :pOLIDX
  attr_accessor :nCPI
  attr_accessor :iCPI
  attr_accessor :hCPI
  attr_accessor :eBOCL
  attr_accessor :eBOPL
  attr_accessor :eBOIT
  attr_accessor :rM
  attr_accessor :cPC
  attr_accessor :pCHG
  attr_accessor :tFPT
  attr_accessor :cHT
  attr_accessor :mCIDMODE
  attr_accessor :mCIDCMODE
  attr_accessor :mCIDAMODE
  attr_accessor :pREPAIDIDX
  attr_accessor :cRBTID
  attr_accessor :oDBBICTYPE
  attr_accessor :oDBBOCTYPE
  attr_accessor :oDBBARTYPE
  attr_accessor :oDBSS
  attr_accessor :oDBBRCFTYPE
  attr_accessor :oDBINFORM
  attr_accessor :oDBENTAIN
  attr_accessor :oDBPLMNBAR1
  attr_accessor :oDBPLMNBAR2
  attr_accessor :oDBPLMNBAR3
  attr_accessor :oDBPLMNBAR4
  attr_accessor :pNOTI
  attr_accessor :mAXPARACALL
  attr_accessor :aTSDTMBUSY
  attr_accessor :cALLCOUNT
  attr_accessor :cDNOTICALLER
  attr_accessor :iSCHGFLAG
  attr_accessor :cHC
  attr_accessor :cUSER
  attr_accessor :cGRP
  attr_accessor :cUSERGRP
  attr_accessor :sTCF
  attr_accessor :cHARSC
  attr_accessor :rEGUIDX
  attr_accessor :sOCBFUNC
  attr_accessor :sOCBPTONEIDX
  attr_accessor :aDMINCBA
  attr_accessor :aDCONTROL_DIVERSION
  attr_accessor :dPR
  attr_accessor :pRON
  attr_accessor :cPCRUS
  attr_accessor :cUSCAT
  attr_accessor :sPT100REL
  attr_accessor :aNALYSISMODE
  attr_accessor :gRPIDX
  attr_accessor :sCADDRIDX
  attr_accessor :cDNOCB
  attr_accessor :kVALUE
  attr_accessor :iNPFIDX

  def initialize(mEGROUP = nil, tEMPLATEIDX = nil, tEMPLATENAME = nil, dSPIDX = nil, lP = nil, cSC = nil, uTYPE = nil, vCCFLAG = nil, vTFLAG = nil, nSCFU = nil, nSCFUVM = nil, nSCFB = nil, nSCFBVM = nil, nSCFNR = nil, nSCFNRVM = nil, nSCFNL = nil, nSCFNLVM = nil, nSCD = nil, nSCDVM = nil, nSCFNRC = nil, nSCFNRCVM = nil, nSCLIP = nil, nSCIDCW = nil, nSRIO = nil, nSCNIP = nil, nSCLIR = nil, nSRIP = nil, nSCNIR = nil, nSRID = nil, nSNRID = nil, nSRND = nil, nSNRND = nil, nSCW = nil, nSCCW = nil, nSOIP = nil, nSACRM = nil, nSGOIR = nil, nSMOIR = nil, nSTIP = nil, nSTIR = nil, nSOTIR = nil, nSCLIPNOSCREENING = nil, nSCR = nil, nSWAKE_UP = nil, nSAOC_D = nil, nSAOC_E = nil, nSXEXH = nil, nSXEGJ = nil, nSCWCFNR = nil, nSIIFC = nil, nSDN_CALL_OUT_BAR = nil, nSCCBS = nil, nSCCNR = nil, nSCCBSR = nil, nSCCNRR = nil, nS3PTY = nil, nSNPTY = nil, nSDND = nil, nSMCR = nil, nSCBA = nil, nSTMP_LIN = nil, nSCODEC_CNTRL = nil, nSMWI = nil, nSDC = nil, nSHOLD = nil, nSECT = nil, nSCFTB = nil, nSDAN = nil, nSSTOP_SECRET = nil, nSMCID = nil, nSEBO = nil, nSICO = nil, nSOUTG = nil, nSINQYH = nil, nSUINFO = nil, nSDN_CALL_OUT_ALLOW = nil, nSSIC = nil, nSSOC = nil, nSSETCFNRTIME = nil, nSCFS = nil, nSCFSB = nil, nSFAX = nil, nSABRC = nil, nSACRTOVM = nil, nSPREPAID = nil, nSCRBT = nil, nSICB = nil, nSMRINGING = nil, nSCIS = nil, nSCBEG = nil, nSCOLP = nil, nSCOLR = nil, nSCOLPOVR = nil, nSBAOC = nil, nSBOIC = nil, nSBOICEXHC = nil, nSBAIC = nil, nSBICROM = nil, nSSPEED_DIAL = nil, nSSD1D = nil, nSSD2D = nil, nSGRNCALL = nil, nSCPARK = nil, nSGAA = nil, nSQSNS = nil, nSMSN = nil, nSHOTLINE = nil, nSAOC_S = nil, nSNIGHTSRV = nil, nSBACKNUM = nil, nSAUTOCON = nil, nSCAMPON = nil, nSCTD = nil, nSCLICKHOLD = nil, nSQUEUE = nil, nSSANSWER = nil, nSICENCF = nil, nSCFGO = nil, nSCECT = nil, nSCTGO = nil, nSCTIO = nil, nSSETBUSY = nil, nSOVERSTEP = nil, nSABSENT = nil, nSMONITOR = nil, nSFMONITOR = nil, nSDISCNT = nil, nSFDISCNT = nil, nSINSERT = nil, nSFINSERT = nil, nSASI = nil, nSPWCB = nil, nSRD = nil, nSLCPS = nil, nSNCPS = nil, nSICPS = nil, nSHCPS = nil, nSCBCLOCK = nil, nSMINIBAR = nil, nSMCN = nil, nSDSTR = nil, nSOPRREG = nil, nSONEKEY = nil, nSINBOUND = nil, nSOUTBOUND = nil, nSCALLERID = nil, nSCUN = nil, nSIPTVVC = nil, nSNP = nil, nSSEC = nil, nSSECSTA = nil, nSHRCN = nil, nSSB = nil, nSSCCA = nil, nSCCS = nil, nSOCCR = nil, nSIMSMS = nil, lCO = nil, lC = nil, lCT = nil, nTT = nil, iTT = nil, iCTX = nil, oCTX = nil, iNTT = nil, iITT = nil, iCLT = nil, iCDDD = nil, iCIDD = nil, iOLT = nil, cTLCO = nil, cTLCT = nil, cTLD = nil, cTINTNANP = nil, cTINTWORLD = nil, cTDA = nil, cTOSM = nil, cTOSP = nil, cTOSP1 = nil, cCO1 = nil, cCO2 = nil, cCO3 = nil, cCO4 = nil, cCO5 = nil, cCO6 = nil, cCO7 = nil, cCO8 = nil, cCO9 = nil, cCO10 = nil, cCO11 = nil, cCO12 = nil, cCO13 = nil, cCO14 = nil, cCO15 = nil, cCO16 = nil, cCO17 = nil, cCO18 = nil, cCO19 = nil, cCO20 = nil, cCO21 = nil, cCO22 = nil, cCO23 = nil, cCO24 = nil, cCO25 = nil, cCO26 = nil, cCO27 = nil, cCO28 = nil, cCO29 = nil, cCO30 = nil, cCO31 = nil, cCO32 = nil, hIGHENTCO = nil, oPERATOR = nil, sUPYSRV = nil, iDDCI = nil, nTCI = nil, lTCI = nil, rSC = nil, cIG = nil, oUTRST = nil, iNRST = nil, nOAT = nil, rINGCOUNT = nil, vMAIND = nil, vDMAIND = nil, tGRP = nil, tIDHLD = nil, tIDCW = nil, sCF = nil, lMTGRP = nil, fLBGRP = nil, sLBGRP = nil, cOP = nil, g711_64K_A_LAW = nil, g711_64K_U_LAW = nil, g722 = nil, g723 = nil, g726 = nil, g728 = nil, g729 = nil, cODEC_MP4A = nil, cODEC2833 = nil, cODEC2198 = nil, g726_40 = nil, g726_32 = nil, g726_24 = nil, g726_16 = nil, aMR = nil, cLEARMODE = nil, iLBC = nil, sPEEX = nil, g729EV = nil, eVRC = nil, eVRCB = nil, h261 = nil, h263 = nil, cODEC_MP4V = nil, h264 = nil, t38 = nil, t120 = nil, g711A_VBD = nil, g711U_VBD = nil, g726_VBD = nil, g726_40_VBD = nil, g726_32_VBD = nil, g726_24_VBD = nil, g726_16_VBD = nil, wIND_BAND_AMR = nil, gSM610 = nil, h263_2000 = nil, bROADVOICE_32 = nil, uNKNOWN_CODEC = nil, aCODEC = nil, vCODEC = nil, pOLIDX = nil, nCPI = nil, iCPI = nil, hCPI = nil, eBOCL = nil, eBOPL = nil, eBOIT = nil, rM = nil, cPC = nil, pCHG = nil, tFPT = nil, cHT = nil, mCIDMODE = nil, mCIDCMODE = nil, mCIDAMODE = nil, pREPAIDIDX = nil, cRBTID = nil, oDBBICTYPE = nil, oDBBOCTYPE = nil, oDBBARTYPE = nil, oDBSS = nil, oDBBRCFTYPE = nil, oDBINFORM = nil, oDBENTAIN = nil, oDBPLMNBAR1 = nil, oDBPLMNBAR2 = nil, oDBPLMNBAR3 = nil, oDBPLMNBAR4 = nil, pNOTI = nil, mAXPARACALL = nil, aTSDTMBUSY = nil, cALLCOUNT = nil, cDNOTICALLER = nil, iSCHGFLAG = nil, cHC = nil, cUSER = nil, cGRP = nil, cUSERGRP = nil, sTCF = nil, cHARSC = nil, rEGUIDX = nil, sOCBFUNC = nil, sOCBPTONEIDX = nil, aDMINCBA = nil, aDCONTROL_DIVERSION = nil, dPR = nil, pRON = nil, cPCRUS = nil, cUSCAT = nil, sPT100REL = nil, aNALYSISMODE = nil, gRPIDX = nil, sCADDRIDX = nil, cDNOCB = nil, kVALUE = nil, iNPFIDX = nil)
    @mEGROUP = mEGROUP
    @tEMPLATEIDX = tEMPLATEIDX
    @tEMPLATENAME = tEMPLATENAME
    @dSPIDX = dSPIDX
    @lP = lP
    @cSC = cSC
    @uTYPE = uTYPE
    @vCCFLAG = vCCFLAG
    @vTFLAG = vTFLAG
    @nSCFU = nSCFU
    @nSCFUVM = nSCFUVM
    @nSCFB = nSCFB
    @nSCFBVM = nSCFBVM
    @nSCFNR = nSCFNR
    @nSCFNRVM = nSCFNRVM
    @nSCFNL = nSCFNL
    @nSCFNLVM = nSCFNLVM
    @nSCD = nSCD
    @nSCDVM = nSCDVM
    @nSCFNRC = nSCFNRC
    @nSCFNRCVM = nSCFNRCVM
    @nSCLIP = nSCLIP
    @nSCIDCW = nSCIDCW
    @nSRIO = nSRIO
    @nSCNIP = nSCNIP
    @nSCLIR = nSCLIR
    @nSRIP = nSRIP
    @nSCNIR = nSCNIR
    @nSRID = nSRID
    @nSNRID = nSNRID
    @nSRND = nSRND
    @nSNRND = nSNRND
    @nSCW = nSCW
    @nSCCW = nSCCW
    @nSOIP = nSOIP
    @nSACRM = nSACRM
    @nSGOIR = nSGOIR
    @nSMOIR = nSMOIR
    @nSTIP = nSTIP
    @nSTIR = nSTIR
    @nSOTIR = nSOTIR
    @nSCLIPNOSCREENING = nSCLIPNOSCREENING
    @nSCR = nSCR
    @nSWAKE_UP = nSWAKE_UP
    @nSAOC_D = nSAOC_D
    @nSAOC_E = nSAOC_E
    @nSXEXH = nSXEXH
    @nSXEGJ = nSXEGJ
    @nSCWCFNR = nSCWCFNR
    @nSIIFC = nSIIFC
    @nSDN_CALL_OUT_BAR = nSDN_CALL_OUT_BAR
    @nSCCBS = nSCCBS
    @nSCCNR = nSCCNR
    @nSCCBSR = nSCCBSR
    @nSCCNRR = nSCCNRR
    @nS3PTY = nS3PTY
    @nSNPTY = nSNPTY
    @nSDND = nSDND
    @nSMCR = nSMCR
    @nSCBA = nSCBA
    @nSTMP_LIN = nSTMP_LIN
    @nSCODEC_CNTRL = nSCODEC_CNTRL
    @nSMWI = nSMWI
    @nSDC = nSDC
    @nSHOLD = nSHOLD
    @nSECT = nSECT
    @nSCFTB = nSCFTB
    @nSDAN = nSDAN
    @nSSTOP_SECRET = nSSTOP_SECRET
    @nSMCID = nSMCID
    @nSEBO = nSEBO
    @nSICO = nSICO
    @nSOUTG = nSOUTG
    @nSINQYH = nSINQYH
    @nSUINFO = nSUINFO
    @nSDN_CALL_OUT_ALLOW = nSDN_CALL_OUT_ALLOW
    @nSSIC = nSSIC
    @nSSOC = nSSOC
    @nSSETCFNRTIME = nSSETCFNRTIME
    @nSCFS = nSCFS
    @nSCFSB = nSCFSB
    @nSFAX = nSFAX
    @nSABRC = nSABRC
    @nSACRTOVM = nSACRTOVM
    @nSPREPAID = nSPREPAID
    @nSCRBT = nSCRBT
    @nSICB = nSICB
    @nSMRINGING = nSMRINGING
    @nSCIS = nSCIS
    @nSCBEG = nSCBEG
    @nSCOLP = nSCOLP
    @nSCOLR = nSCOLR
    @nSCOLPOVR = nSCOLPOVR
    @nSBAOC = nSBAOC
    @nSBOIC = nSBOIC
    @nSBOICEXHC = nSBOICEXHC
    @nSBAIC = nSBAIC
    @nSBICROM = nSBICROM
    @nSSPEED_DIAL = nSSPEED_DIAL
    @nSSD1D = nSSD1D
    @nSSD2D = nSSD2D
    @nSGRNCALL = nSGRNCALL
    @nSCPARK = nSCPARK
    @nSGAA = nSGAA
    @nSQSNS = nSQSNS
    @nSMSN = nSMSN
    @nSHOTLINE = nSHOTLINE
    @nSAOC_S = nSAOC_S
    @nSNIGHTSRV = nSNIGHTSRV
    @nSBACKNUM = nSBACKNUM
    @nSAUTOCON = nSAUTOCON
    @nSCAMPON = nSCAMPON
    @nSCTD = nSCTD
    @nSCLICKHOLD = nSCLICKHOLD
    @nSQUEUE = nSQUEUE
    @nSSANSWER = nSSANSWER
    @nSICENCF = nSICENCF
    @nSCFGO = nSCFGO
    @nSCECT = nSCECT
    @nSCTGO = nSCTGO
    @nSCTIO = nSCTIO
    @nSSETBUSY = nSSETBUSY
    @nSOVERSTEP = nSOVERSTEP
    @nSABSENT = nSABSENT
    @nSMONITOR = nSMONITOR
    @nSFMONITOR = nSFMONITOR
    @nSDISCNT = nSDISCNT
    @nSFDISCNT = nSFDISCNT
    @nSINSERT = nSINSERT
    @nSFINSERT = nSFINSERT
    @nSASI = nSASI
    @nSPWCB = nSPWCB
    @nSRD = nSRD
    @nSLCPS = nSLCPS
    @nSNCPS = nSNCPS
    @nSICPS = nSICPS
    @nSHCPS = nSHCPS
    @nSCBCLOCK = nSCBCLOCK
    @nSMINIBAR = nSMINIBAR
    @nSMCN = nSMCN
    @nSDSTR = nSDSTR
    @nSOPRREG = nSOPRREG
    @nSONEKEY = nSONEKEY
    @nSINBOUND = nSINBOUND
    @nSOUTBOUND = nSOUTBOUND
    @nSCALLERID = nSCALLERID
    @nSCUN = nSCUN
    @nSIPTVVC = nSIPTVVC
    @nSNP = nSNP
    @nSSEC = nSSEC
    @nSSECSTA = nSSECSTA
    @nSHRCN = nSHRCN
    @nSSB = nSSB
    @nSSCCA = nSSCCA
    @nSCCS = nSCCS
    @nSOCCR = nSOCCR
    @nSIMSMS = nSIMSMS
    @lCO = lCO
    @lC = lC
    @lCT = lCT
    @nTT = nTT
    @iTT = iTT
    @iCTX = iCTX
    @oCTX = oCTX
    @iNTT = iNTT
    @iITT = iITT
    @iCLT = iCLT
    @iCDDD = iCDDD
    @iCIDD = iCIDD
    @iOLT = iOLT
    @cTLCO = cTLCO
    @cTLCT = cTLCT
    @cTLD = cTLD
    @cTINTNANP = cTINTNANP
    @cTINTWORLD = cTINTWORLD
    @cTDA = cTDA
    @cTOSM = cTOSM
    @cTOSP = cTOSP
    @cTOSP1 = cTOSP1
    @cCO1 = cCO1
    @cCO2 = cCO2
    @cCO3 = cCO3
    @cCO4 = cCO4
    @cCO5 = cCO5
    @cCO6 = cCO6
    @cCO7 = cCO7
    @cCO8 = cCO8
    @cCO9 = cCO9
    @cCO10 = cCO10
    @cCO11 = cCO11
    @cCO12 = cCO12
    @cCO13 = cCO13
    @cCO14 = cCO14
    @cCO15 = cCO15
    @cCO16 = cCO16
    @cCO17 = cCO17
    @cCO18 = cCO18
    @cCO19 = cCO19
    @cCO20 = cCO20
    @cCO21 = cCO21
    @cCO22 = cCO22
    @cCO23 = cCO23
    @cCO24 = cCO24
    @cCO25 = cCO25
    @cCO26 = cCO26
    @cCO27 = cCO27
    @cCO28 = cCO28
    @cCO29 = cCO29
    @cCO30 = cCO30
    @cCO31 = cCO31
    @cCO32 = cCO32
    @hIGHENTCO = hIGHENTCO
    @oPERATOR = oPERATOR
    @sUPYSRV = sUPYSRV
    @iDDCI = iDDCI
    @nTCI = nTCI
    @lTCI = lTCI
    @rSC = rSC
    @cIG = cIG
    @oUTRST = oUTRST
    @iNRST = iNRST
    @nOAT = nOAT
    @rINGCOUNT = rINGCOUNT
    @vMAIND = vMAIND
    @vDMAIND = vDMAIND
    @tGRP = tGRP
    @tIDHLD = tIDHLD
    @tIDCW = tIDCW
    @sCF = sCF
    @lMTGRP = lMTGRP
    @fLBGRP = fLBGRP
    @sLBGRP = sLBGRP
    @cOP = cOP
    @g711_64K_A_LAW = g711_64K_A_LAW
    @g711_64K_U_LAW = g711_64K_U_LAW
    @g722 = g722
    @g723 = g723
    @g726 = g726
    @g728 = g728
    @g729 = g729
    @cODEC_MP4A = cODEC_MP4A
    @cODEC2833 = cODEC2833
    @cODEC2198 = cODEC2198
    @g726_40 = g726_40
    @g726_32 = g726_32
    @g726_24 = g726_24
    @g726_16 = g726_16
    @aMR = aMR
    @cLEARMODE = cLEARMODE
    @iLBC = iLBC
    @sPEEX = sPEEX
    @g729EV = g729EV
    @eVRC = eVRC
    @eVRCB = eVRCB
    @h261 = h261
    @h263 = h263
    @cODEC_MP4V = cODEC_MP4V
    @h264 = h264
    @t38 = t38
    @t120 = t120
    @g711A_VBD = g711A_VBD
    @g711U_VBD = g711U_VBD
    @g726_VBD = g726_VBD
    @g726_40_VBD = g726_40_VBD
    @g726_32_VBD = g726_32_VBD
    @g726_24_VBD = g726_24_VBD
    @g726_16_VBD = g726_16_VBD
    @wIND_BAND_AMR = wIND_BAND_AMR
    @gSM610 = gSM610
    @h263_2000 = h263_2000
    @bROADVOICE_32 = bROADVOICE_32
    @uNKNOWN_CODEC = uNKNOWN_CODEC
    @aCODEC = aCODEC
    @vCODEC = vCODEC
    @pOLIDX = pOLIDX
    @nCPI = nCPI
    @iCPI = iCPI
    @hCPI = hCPI
    @eBOCL = eBOCL
    @eBOPL = eBOPL
    @eBOIT = eBOIT
    @rM = rM
    @cPC = cPC
    @pCHG = pCHG
    @tFPT = tFPT
    @cHT = cHT
    @mCIDMODE = mCIDMODE
    @mCIDCMODE = mCIDCMODE
    @mCIDAMODE = mCIDAMODE
    @pREPAIDIDX = pREPAIDIDX
    @cRBTID = cRBTID
    @oDBBICTYPE = oDBBICTYPE
    @oDBBOCTYPE = oDBBOCTYPE
    @oDBBARTYPE = oDBBARTYPE
    @oDBSS = oDBSS
    @oDBBRCFTYPE = oDBBRCFTYPE
    @oDBINFORM = oDBINFORM
    @oDBENTAIN = oDBENTAIN
    @oDBPLMNBAR1 = oDBPLMNBAR1
    @oDBPLMNBAR2 = oDBPLMNBAR2
    @oDBPLMNBAR3 = oDBPLMNBAR3
    @oDBPLMNBAR4 = oDBPLMNBAR4
    @pNOTI = pNOTI
    @mAXPARACALL = mAXPARACALL
    @aTSDTMBUSY = aTSDTMBUSY
    @cALLCOUNT = cALLCOUNT
    @cDNOTICALLER = cDNOTICALLER
    @iSCHGFLAG = iSCHGFLAG
    @cHC = cHC
    @cUSER = cUSER
    @cGRP = cGRP
    @cUSERGRP = cUSERGRP
    @sTCF = sTCF
    @cHARSC = cHARSC
    @rEGUIDX = rEGUIDX
    @sOCBFUNC = sOCBFUNC
    @sOCBPTONEIDX = sOCBPTONEIDX
    @aDMINCBA = aDMINCBA
    @aDCONTROL_DIVERSION = aDCONTROL_DIVERSION
    @dPR = dPR
    @pRON = pRON
    @cPCRUS = cPCRUS
    @cUSCAT = cUSCAT
    @sPT100REL = sPT100REL
    @aNALYSISMODE = aNALYSISMODE
    @gRPIDX = gRPIDX
    @sCADDRIDX = sCADDRIDX
    @cDNOCB = cDNOCB
    @kVALUE = kVALUE
    @iNPFIDX = iNPFIDX
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_TPResponse
#   result - ResultType
class ADD_TPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_TPRequest
#   mEGROUP - (any)
#   tEMPLATEIDX - (any)
#   tEMPLATENAME - (any)
#   dSPIDX - (any)
#   lP - (any)
#   cSC - (any)
#   uTYPE - (any)
#   vCCFLAG - (any)
#   vTFLAG - (any)
#   nSCFU - (any)
#   nSCFUVM - (any)
#   nSCFB - (any)
#   nSCFBVM - (any)
#   nSCFNR - (any)
#   nSCFNRVM - (any)
#   nSCFNL - (any)
#   nSCFNLVM - (any)
#   nSCD - (any)
#   nSCDVM - (any)
#   nSCFNRC - (any)
#   nSCFNRCVM - (any)
#   nSCLIP - (any)
#   nSCIDCW - (any)
#   nSRIO - (any)
#   nSCNIP - (any)
#   nSCLIR - (any)
#   nSRIP - (any)
#   nSCNIR - (any)
#   nSRID - (any)
#   nSNRID - (any)
#   nSRND - (any)
#   nSNRND - (any)
#   nSCW - (any)
#   nSCCW - (any)
#   nSOIP - (any)
#   nSACRM - (any)
#   nSGOIR - (any)
#   nSMOIR - (any)
#   nSTIP - (any)
#   nSTIR - (any)
#   nSOTIR - (any)
#   nSCLIPNOSCREENING - (any)
#   nSCR - (any)
#   nSWAKE_UP - (any)
#   nSAOC_D - (any)
#   nSAOC_E - (any)
#   nSXEXH - (any)
#   nSXEGJ - (any)
#   nSCWCFNR - (any)
#   nSIIFC - (any)
#   nSDN_CALL_OUT_BAR - (any)
#   nSCCBS - (any)
#   nSCCNR - (any)
#   nSCCBSR - (any)
#   nSCCNRR - (any)
#   nS3PTY - (any)
#   nSNPTY - (any)
#   nSDND - (any)
#   nSMCR - (any)
#   nSCBA - (any)
#   nSTMP_LIN - (any)
#   nSCODEC_CNTRL - (any)
#   nSMWI - (any)
#   nSDC - (any)
#   nSHOLD - (any)
#   nSECT - (any)
#   nSCFTB - (any)
#   nSDAN - (any)
#   nSSTOP_SECRET - (any)
#   nSMCID - (any)
#   nSEBO - (any)
#   nSICO - (any)
#   nSOUTG - (any)
#   nSINQYH - (any)
#   nSUINFO - (any)
#   nSDN_CALL_OUT_ALLOW - (any)
#   nSSIC - (any)
#   nSSOC - (any)
#   nSSETCFNRTIME - (any)
#   nSCFS - (any)
#   nSCFSB - (any)
#   nSFAX - (any)
#   nSABRC - (any)
#   nSACRTOVM - (any)
#   nSPREPAID - (any)
#   nSCRBT - (any)
#   nSICB - (any)
#   nSMRINGING - (any)
#   nSCIS - (any)
#   nSCBEG - (any)
#   nSCOLP - (any)
#   nSCOLR - (any)
#   nSCOLPOVR - (any)
#   nSBAOC - (any)
#   nSBOIC - (any)
#   nSBOICEXHC - (any)
#   nSBAIC - (any)
#   nSBICROM - (any)
#   nSSPEED_DIAL - (any)
#   nSSD1D - (any)
#   nSSD2D - (any)
#   nSGRNCALL - (any)
#   nSCPARK - (any)
#   nSGAA - (any)
#   nSQSNS - (any)
#   nSMSN - (any)
#   nSHOTLINE - (any)
#   nSAOC_S - (any)
#   nSNIGHTSRV - (any)
#   nSBACKNUM - (any)
#   nSAUTOCON - (any)
#   nSCAMPON - (any)
#   nSCTD - (any)
#   nSCLICKHOLD - (any)
#   nSQUEUE - (any)
#   nSSANSWER - (any)
#   nSICENCF - (any)
#   nSCFGO - (any)
#   nSCECT - (any)
#   nSCTGO - (any)
#   nSCTIO - (any)
#   nSSETBUSY - (any)
#   nSOVERSTEP - (any)
#   nSABSENT - (any)
#   nSMONITOR - (any)
#   nSFMONITOR - (any)
#   nSDISCNT - (any)
#   nSFDISCNT - (any)
#   nSINSERT - (any)
#   nSFINSERT - (any)
#   nSASI - (any)
#   nSPWCB - (any)
#   nSRD - (any)
#   nSLCPS - (any)
#   nSNCPS - (any)
#   nSICPS - (any)
#   nSHCPS - (any)
#   nSCBCLOCK - (any)
#   nSMINIBAR - (any)
#   nSMCN - (any)
#   nSDSTR - (any)
#   nSOPRREG - (any)
#   nSONEKEY - (any)
#   nSINBOUND - (any)
#   nSOUTBOUND - (any)
#   nSCALLERID - (any)
#   nSCUN - (any)
#   nSIPTVVC - (any)
#   nSNP - (any)
#   nSSEC - (any)
#   nSSECSTA - (any)
#   nSHRCN - (any)
#   nSSB - (any)
#   nSSCCA - (any)
#   nSCCS - (any)
#   nSOCCR - (any)
#   nSIMSMS - (any)
#   lCO - (any)
#   lC - (any)
#   lCT - (any)
#   nTT - (any)
#   iTT - (any)
#   iCTX - (any)
#   oCTX - (any)
#   iNTT - (any)
#   iITT - (any)
#   iCLT - (any)
#   iCDDD - (any)
#   iCIDD - (any)
#   iOLT - (any)
#   cTLCO - (any)
#   cTLCT - (any)
#   cTLD - (any)
#   cTINTNANP - (any)
#   cTINTWORLD - (any)
#   cTDA - (any)
#   cTOSM - (any)
#   cTOSP - (any)
#   cTOSP1 - (any)
#   cCO1 - (any)
#   cCO2 - (any)
#   cCO3 - (any)
#   cCO4 - (any)
#   cCO5 - (any)
#   cCO6 - (any)
#   cCO7 - (any)
#   cCO8 - (any)
#   cCO9 - (any)
#   cCO10 - (any)
#   cCO11 - (any)
#   cCO12 - (any)
#   cCO13 - (any)
#   cCO14 - (any)
#   cCO15 - (any)
#   cCO16 - (any)
#   cCO17 - (any)
#   cCO18 - (any)
#   cCO19 - (any)
#   cCO20 - (any)
#   cCO21 - (any)
#   cCO22 - (any)
#   cCO23 - (any)
#   cCO24 - (any)
#   cCO25 - (any)
#   cCO26 - (any)
#   cCO27 - (any)
#   cCO28 - (any)
#   cCO29 - (any)
#   cCO30 - (any)
#   cCO31 - (any)
#   cCO32 - (any)
#   hIGHENTCO - (any)
#   oPERATOR - (any)
#   sUPYSRV - (any)
#   iDDCI - (any)
#   nTCI - (any)
#   lTCI - (any)
#   rSC - (any)
#   cIG - (any)
#   oUTRST - (any)
#   iNRST - (any)
#   nOAT - (any)
#   rINGCOUNT - (any)
#   vMAIND - (any)
#   vDMAIND - (any)
#   tGRP - (any)
#   tIDHLD - (any)
#   tIDCW - (any)
#   sCF - (any)
#   lMTGRP - (any)
#   fLBGRP - (any)
#   sLBGRP - (any)
#   cOP - (any)
#   g711_64K_A_LAW - (any)
#   g711_64K_U_LAW - (any)
#   g722 - (any)
#   g723 - (any)
#   g726 - (any)
#   g728 - (any)
#   g729 - (any)
#   cODEC_MP4A - (any)
#   cODEC2833 - (any)
#   cODEC2198 - (any)
#   g726_40 - (any)
#   g726_32 - (any)
#   g726_24 - (any)
#   g726_16 - (any)
#   aMR - (any)
#   cLEARMODE - (any)
#   iLBC - (any)
#   sPEEX - (any)
#   g729EV - (any)
#   eVRC - (any)
#   eVRCB - (any)
#   h261 - (any)
#   h263 - (any)
#   cODEC_MP4V - (any)
#   h264 - (any)
#   t38 - (any)
#   t120 - (any)
#   g711A_VBD - (any)
#   g711U_VBD - (any)
#   g726_VBD - (any)
#   g726_40_VBD - (any)
#   g726_32_VBD - (any)
#   g726_24_VBD - (any)
#   g726_16_VBD - (any)
#   wIND_BAND_AMR - (any)
#   gSM610 - (any)
#   h263_2000 - (any)
#   bROADVOICE_32 - (any)
#   uNKNOWN_CODEC - (any)
#   aCODEC - (any)
#   vCODEC - (any)
#   pOLIDX - (any)
#   nCPI - (any)
#   iCPI - (any)
#   hCPI - (any)
#   eBOCL - (any)
#   eBOPL - (any)
#   eBOIT - (any)
#   rM - (any)
#   cPC - (any)
#   pCHG - (any)
#   tFPT - (any)
#   cHT - (any)
#   mCIDMODE - (any)
#   mCIDCMODE - (any)
#   mCIDAMODE - (any)
#   pREPAIDIDX - (any)
#   cRBTID - (any)
#   oDBBICTYPE - (any)
#   oDBBOCTYPE - (any)
#   oDBBARTYPE - (any)
#   oDBSS - (any)
#   oDBBRCFTYPE - (any)
#   oDBINFORM - (any)
#   oDBENTAIN - (any)
#   oDBPLMNBAR1 - (any)
#   oDBPLMNBAR2 - (any)
#   oDBPLMNBAR3 - (any)
#   oDBPLMNBAR4 - (any)
#   pNOTI - (any)
#   mAXPARACALL - (any)
#   aTSDTMBUSY - (any)
#   cALLCOUNT - (any)
#   cDNOTICALLER - (any)
#   iSCHGFLAG - (any)
#   cHC - (any)
#   cUSER - (any)
#   cGRP - (any)
#   cUSERGRP - (any)
#   sTCF - (any)
#   cHARSC - (any)
#   rEGUIDX - (any)
#   sOCBFUNC - (any)
#   sOCBPTONEIDX - (any)
#   aDMINCBA - (any)
#   aDCONTROL_DIVERSION - (any)
#   dPR - (any)
#   pRON - (any)
#   cPCRUS - (any)
#   cUSCAT - (any)
#   sPT100REL - (any)
#   aNALYSISMODE - (any)
#   gRPIDX - (any)
#   sCADDRIDX - (any)
#   cDNOCB - (any)
#   kVALUE - (any)
#   iNPFIDX - (any)
class MOD_TPRequest
  attr_accessor :mEGROUP
  attr_accessor :tEMPLATEIDX
  attr_accessor :tEMPLATENAME
  attr_accessor :dSPIDX
  attr_accessor :lP
  attr_accessor :cSC
  attr_accessor :uTYPE
  attr_accessor :vCCFLAG
  attr_accessor :vTFLAG
  attr_accessor :nSCFU
  attr_accessor :nSCFUVM
  attr_accessor :nSCFB
  attr_accessor :nSCFBVM
  attr_accessor :nSCFNR
  attr_accessor :nSCFNRVM
  attr_accessor :nSCFNL
  attr_accessor :nSCFNLVM
  attr_accessor :nSCD
  attr_accessor :nSCDVM
  attr_accessor :nSCFNRC
  attr_accessor :nSCFNRCVM
  attr_accessor :nSCLIP
  attr_accessor :nSCIDCW
  attr_accessor :nSRIO
  attr_accessor :nSCNIP
  attr_accessor :nSCLIR
  attr_accessor :nSRIP
  attr_accessor :nSCNIR
  attr_accessor :nSRID
  attr_accessor :nSNRID
  attr_accessor :nSRND
  attr_accessor :nSNRND
  attr_accessor :nSCW
  attr_accessor :nSCCW
  attr_accessor :nSOIP
  attr_accessor :nSACRM
  attr_accessor :nSGOIR
  attr_accessor :nSMOIR
  attr_accessor :nSTIP
  attr_accessor :nSTIR
  attr_accessor :nSOTIR
  attr_accessor :nSCLIPNOSCREENING
  attr_accessor :nSCR
  attr_accessor :nSWAKE_UP
  attr_accessor :nSAOC_D
  attr_accessor :nSAOC_E
  attr_accessor :nSXEXH
  attr_accessor :nSXEGJ
  attr_accessor :nSCWCFNR
  attr_accessor :nSIIFC
  attr_accessor :nSDN_CALL_OUT_BAR
  attr_accessor :nSCCBS
  attr_accessor :nSCCNR
  attr_accessor :nSCCBSR
  attr_accessor :nSCCNRR
  attr_accessor :nS3PTY
  attr_accessor :nSNPTY
  attr_accessor :nSDND
  attr_accessor :nSMCR
  attr_accessor :nSCBA
  attr_accessor :nSTMP_LIN
  attr_accessor :nSCODEC_CNTRL
  attr_accessor :nSMWI
  attr_accessor :nSDC
  attr_accessor :nSHOLD
  attr_accessor :nSECT
  attr_accessor :nSCFTB
  attr_accessor :nSDAN
  attr_accessor :nSSTOP_SECRET
  attr_accessor :nSMCID
  attr_accessor :nSEBO
  attr_accessor :nSICO
  attr_accessor :nSOUTG
  attr_accessor :nSINQYH
  attr_accessor :nSUINFO
  attr_accessor :nSDN_CALL_OUT_ALLOW
  attr_accessor :nSSIC
  attr_accessor :nSSOC
  attr_accessor :nSSETCFNRTIME
  attr_accessor :nSCFS
  attr_accessor :nSCFSB
  attr_accessor :nSFAX
  attr_accessor :nSABRC
  attr_accessor :nSACRTOVM
  attr_accessor :nSPREPAID
  attr_accessor :nSCRBT
  attr_accessor :nSICB
  attr_accessor :nSMRINGING
  attr_accessor :nSCIS
  attr_accessor :nSCBEG
  attr_accessor :nSCOLP
  attr_accessor :nSCOLR
  attr_accessor :nSCOLPOVR
  attr_accessor :nSBAOC
  attr_accessor :nSBOIC
  attr_accessor :nSBOICEXHC
  attr_accessor :nSBAIC
  attr_accessor :nSBICROM
  attr_accessor :nSSPEED_DIAL
  attr_accessor :nSSD1D
  attr_accessor :nSSD2D
  attr_accessor :nSGRNCALL
  attr_accessor :nSCPARK
  attr_accessor :nSGAA
  attr_accessor :nSQSNS
  attr_accessor :nSMSN
  attr_accessor :nSHOTLINE
  attr_accessor :nSAOC_S
  attr_accessor :nSNIGHTSRV
  attr_accessor :nSBACKNUM
  attr_accessor :nSAUTOCON
  attr_accessor :nSCAMPON
  attr_accessor :nSCTD
  attr_accessor :nSCLICKHOLD
  attr_accessor :nSQUEUE
  attr_accessor :nSSANSWER
  attr_accessor :nSICENCF
  attr_accessor :nSCFGO
  attr_accessor :nSCECT
  attr_accessor :nSCTGO
  attr_accessor :nSCTIO
  attr_accessor :nSSETBUSY
  attr_accessor :nSOVERSTEP
  attr_accessor :nSABSENT
  attr_accessor :nSMONITOR
  attr_accessor :nSFMONITOR
  attr_accessor :nSDISCNT
  attr_accessor :nSFDISCNT
  attr_accessor :nSINSERT
  attr_accessor :nSFINSERT
  attr_accessor :nSASI
  attr_accessor :nSPWCB
  attr_accessor :nSRD
  attr_accessor :nSLCPS
  attr_accessor :nSNCPS
  attr_accessor :nSICPS
  attr_accessor :nSHCPS
  attr_accessor :nSCBCLOCK
  attr_accessor :nSMINIBAR
  attr_accessor :nSMCN
  attr_accessor :nSDSTR
  attr_accessor :nSOPRREG
  attr_accessor :nSONEKEY
  attr_accessor :nSINBOUND
  attr_accessor :nSOUTBOUND
  attr_accessor :nSCALLERID
  attr_accessor :nSCUN
  attr_accessor :nSIPTVVC
  attr_accessor :nSNP
  attr_accessor :nSSEC
  attr_accessor :nSSECSTA
  attr_accessor :nSHRCN
  attr_accessor :nSSB
  attr_accessor :nSSCCA
  attr_accessor :nSCCS
  attr_accessor :nSOCCR
  attr_accessor :nSIMSMS
  attr_accessor :lCO
  attr_accessor :lC
  attr_accessor :lCT
  attr_accessor :nTT
  attr_accessor :iTT
  attr_accessor :iCTX
  attr_accessor :oCTX
  attr_accessor :iNTT
  attr_accessor :iITT
  attr_accessor :iCLT
  attr_accessor :iCDDD
  attr_accessor :iCIDD
  attr_accessor :iOLT
  attr_accessor :cTLCO
  attr_accessor :cTLCT
  attr_accessor :cTLD
  attr_accessor :cTINTNANP
  attr_accessor :cTINTWORLD
  attr_accessor :cTDA
  attr_accessor :cTOSM
  attr_accessor :cTOSP
  attr_accessor :cTOSP1
  attr_accessor :cCO1
  attr_accessor :cCO2
  attr_accessor :cCO3
  attr_accessor :cCO4
  attr_accessor :cCO5
  attr_accessor :cCO6
  attr_accessor :cCO7
  attr_accessor :cCO8
  attr_accessor :cCO9
  attr_accessor :cCO10
  attr_accessor :cCO11
  attr_accessor :cCO12
  attr_accessor :cCO13
  attr_accessor :cCO14
  attr_accessor :cCO15
  attr_accessor :cCO16
  attr_accessor :cCO17
  attr_accessor :cCO18
  attr_accessor :cCO19
  attr_accessor :cCO20
  attr_accessor :cCO21
  attr_accessor :cCO22
  attr_accessor :cCO23
  attr_accessor :cCO24
  attr_accessor :cCO25
  attr_accessor :cCO26
  attr_accessor :cCO27
  attr_accessor :cCO28
  attr_accessor :cCO29
  attr_accessor :cCO30
  attr_accessor :cCO31
  attr_accessor :cCO32
  attr_accessor :hIGHENTCO
  attr_accessor :oPERATOR
  attr_accessor :sUPYSRV
  attr_accessor :iDDCI
  attr_accessor :nTCI
  attr_accessor :lTCI
  attr_accessor :rSC
  attr_accessor :cIG
  attr_accessor :oUTRST
  attr_accessor :iNRST
  attr_accessor :nOAT
  attr_accessor :rINGCOUNT
  attr_accessor :vMAIND
  attr_accessor :vDMAIND
  attr_accessor :tGRP
  attr_accessor :tIDHLD
  attr_accessor :tIDCW
  attr_accessor :sCF
  attr_accessor :lMTGRP
  attr_accessor :fLBGRP
  attr_accessor :sLBGRP
  attr_accessor :cOP
  attr_accessor :g711_64K_A_LAW
  attr_accessor :g711_64K_U_LAW
  attr_accessor :g722
  attr_accessor :g723
  attr_accessor :g726
  attr_accessor :g728
  attr_accessor :g729
  attr_accessor :cODEC_MP4A
  attr_accessor :cODEC2833
  attr_accessor :cODEC2198
  attr_accessor :g726_40
  attr_accessor :g726_32
  attr_accessor :g726_24
  attr_accessor :g726_16
  attr_accessor :aMR
  attr_accessor :cLEARMODE
  attr_accessor :iLBC
  attr_accessor :sPEEX
  attr_accessor :g729EV
  attr_accessor :eVRC
  attr_accessor :eVRCB
  attr_accessor :h261
  attr_accessor :h263
  attr_accessor :cODEC_MP4V
  attr_accessor :h264
  attr_accessor :t38
  attr_accessor :t120
  attr_accessor :g711A_VBD
  attr_accessor :g711U_VBD
  attr_accessor :g726_VBD
  attr_accessor :g726_40_VBD
  attr_accessor :g726_32_VBD
  attr_accessor :g726_24_VBD
  attr_accessor :g726_16_VBD
  attr_accessor :wIND_BAND_AMR
  attr_accessor :gSM610
  attr_accessor :h263_2000
  attr_accessor :bROADVOICE_32
  attr_accessor :uNKNOWN_CODEC
  attr_accessor :aCODEC
  attr_accessor :vCODEC
  attr_accessor :pOLIDX
  attr_accessor :nCPI
  attr_accessor :iCPI
  attr_accessor :hCPI
  attr_accessor :eBOCL
  attr_accessor :eBOPL
  attr_accessor :eBOIT
  attr_accessor :rM
  attr_accessor :cPC
  attr_accessor :pCHG
  attr_accessor :tFPT
  attr_accessor :cHT
  attr_accessor :mCIDMODE
  attr_accessor :mCIDCMODE
  attr_accessor :mCIDAMODE
  attr_accessor :pREPAIDIDX
  attr_accessor :cRBTID
  attr_accessor :oDBBICTYPE
  attr_accessor :oDBBOCTYPE
  attr_accessor :oDBBARTYPE
  attr_accessor :oDBSS
  attr_accessor :oDBBRCFTYPE
  attr_accessor :oDBINFORM
  attr_accessor :oDBENTAIN
  attr_accessor :oDBPLMNBAR1
  attr_accessor :oDBPLMNBAR2
  attr_accessor :oDBPLMNBAR3
  attr_accessor :oDBPLMNBAR4
  attr_accessor :pNOTI
  attr_accessor :mAXPARACALL
  attr_accessor :aTSDTMBUSY
  attr_accessor :cALLCOUNT
  attr_accessor :cDNOTICALLER
  attr_accessor :iSCHGFLAG
  attr_accessor :cHC
  attr_accessor :cUSER
  attr_accessor :cGRP
  attr_accessor :cUSERGRP
  attr_accessor :sTCF
  attr_accessor :cHARSC
  attr_accessor :rEGUIDX
  attr_accessor :sOCBFUNC
  attr_accessor :sOCBPTONEIDX
  attr_accessor :aDMINCBA
  attr_accessor :aDCONTROL_DIVERSION
  attr_accessor :dPR
  attr_accessor :pRON
  attr_accessor :cPCRUS
  attr_accessor :cUSCAT
  attr_accessor :sPT100REL
  attr_accessor :aNALYSISMODE
  attr_accessor :gRPIDX
  attr_accessor :sCADDRIDX
  attr_accessor :cDNOCB
  attr_accessor :kVALUE
  attr_accessor :iNPFIDX

  def initialize(mEGROUP = nil, tEMPLATEIDX = nil, tEMPLATENAME = nil, dSPIDX = nil, lP = nil, cSC = nil, uTYPE = nil, vCCFLAG = nil, vTFLAG = nil, nSCFU = nil, nSCFUVM = nil, nSCFB = nil, nSCFBVM = nil, nSCFNR = nil, nSCFNRVM = nil, nSCFNL = nil, nSCFNLVM = nil, nSCD = nil, nSCDVM = nil, nSCFNRC = nil, nSCFNRCVM = nil, nSCLIP = nil, nSCIDCW = nil, nSRIO = nil, nSCNIP = nil, nSCLIR = nil, nSRIP = nil, nSCNIR = nil, nSRID = nil, nSNRID = nil, nSRND = nil, nSNRND = nil, nSCW = nil, nSCCW = nil, nSOIP = nil, nSACRM = nil, nSGOIR = nil, nSMOIR = nil, nSTIP = nil, nSTIR = nil, nSOTIR = nil, nSCLIPNOSCREENING = nil, nSCR = nil, nSWAKE_UP = nil, nSAOC_D = nil, nSAOC_E = nil, nSXEXH = nil, nSXEGJ = nil, nSCWCFNR = nil, nSIIFC = nil, nSDN_CALL_OUT_BAR = nil, nSCCBS = nil, nSCCNR = nil, nSCCBSR = nil, nSCCNRR = nil, nS3PTY = nil, nSNPTY = nil, nSDND = nil, nSMCR = nil, nSCBA = nil, nSTMP_LIN = nil, nSCODEC_CNTRL = nil, nSMWI = nil, nSDC = nil, nSHOLD = nil, nSECT = nil, nSCFTB = nil, nSDAN = nil, nSSTOP_SECRET = nil, nSMCID = nil, nSEBO = nil, nSICO = nil, nSOUTG = nil, nSINQYH = nil, nSUINFO = nil, nSDN_CALL_OUT_ALLOW = nil, nSSIC = nil, nSSOC = nil, nSSETCFNRTIME = nil, nSCFS = nil, nSCFSB = nil, nSFAX = nil, nSABRC = nil, nSACRTOVM = nil, nSPREPAID = nil, nSCRBT = nil, nSICB = nil, nSMRINGING = nil, nSCIS = nil, nSCBEG = nil, nSCOLP = nil, nSCOLR = nil, nSCOLPOVR = nil, nSBAOC = nil, nSBOIC = nil, nSBOICEXHC = nil, nSBAIC = nil, nSBICROM = nil, nSSPEED_DIAL = nil, nSSD1D = nil, nSSD2D = nil, nSGRNCALL = nil, nSCPARK = nil, nSGAA = nil, nSQSNS = nil, nSMSN = nil, nSHOTLINE = nil, nSAOC_S = nil, nSNIGHTSRV = nil, nSBACKNUM = nil, nSAUTOCON = nil, nSCAMPON = nil, nSCTD = nil, nSCLICKHOLD = nil, nSQUEUE = nil, nSSANSWER = nil, nSICENCF = nil, nSCFGO = nil, nSCECT = nil, nSCTGO = nil, nSCTIO = nil, nSSETBUSY = nil, nSOVERSTEP = nil, nSABSENT = nil, nSMONITOR = nil, nSFMONITOR = nil, nSDISCNT = nil, nSFDISCNT = nil, nSINSERT = nil, nSFINSERT = nil, nSASI = nil, nSPWCB = nil, nSRD = nil, nSLCPS = nil, nSNCPS = nil, nSICPS = nil, nSHCPS = nil, nSCBCLOCK = nil, nSMINIBAR = nil, nSMCN = nil, nSDSTR = nil, nSOPRREG = nil, nSONEKEY = nil, nSINBOUND = nil, nSOUTBOUND = nil, nSCALLERID = nil, nSCUN = nil, nSIPTVVC = nil, nSNP = nil, nSSEC = nil, nSSECSTA = nil, nSHRCN = nil, nSSB = nil, nSSCCA = nil, nSCCS = nil, nSOCCR = nil, nSIMSMS = nil, lCO = nil, lC = nil, lCT = nil, nTT = nil, iTT = nil, iCTX = nil, oCTX = nil, iNTT = nil, iITT = nil, iCLT = nil, iCDDD = nil, iCIDD = nil, iOLT = nil, cTLCO = nil, cTLCT = nil, cTLD = nil, cTINTNANP = nil, cTINTWORLD = nil, cTDA = nil, cTOSM = nil, cTOSP = nil, cTOSP1 = nil, cCO1 = nil, cCO2 = nil, cCO3 = nil, cCO4 = nil, cCO5 = nil, cCO6 = nil, cCO7 = nil, cCO8 = nil, cCO9 = nil, cCO10 = nil, cCO11 = nil, cCO12 = nil, cCO13 = nil, cCO14 = nil, cCO15 = nil, cCO16 = nil, cCO17 = nil, cCO18 = nil, cCO19 = nil, cCO20 = nil, cCO21 = nil, cCO22 = nil, cCO23 = nil, cCO24 = nil, cCO25 = nil, cCO26 = nil, cCO27 = nil, cCO28 = nil, cCO29 = nil, cCO30 = nil, cCO31 = nil, cCO32 = nil, hIGHENTCO = nil, oPERATOR = nil, sUPYSRV = nil, iDDCI = nil, nTCI = nil, lTCI = nil, rSC = nil, cIG = nil, oUTRST = nil, iNRST = nil, nOAT = nil, rINGCOUNT = nil, vMAIND = nil, vDMAIND = nil, tGRP = nil, tIDHLD = nil, tIDCW = nil, sCF = nil, lMTGRP = nil, fLBGRP = nil, sLBGRP = nil, cOP = nil, g711_64K_A_LAW = nil, g711_64K_U_LAW = nil, g722 = nil, g723 = nil, g726 = nil, g728 = nil, g729 = nil, cODEC_MP4A = nil, cODEC2833 = nil, cODEC2198 = nil, g726_40 = nil, g726_32 = nil, g726_24 = nil, g726_16 = nil, aMR = nil, cLEARMODE = nil, iLBC = nil, sPEEX = nil, g729EV = nil, eVRC = nil, eVRCB = nil, h261 = nil, h263 = nil, cODEC_MP4V = nil, h264 = nil, t38 = nil, t120 = nil, g711A_VBD = nil, g711U_VBD = nil, g726_VBD = nil, g726_40_VBD = nil, g726_32_VBD = nil, g726_24_VBD = nil, g726_16_VBD = nil, wIND_BAND_AMR = nil, gSM610 = nil, h263_2000 = nil, bROADVOICE_32 = nil, uNKNOWN_CODEC = nil, aCODEC = nil, vCODEC = nil, pOLIDX = nil, nCPI = nil, iCPI = nil, hCPI = nil, eBOCL = nil, eBOPL = nil, eBOIT = nil, rM = nil, cPC = nil, pCHG = nil, tFPT = nil, cHT = nil, mCIDMODE = nil, mCIDCMODE = nil, mCIDAMODE = nil, pREPAIDIDX = nil, cRBTID = nil, oDBBICTYPE = nil, oDBBOCTYPE = nil, oDBBARTYPE = nil, oDBSS = nil, oDBBRCFTYPE = nil, oDBINFORM = nil, oDBENTAIN = nil, oDBPLMNBAR1 = nil, oDBPLMNBAR2 = nil, oDBPLMNBAR3 = nil, oDBPLMNBAR4 = nil, pNOTI = nil, mAXPARACALL = nil, aTSDTMBUSY = nil, cALLCOUNT = nil, cDNOTICALLER = nil, iSCHGFLAG = nil, cHC = nil, cUSER = nil, cGRP = nil, cUSERGRP = nil, sTCF = nil, cHARSC = nil, rEGUIDX = nil, sOCBFUNC = nil, sOCBPTONEIDX = nil, aDMINCBA = nil, aDCONTROL_DIVERSION = nil, dPR = nil, pRON = nil, cPCRUS = nil, cUSCAT = nil, sPT100REL = nil, aNALYSISMODE = nil, gRPIDX = nil, sCADDRIDX = nil, cDNOCB = nil, kVALUE = nil, iNPFIDX = nil)
    @mEGROUP = mEGROUP
    @tEMPLATEIDX = tEMPLATEIDX
    @tEMPLATENAME = tEMPLATENAME
    @dSPIDX = dSPIDX
    @lP = lP
    @cSC = cSC
    @uTYPE = uTYPE
    @vCCFLAG = vCCFLAG
    @vTFLAG = vTFLAG
    @nSCFU = nSCFU
    @nSCFUVM = nSCFUVM
    @nSCFB = nSCFB
    @nSCFBVM = nSCFBVM
    @nSCFNR = nSCFNR
    @nSCFNRVM = nSCFNRVM
    @nSCFNL = nSCFNL
    @nSCFNLVM = nSCFNLVM
    @nSCD = nSCD
    @nSCDVM = nSCDVM
    @nSCFNRC = nSCFNRC
    @nSCFNRCVM = nSCFNRCVM
    @nSCLIP = nSCLIP
    @nSCIDCW = nSCIDCW
    @nSRIO = nSRIO
    @nSCNIP = nSCNIP
    @nSCLIR = nSCLIR
    @nSRIP = nSRIP
    @nSCNIR = nSCNIR
    @nSRID = nSRID
    @nSNRID = nSNRID
    @nSRND = nSRND
    @nSNRND = nSNRND
    @nSCW = nSCW
    @nSCCW = nSCCW
    @nSOIP = nSOIP
    @nSACRM = nSACRM
    @nSGOIR = nSGOIR
    @nSMOIR = nSMOIR
    @nSTIP = nSTIP
    @nSTIR = nSTIR
    @nSOTIR = nSOTIR
    @nSCLIPNOSCREENING = nSCLIPNOSCREENING
    @nSCR = nSCR
    @nSWAKE_UP = nSWAKE_UP
    @nSAOC_D = nSAOC_D
    @nSAOC_E = nSAOC_E
    @nSXEXH = nSXEXH
    @nSXEGJ = nSXEGJ
    @nSCWCFNR = nSCWCFNR
    @nSIIFC = nSIIFC
    @nSDN_CALL_OUT_BAR = nSDN_CALL_OUT_BAR
    @nSCCBS = nSCCBS
    @nSCCNR = nSCCNR
    @nSCCBSR = nSCCBSR
    @nSCCNRR = nSCCNRR
    @nS3PTY = nS3PTY
    @nSNPTY = nSNPTY
    @nSDND = nSDND
    @nSMCR = nSMCR
    @nSCBA = nSCBA
    @nSTMP_LIN = nSTMP_LIN
    @nSCODEC_CNTRL = nSCODEC_CNTRL
    @nSMWI = nSMWI
    @nSDC = nSDC
    @nSHOLD = nSHOLD
    @nSECT = nSECT
    @nSCFTB = nSCFTB
    @nSDAN = nSDAN
    @nSSTOP_SECRET = nSSTOP_SECRET
    @nSMCID = nSMCID
    @nSEBO = nSEBO
    @nSICO = nSICO
    @nSOUTG = nSOUTG
    @nSINQYH = nSINQYH
    @nSUINFO = nSUINFO
    @nSDN_CALL_OUT_ALLOW = nSDN_CALL_OUT_ALLOW
    @nSSIC = nSSIC
    @nSSOC = nSSOC
    @nSSETCFNRTIME = nSSETCFNRTIME
    @nSCFS = nSCFS
    @nSCFSB = nSCFSB
    @nSFAX = nSFAX
    @nSABRC = nSABRC
    @nSACRTOVM = nSACRTOVM
    @nSPREPAID = nSPREPAID
    @nSCRBT = nSCRBT
    @nSICB = nSICB
    @nSMRINGING = nSMRINGING
    @nSCIS = nSCIS
    @nSCBEG = nSCBEG
    @nSCOLP = nSCOLP
    @nSCOLR = nSCOLR
    @nSCOLPOVR = nSCOLPOVR
    @nSBAOC = nSBAOC
    @nSBOIC = nSBOIC
    @nSBOICEXHC = nSBOICEXHC
    @nSBAIC = nSBAIC
    @nSBICROM = nSBICROM
    @nSSPEED_DIAL = nSSPEED_DIAL
    @nSSD1D = nSSD1D
    @nSSD2D = nSSD2D
    @nSGRNCALL = nSGRNCALL
    @nSCPARK = nSCPARK
    @nSGAA = nSGAA
    @nSQSNS = nSQSNS
    @nSMSN = nSMSN
    @nSHOTLINE = nSHOTLINE
    @nSAOC_S = nSAOC_S
    @nSNIGHTSRV = nSNIGHTSRV
    @nSBACKNUM = nSBACKNUM
    @nSAUTOCON = nSAUTOCON
    @nSCAMPON = nSCAMPON
    @nSCTD = nSCTD
    @nSCLICKHOLD = nSCLICKHOLD
    @nSQUEUE = nSQUEUE
    @nSSANSWER = nSSANSWER
    @nSICENCF = nSICENCF
    @nSCFGO = nSCFGO
    @nSCECT = nSCECT
    @nSCTGO = nSCTGO
    @nSCTIO = nSCTIO
    @nSSETBUSY = nSSETBUSY
    @nSOVERSTEP = nSOVERSTEP
    @nSABSENT = nSABSENT
    @nSMONITOR = nSMONITOR
    @nSFMONITOR = nSFMONITOR
    @nSDISCNT = nSDISCNT
    @nSFDISCNT = nSFDISCNT
    @nSINSERT = nSINSERT
    @nSFINSERT = nSFINSERT
    @nSASI = nSASI
    @nSPWCB = nSPWCB
    @nSRD = nSRD
    @nSLCPS = nSLCPS
    @nSNCPS = nSNCPS
    @nSICPS = nSICPS
    @nSHCPS = nSHCPS
    @nSCBCLOCK = nSCBCLOCK
    @nSMINIBAR = nSMINIBAR
    @nSMCN = nSMCN
    @nSDSTR = nSDSTR
    @nSOPRREG = nSOPRREG
    @nSONEKEY = nSONEKEY
    @nSINBOUND = nSINBOUND
    @nSOUTBOUND = nSOUTBOUND
    @nSCALLERID = nSCALLERID
    @nSCUN = nSCUN
    @nSIPTVVC = nSIPTVVC
    @nSNP = nSNP
    @nSSEC = nSSEC
    @nSSECSTA = nSSECSTA
    @nSHRCN = nSHRCN
    @nSSB = nSSB
    @nSSCCA = nSSCCA
    @nSCCS = nSCCS
    @nSOCCR = nSOCCR
    @nSIMSMS = nSIMSMS
    @lCO = lCO
    @lC = lC
    @lCT = lCT
    @nTT = nTT
    @iTT = iTT
    @iCTX = iCTX
    @oCTX = oCTX
    @iNTT = iNTT
    @iITT = iITT
    @iCLT = iCLT
    @iCDDD = iCDDD
    @iCIDD = iCIDD
    @iOLT = iOLT
    @cTLCO = cTLCO
    @cTLCT = cTLCT
    @cTLD = cTLD
    @cTINTNANP = cTINTNANP
    @cTINTWORLD = cTINTWORLD
    @cTDA = cTDA
    @cTOSM = cTOSM
    @cTOSP = cTOSP
    @cTOSP1 = cTOSP1
    @cCO1 = cCO1
    @cCO2 = cCO2
    @cCO3 = cCO3
    @cCO4 = cCO4
    @cCO5 = cCO5
    @cCO6 = cCO6
    @cCO7 = cCO7
    @cCO8 = cCO8
    @cCO9 = cCO9
    @cCO10 = cCO10
    @cCO11 = cCO11
    @cCO12 = cCO12
    @cCO13 = cCO13
    @cCO14 = cCO14
    @cCO15 = cCO15
    @cCO16 = cCO16
    @cCO17 = cCO17
    @cCO18 = cCO18
    @cCO19 = cCO19
    @cCO20 = cCO20
    @cCO21 = cCO21
    @cCO22 = cCO22
    @cCO23 = cCO23
    @cCO24 = cCO24
    @cCO25 = cCO25
    @cCO26 = cCO26
    @cCO27 = cCO27
    @cCO28 = cCO28
    @cCO29 = cCO29
    @cCO30 = cCO30
    @cCO31 = cCO31
    @cCO32 = cCO32
    @hIGHENTCO = hIGHENTCO
    @oPERATOR = oPERATOR
    @sUPYSRV = sUPYSRV
    @iDDCI = iDDCI
    @nTCI = nTCI
    @lTCI = lTCI
    @rSC = rSC
    @cIG = cIG
    @oUTRST = oUTRST
    @iNRST = iNRST
    @nOAT = nOAT
    @rINGCOUNT = rINGCOUNT
    @vMAIND = vMAIND
    @vDMAIND = vDMAIND
    @tGRP = tGRP
    @tIDHLD = tIDHLD
    @tIDCW = tIDCW
    @sCF = sCF
    @lMTGRP = lMTGRP
    @fLBGRP = fLBGRP
    @sLBGRP = sLBGRP
    @cOP = cOP
    @g711_64K_A_LAW = g711_64K_A_LAW
    @g711_64K_U_LAW = g711_64K_U_LAW
    @g722 = g722
    @g723 = g723
    @g726 = g726
    @g728 = g728
    @g729 = g729
    @cODEC_MP4A = cODEC_MP4A
    @cODEC2833 = cODEC2833
    @cODEC2198 = cODEC2198
    @g726_40 = g726_40
    @g726_32 = g726_32
    @g726_24 = g726_24
    @g726_16 = g726_16
    @aMR = aMR
    @cLEARMODE = cLEARMODE
    @iLBC = iLBC
    @sPEEX = sPEEX
    @g729EV = g729EV
    @eVRC = eVRC
    @eVRCB = eVRCB
    @h261 = h261
    @h263 = h263
    @cODEC_MP4V = cODEC_MP4V
    @h264 = h264
    @t38 = t38
    @t120 = t120
    @g711A_VBD = g711A_VBD
    @g711U_VBD = g711U_VBD
    @g726_VBD = g726_VBD
    @g726_40_VBD = g726_40_VBD
    @g726_32_VBD = g726_32_VBD
    @g726_24_VBD = g726_24_VBD
    @g726_16_VBD = g726_16_VBD
    @wIND_BAND_AMR = wIND_BAND_AMR
    @gSM610 = gSM610
    @h263_2000 = h263_2000
    @bROADVOICE_32 = bROADVOICE_32
    @uNKNOWN_CODEC = uNKNOWN_CODEC
    @aCODEC = aCODEC
    @vCODEC = vCODEC
    @pOLIDX = pOLIDX
    @nCPI = nCPI
    @iCPI = iCPI
    @hCPI = hCPI
    @eBOCL = eBOCL
    @eBOPL = eBOPL
    @eBOIT = eBOIT
    @rM = rM
    @cPC = cPC
    @pCHG = pCHG
    @tFPT = tFPT
    @cHT = cHT
    @mCIDMODE = mCIDMODE
    @mCIDCMODE = mCIDCMODE
    @mCIDAMODE = mCIDAMODE
    @pREPAIDIDX = pREPAIDIDX
    @cRBTID = cRBTID
    @oDBBICTYPE = oDBBICTYPE
    @oDBBOCTYPE = oDBBOCTYPE
    @oDBBARTYPE = oDBBARTYPE
    @oDBSS = oDBSS
    @oDBBRCFTYPE = oDBBRCFTYPE
    @oDBINFORM = oDBINFORM
    @oDBENTAIN = oDBENTAIN
    @oDBPLMNBAR1 = oDBPLMNBAR1
    @oDBPLMNBAR2 = oDBPLMNBAR2
    @oDBPLMNBAR3 = oDBPLMNBAR3
    @oDBPLMNBAR4 = oDBPLMNBAR4
    @pNOTI = pNOTI
    @mAXPARACALL = mAXPARACALL
    @aTSDTMBUSY = aTSDTMBUSY
    @cALLCOUNT = cALLCOUNT
    @cDNOTICALLER = cDNOTICALLER
    @iSCHGFLAG = iSCHGFLAG
    @cHC = cHC
    @cUSER = cUSER
    @cGRP = cGRP
    @cUSERGRP = cUSERGRP
    @sTCF = sTCF
    @cHARSC = cHARSC
    @rEGUIDX = rEGUIDX
    @sOCBFUNC = sOCBFUNC
    @sOCBPTONEIDX = sOCBPTONEIDX
    @aDMINCBA = aDMINCBA
    @aDCONTROL_DIVERSION = aDCONTROL_DIVERSION
    @dPR = dPR
    @pRON = pRON
    @cPCRUS = cPCRUS
    @cUSCAT = cUSCAT
    @sPT100REL = sPT100REL
    @aNALYSISMODE = aNALYSISMODE
    @gRPIDX = gRPIDX
    @sCADDRIDX = sCADDRIDX
    @cDNOCB = cDNOCB
    @kVALUE = kVALUE
    @iNPFIDX = iNPFIDX
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_TPResponse
#   result - ResultType
class MOD_TPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_TPRequest
#   mEGROUP - (any)
#   tEMPLATEIDX - (any)
class RMV_TPRequest
  attr_accessor :mEGROUP
  attr_accessor :tEMPLATEIDX

  def initialize(mEGROUP = nil, tEMPLATEIDX = nil)
    @mEGROUP = mEGROUP
    @tEMPLATEIDX = tEMPLATEIDX
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_TPResponse
#   result - ResultType
class RMV_TPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_TPRequest
#   mEGROUP - (any)
#   tEMPLATEIDX - (any)
class LST_TPRequest
  attr_accessor :mEGROUP
  attr_accessor :tEMPLATEIDX

  def initialize(mEGROUP = nil, tEMPLATEIDX = nil)
    @mEGROUP = mEGROUP
    @tEMPLATEIDX = tEMPLATEIDX
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_TPResponse
#   result - LST_TPType
class LST_TPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXSBRRequest
#   mEGROUP - (any)
#   cXG - (any)
#   cXSG - (any)
#   iMPU - (any)
#   cXD - (any)
#   pBXFG - (any)
#   pKUPID - (any)
#   gRPICO - (any)
#   gRPWCO - (any)
#   gRPCO - (any)
#   gRPICI - (any)
#   gRPWCI - (any)
#   gRPINCO - (any)
#   aUTOCON - (any)
#   oDSPMODE - (any)
#   rESERVED - (any)
class ADD_CXSBRRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :cXSG
  attr_accessor :iMPU
  attr_accessor :cXD
  attr_accessor :pBXFG
  attr_accessor :pKUPID
  attr_accessor :gRPICO
  attr_accessor :gRPWCO
  attr_accessor :gRPCO
  attr_accessor :gRPICI
  attr_accessor :gRPWCI
  attr_accessor :gRPINCO
  attr_accessor :aUTOCON
  attr_accessor :oDSPMODE
  attr_accessor :rESERVED

  def initialize(mEGROUP = nil, cXG = nil, cXSG = nil, iMPU = nil, cXD = nil, pBXFG = nil, pKUPID = nil, gRPICO = nil, gRPWCO = nil, gRPCO = nil, gRPICI = nil, gRPWCI = nil, gRPINCO = nil, aUTOCON = nil, oDSPMODE = nil, rESERVED = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @cXSG = cXSG
    @iMPU = iMPU
    @cXD = cXD
    @pBXFG = pBXFG
    @pKUPID = pKUPID
    @gRPICO = gRPICO
    @gRPWCO = gRPWCO
    @gRPCO = gRPCO
    @gRPICI = gRPICI
    @gRPWCI = gRPWCI
    @gRPINCO = gRPINCO
    @aUTOCON = aUTOCON
    @oDSPMODE = oDSPMODE
    @rESERVED = rESERVED
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXSBRResponse
#   result - ResultType
class ADD_CXSBRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXSBRRequest
#   mEGROUP - (any)
#   cXG - (any)
#   cXSG - (any)
#   iMPU - (any)
#   cXD - (any)
class RMV_CXSBRRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :cXSG
  attr_accessor :iMPU
  attr_accessor :cXD

  def initialize(mEGROUP = nil, cXG = nil, cXSG = nil, iMPU = nil, cXD = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @cXSG = cXSG
    @iMPU = iMPU
    @cXD = cXD
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXSBRResponse
#   result - ResultType
class RMV_CXSBRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXSBRRequest
#   mEGROUP - (any)
#   cXG - (any)
#   cXSG - (any)
#   iMPU - (any)
#   cXD - (any)
#   pBXFG - (any)
#   pKUPID - (any)
#   gRPICO - (any)
#   gRPWCO - (any)
#   gRPCO - (any)
#   gRPICI - (any)
#   gRPWCI - (any)
#   gRPINCO - (any)
#   aUTOCON - (any)
#   oDSPMODE - (any)
#   rESERVED - (any)
class MOD_CXSBRRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :cXSG
  attr_accessor :iMPU
  attr_accessor :cXD
  attr_accessor :pBXFG
  attr_accessor :pKUPID
  attr_accessor :gRPICO
  attr_accessor :gRPWCO
  attr_accessor :gRPCO
  attr_accessor :gRPICI
  attr_accessor :gRPWCI
  attr_accessor :gRPINCO
  attr_accessor :aUTOCON
  attr_accessor :oDSPMODE
  attr_accessor :rESERVED

  def initialize(mEGROUP = nil, cXG = nil, cXSG = nil, iMPU = nil, cXD = nil, pBXFG = nil, pKUPID = nil, gRPICO = nil, gRPWCO = nil, gRPCO = nil, gRPICI = nil, gRPWCI = nil, gRPINCO = nil, aUTOCON = nil, oDSPMODE = nil, rESERVED = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @cXSG = cXSG
    @iMPU = iMPU
    @cXD = cXD
    @pBXFG = pBXFG
    @pKUPID = pKUPID
    @gRPICO = gRPICO
    @gRPWCO = gRPWCO
    @gRPCO = gRPCO
    @gRPICI = gRPICI
    @gRPWCI = gRPWCI
    @gRPINCO = gRPINCO
    @aUTOCON = aUTOCON
    @oDSPMODE = oDSPMODE
    @rESERVED = rESERVED
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXSBRResponse
#   result - ResultType
class MOD_CXSBRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSBRRequest
#   mEGROUP - (any)
#   cXG - (any)
#   cXSG - (any)
#   iMPU - (any)
#   cXD - (any)
#   qSP - (any)
#   qAT - (any)
class LST_CXSBRRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :cXSG
  attr_accessor :iMPU
  attr_accessor :cXD
  attr_accessor :qSP
  attr_accessor :qAT

  def initialize(mEGROUP = nil, cXG = nil, cXSG = nil, iMPU = nil, cXD = nil, qSP = nil, qAT = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @cXSG = cXSG
    @iMPU = iMPU
    @cXD = cXD
    @qSP = qSP
    @qAT = qAT
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSBRResponse
#   result - LST_CXSBRType
class LST_CXSBRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXGRPRequest
#   mEGROUP - (any)
#   cGN - (any)
#   cXG - (any)
#   mAXM - (any)
#   oGC - (any)
#   cXCFTR - (any)
#   fOUTOCXPFX - (any)
#   mOUTOCXPFX - (any)
#   gPFALG - (any)
#   fONNET - (any)
#   sPDT - (any)
#   oUTCHGPAI - (any)
#   mTCHGPAI - (any)
#   mTDPAI - (any)
#   iGRM - (any)
#   oGRM - (any)
#   wACRM - (any)
#   eCRBTF - (any)
#   eCRBTTID - (any)
#   oNNETOUTBAL - (any)
#   oNNETINBAL - (any)
#   wACOUTBAL - (any)
#   wACINBAL - (any)
#   oVPNF - (any)
#   bALRULEIND - (any)
#   oVPNPF - (any)
#   rESERVED - (any)
class ADD_CXGRPRequest
  attr_accessor :mEGROUP
  attr_accessor :cGN
  attr_accessor :cXG
  attr_accessor :mAXM
  attr_accessor :oGC
  attr_accessor :cXCFTR
  attr_accessor :fOUTOCXPFX
  attr_accessor :mOUTOCXPFX
  attr_accessor :gPFALG
  attr_accessor :fONNET
  attr_accessor :sPDT
  attr_accessor :oUTCHGPAI
  attr_accessor :mTCHGPAI
  attr_accessor :mTDPAI
  attr_accessor :iGRM
  attr_accessor :oGRM
  attr_accessor :wACRM
  attr_accessor :eCRBTF
  attr_accessor :eCRBTTID
  attr_accessor :oNNETOUTBAL
  attr_accessor :oNNETINBAL
  attr_accessor :wACOUTBAL
  attr_accessor :wACINBAL
  attr_accessor :oVPNF
  attr_accessor :bALRULEIND
  attr_accessor :oVPNPF
  attr_accessor :rESERVED

  def initialize(mEGROUP = nil, cGN = nil, cXG = nil, mAXM = nil, oGC = nil, cXCFTR = nil, fOUTOCXPFX = nil, mOUTOCXPFX = nil, gPFALG = nil, fONNET = nil, sPDT = nil, oUTCHGPAI = nil, mTCHGPAI = nil, mTDPAI = nil, iGRM = nil, oGRM = nil, wACRM = nil, eCRBTF = nil, eCRBTTID = nil, oNNETOUTBAL = nil, oNNETINBAL = nil, wACOUTBAL = nil, wACINBAL = nil, oVPNF = nil, bALRULEIND = nil, oVPNPF = nil, rESERVED = nil)
    @mEGROUP = mEGROUP
    @cGN = cGN
    @cXG = cXG
    @mAXM = mAXM
    @oGC = oGC
    @cXCFTR = cXCFTR
    @fOUTOCXPFX = fOUTOCXPFX
    @mOUTOCXPFX = mOUTOCXPFX
    @gPFALG = gPFALG
    @fONNET = fONNET
    @sPDT = sPDT
    @oUTCHGPAI = oUTCHGPAI
    @mTCHGPAI = mTCHGPAI
    @mTDPAI = mTDPAI
    @iGRM = iGRM
    @oGRM = oGRM
    @wACRM = wACRM
    @eCRBTF = eCRBTF
    @eCRBTTID = eCRBTTID
    @oNNETOUTBAL = oNNETOUTBAL
    @oNNETINBAL = oNNETINBAL
    @wACOUTBAL = wACOUTBAL
    @wACINBAL = wACINBAL
    @oVPNF = oVPNF
    @bALRULEIND = bALRULEIND
    @oVPNPF = oVPNPF
    @rESERVED = rESERVED
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXGRPResponse
#   result - ResultType
class ADD_CXGRPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXGRPRequest
#   mEGROUP - (any)
#   cGN - (any)
#   cXG - (any)
class RMV_CXGRPRequest
  attr_accessor :mEGROUP
  attr_accessor :cGN
  attr_accessor :cXG

  def initialize(mEGROUP = nil, cGN = nil, cXG = nil)
    @mEGROUP = mEGROUP
    @cGN = cGN
    @cXG = cXG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXGRPResponse
#   result - ResultType
class RMV_CXGRPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXGRPRequest
#   mEGROUP - (any)
#   cGN - (any)
#   cXG - (any)
#   mAXM - (any)
#   oGC - (any)
#   cXCFTR - (any)
#   fOUTOCXPFX - (any)
#   mOUTOCXPFX - (any)
#   gPFALG - (any)
#   fONNET - (any)
#   sPDT - (any)
#   oUTCHGPAI - (any)
#   mTCHGPAI - (any)
#   mTDPAI - (any)
#   iGRM - (any)
#   oGRM - (any)
#   wACRM - (any)
#   eCRBTF - (any)
#   eCRBTTID - (any)
#   oNNETOUTBAL - (any)
#   oNNETINBAL - (any)
#   wACOUTBAL - (any)
#   wACINBAL - (any)
#   oVPNF - (any)
#   bALRULEIND - (any)
#   oVPNPF - (any)
#   rESERVED - (any)
class MOD_CXGRPRequest
  attr_accessor :mEGROUP
  attr_accessor :cGN
  attr_accessor :cXG
  attr_accessor :mAXM
  attr_accessor :oGC
  attr_accessor :cXCFTR
  attr_accessor :fOUTOCXPFX
  attr_accessor :mOUTOCXPFX
  attr_accessor :gPFALG
  attr_accessor :fONNET
  attr_accessor :sPDT
  attr_accessor :oUTCHGPAI
  attr_accessor :mTCHGPAI
  attr_accessor :mTDPAI
  attr_accessor :iGRM
  attr_accessor :oGRM
  attr_accessor :wACRM
  attr_accessor :eCRBTF
  attr_accessor :eCRBTTID
  attr_accessor :oNNETOUTBAL
  attr_accessor :oNNETINBAL
  attr_accessor :wACOUTBAL
  attr_accessor :wACINBAL
  attr_accessor :oVPNF
  attr_accessor :bALRULEIND
  attr_accessor :oVPNPF
  attr_accessor :rESERVED

  def initialize(mEGROUP = nil, cGN = nil, cXG = nil, mAXM = nil, oGC = nil, cXCFTR = nil, fOUTOCXPFX = nil, mOUTOCXPFX = nil, gPFALG = nil, fONNET = nil, sPDT = nil, oUTCHGPAI = nil, mTCHGPAI = nil, mTDPAI = nil, iGRM = nil, oGRM = nil, wACRM = nil, eCRBTF = nil, eCRBTTID = nil, oNNETOUTBAL = nil, oNNETINBAL = nil, wACOUTBAL = nil, wACINBAL = nil, oVPNF = nil, bALRULEIND = nil, oVPNPF = nil, rESERVED = nil)
    @mEGROUP = mEGROUP
    @cGN = cGN
    @cXG = cXG
    @mAXM = mAXM
    @oGC = oGC
    @cXCFTR = cXCFTR
    @fOUTOCXPFX = fOUTOCXPFX
    @mOUTOCXPFX = mOUTOCXPFX
    @gPFALG = gPFALG
    @fONNET = fONNET
    @sPDT = sPDT
    @oUTCHGPAI = oUTCHGPAI
    @mTCHGPAI = mTCHGPAI
    @mTDPAI = mTDPAI
    @iGRM = iGRM
    @oGRM = oGRM
    @wACRM = wACRM
    @eCRBTF = eCRBTF
    @eCRBTTID = eCRBTTID
    @oNNETOUTBAL = oNNETOUTBAL
    @oNNETINBAL = oNNETINBAL
    @wACOUTBAL = wACOUTBAL
    @wACINBAL = wACINBAL
    @oVPNF = oVPNF
    @bALRULEIND = bALRULEIND
    @oVPNPF = oVPNPF
    @rESERVED = rESERVED
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXGRPResponse
#   result - ResultType
class MOD_CXGRPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXGRPRequest
#   mEGROUP - (any)
#   cGN - (any)
#   cXG - (any)
#   qSP - (any)
#   qAT - (any)
class LST_CXGRPRequest
  attr_accessor :mEGROUP
  attr_accessor :cGN
  attr_accessor :cXG
  attr_accessor :qSP
  attr_accessor :qAT

  def initialize(mEGROUP = nil, cGN = nil, cXG = nil, qSP = nil, qAT = nil)
    @mEGROUP = mEGROUP
    @cGN = cGN
    @cXG = cXG
    @qSP = qSP
    @qAT = qAT
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXGRPResponse
#   result - LST_CXGRPType
class LST_CXGRPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXSUBGRPRequest
#   mEGROUP - (any)
#   cXG - (any)
#   cGN - (any)
#   cXSG - (any)
#   cXSGN - (any)
#   bSFG - (any)
#   bALRULEIND - (any)
class ADD_CXSUBGRPRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :cGN
  attr_accessor :cXSG
  attr_accessor :cXSGN
  attr_accessor :bSFG
  attr_accessor :bALRULEIND

  def initialize(mEGROUP = nil, cXG = nil, cGN = nil, cXSG = nil, cXSGN = nil, bSFG = nil, bALRULEIND = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @cGN = cGN
    @cXSG = cXSG
    @cXSGN = cXSGN
    @bSFG = bSFG
    @bALRULEIND = bALRULEIND
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXSUBGRPResponse
#   result - ResultType
class ADD_CXSUBGRPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXSUBGRPRequest
#   mEGROUP - (any)
#   cXG - (any)
#   cGN - (any)
#   cXSG - (any)
#   cXSGN - (any)
class RMV_CXSUBGRPRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :cGN
  attr_accessor :cXSG
  attr_accessor :cXSGN

  def initialize(mEGROUP = nil, cXG = nil, cGN = nil, cXSG = nil, cXSGN = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @cGN = cGN
    @cXSG = cXSG
    @cXSGN = cXSGN
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXSUBGRPResponse
#   result - ResultType
class RMV_CXSUBGRPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXSUBGRPRequest
#   mEGROUP - (any)
#   cXG - (any)
#   cGN - (any)
#   cXSG - (any)
#   cXSGN - (any)
#   cXD - (any)
#   iMPU - (any)
#   tOC - (any)
#   iDDFC - (any)
#   oDDFC - (any)
#   iRFC - (any)
#   oRFC - (any)
#   iRBB - (any)
#   oRBB - (any)
#   nRCI - (any)
#   nRFCO - (any)
#   cCTI - (any)
#   cCTO - (any)
#   cDM - (any)
#   iDM - (any)
#   fDM - (any)
#   cFUCSI - (any)
#   cFUCSO - (any)
#   iNDO - (any)
#   bILLFLAG - (any)
#   kINDVOICE - (any)
#   cLICKTRANSRM - (any)
#   cALLINQUEUERM - (any)
#   cALLHOLDRM - (any)
#   wAKEUPRM - (any)
#   cXCFNRC - (any)
#   cHGTOFLD - (any)
#   cXCFNRCNUM - (any)
#   bALRULEIND - (any)
#   pRIPHXFLAG - (any)
#   pUBPHXFLAG - (any)
#   aCC - (any)
#   fTOSTA - (any)
#   rESERVED - (any)
class MOD_CXSUBGRPRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :cGN
  attr_accessor :cXSG
  attr_accessor :cXSGN
  attr_accessor :cXD
  attr_accessor :iMPU
  attr_accessor :tOC
  attr_accessor :iDDFC
  attr_accessor :oDDFC
  attr_accessor :iRFC
  attr_accessor :oRFC
  attr_accessor :iRBB
  attr_accessor :oRBB
  attr_accessor :nRCI
  attr_accessor :nRFCO
  attr_accessor :cCTI
  attr_accessor :cCTO
  attr_accessor :cDM
  attr_accessor :iDM
  attr_accessor :fDM
  attr_accessor :cFUCSI
  attr_accessor :cFUCSO
  attr_accessor :iNDO
  attr_accessor :bILLFLAG
  attr_accessor :kINDVOICE
  attr_accessor :cLICKTRANSRM
  attr_accessor :cALLINQUEUERM
  attr_accessor :cALLHOLDRM
  attr_accessor :wAKEUPRM
  attr_accessor :cXCFNRC
  attr_accessor :cHGTOFLD
  attr_accessor :cXCFNRCNUM
  attr_accessor :bALRULEIND
  attr_accessor :pRIPHXFLAG
  attr_accessor :pUBPHXFLAG
  attr_accessor :aCC
  attr_accessor :fTOSTA
  attr_accessor :rESERVED

  def initialize(mEGROUP = nil, cXG = nil, cGN = nil, cXSG = nil, cXSGN = nil, cXD = nil, iMPU = nil, tOC = nil, iDDFC = nil, oDDFC = nil, iRFC = nil, oRFC = nil, iRBB = nil, oRBB = nil, nRCI = nil, nRFCO = nil, cCTI = nil, cCTO = nil, cDM = nil, iDM = nil, fDM = nil, cFUCSI = nil, cFUCSO = nil, iNDO = nil, bILLFLAG = nil, kINDVOICE = nil, cLICKTRANSRM = nil, cALLINQUEUERM = nil, cALLHOLDRM = nil, wAKEUPRM = nil, cXCFNRC = nil, cHGTOFLD = nil, cXCFNRCNUM = nil, bALRULEIND = nil, pRIPHXFLAG = nil, pUBPHXFLAG = nil, aCC = nil, fTOSTA = nil, rESERVED = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @cGN = cGN
    @cXSG = cXSG
    @cXSGN = cXSGN
    @cXD = cXD
    @iMPU = iMPU
    @tOC = tOC
    @iDDFC = iDDFC
    @oDDFC = oDDFC
    @iRFC = iRFC
    @oRFC = oRFC
    @iRBB = iRBB
    @oRBB = oRBB
    @nRCI = nRCI
    @nRFCO = nRFCO
    @cCTI = cCTI
    @cCTO = cCTO
    @cDM = cDM
    @iDM = iDM
    @fDM = fDM
    @cFUCSI = cFUCSI
    @cFUCSO = cFUCSO
    @iNDO = iNDO
    @bILLFLAG = bILLFLAG
    @kINDVOICE = kINDVOICE
    @cLICKTRANSRM = cLICKTRANSRM
    @cALLINQUEUERM = cALLINQUEUERM
    @cALLHOLDRM = cALLHOLDRM
    @wAKEUPRM = wAKEUPRM
    @cXCFNRC = cXCFNRC
    @cHGTOFLD = cHGTOFLD
    @cXCFNRCNUM = cXCFNRCNUM
    @bALRULEIND = bALRULEIND
    @pRIPHXFLAG = pRIPHXFLAG
    @pUBPHXFLAG = pUBPHXFLAG
    @aCC = aCC
    @fTOSTA = fTOSTA
    @rESERVED = rESERVED
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXSUBGRPResponse
#   result - ResultType
class MOD_CXSUBGRPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSUBGRPRequest
#   mEGROUP - (any)
#   cXG - (any)
#   cGN - (any)
#   cXSG - (any)
#   cXSGN - (any)
#   bSFG - (any)
class LST_CXSUBGRPRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :cGN
  attr_accessor :cXSG
  attr_accessor :cXSGN
  attr_accessor :bSFG

  def initialize(mEGROUP = nil, cXG = nil, cGN = nil, cXSG = nil, cXSGN = nil, bSFG = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @cGN = cGN
    @cXSG = cXSG
    @cXSGN = cXSGN
    @bSFG = bSFG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSUBGRPResponse
#   result - LST_CXSUBGRPType
class LST_CXSUBGRPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_OCXPFXRequest
#   mEGROUP - (any)
#   cXG - (any)
#   oGP - (any)
#   oCSA - (any)
#   dLEN - (any)
class ADD_OCXPFXRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :oGP
  attr_accessor :oCSA
  attr_accessor :dLEN

  def initialize(mEGROUP = nil, cXG = nil, oGP = nil, oCSA = nil, dLEN = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @oGP = oGP
    @oCSA = oCSA
    @dLEN = dLEN
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_OCXPFXResponse
#   result - ResultType
class ADD_OCXPFXResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_OCXPFXRequest
#   mEGROUP - (any)
#   cXG - (any)
#   oGP - (any)
class RMV_OCXPFXRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :oGP

  def initialize(mEGROUP = nil, cXG = nil, oGP = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @oGP = oGP
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_OCXPFXResponse
#   result - ResultType
class RMV_OCXPFXResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_OCXPFXRequest
#   mEGROUP - (any)
#   cXG - (any)
#   oGP - (any)
#   oCSA - (any)
#   dLEN - (any)
class MOD_OCXPFXRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :oGP
  attr_accessor :oCSA
  attr_accessor :dLEN

  def initialize(mEGROUP = nil, cXG = nil, oGP = nil, oCSA = nil, dLEN = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @oGP = oGP
    @oCSA = oCSA
    @dLEN = dLEN
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_OCXPFXResponse
#   result - ResultType
class MOD_OCXPFXResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_OCXPFXRequest
#   mEGROUP - (any)
#   cXG - (any)
#   oGP - (any)
class LST_OCXPFXRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :oGP

  def initialize(mEGROUP = nil, cXG = nil, oGP = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @oGP = oGP
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_OCXPFXResponse
#   result - LST_OCXPFXType
class LST_OCXPFXResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_ICXPFXRequest
#   mEGROUP - (any)
#   cXG - (any)
#   cLRLP - (any)
#   pFX - (any)
#   cSA - (any)
#   mINL - (any)
#   mAXL - (any)
#   rESERVED - (any)
class ADD_ICXPFXRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :cLRLP
  attr_accessor :pFX
  attr_accessor :cSA
  attr_accessor :mINL
  attr_accessor :mAXL
  attr_accessor :rESERVED

  def initialize(mEGROUP = nil, cXG = nil, cLRLP = nil, pFX = nil, cSA = nil, mINL = nil, mAXL = nil, rESERVED = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @cLRLP = cLRLP
    @pFX = pFX
    @cSA = cSA
    @mINL = mINL
    @mAXL = mAXL
    @rESERVED = rESERVED
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_ICXPFXResponse
#   result - ResultType
class ADD_ICXPFXResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_ICXPFXRequest
#   mEGROUP - (any)
#   cXG - (any)
#   cLRLP - (any)
#   pFX - (any)
class RMV_ICXPFXRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :cLRLP
  attr_accessor :pFX

  def initialize(mEGROUP = nil, cXG = nil, cLRLP = nil, pFX = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @cLRLP = cLRLP
    @pFX = pFX
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_ICXPFXResponse
#   result - ResultType
class RMV_ICXPFXResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_ICXPFXRequest
#   mEGROUP - (any)
#   cXG - (any)
#   cLRLP - (any)
#   pFX - (any)
#   cSA - (any)
#   mINL - (any)
#   mAXL - (any)
#   rESERVED - (any)
class MOD_ICXPFXRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :cLRLP
  attr_accessor :pFX
  attr_accessor :cSA
  attr_accessor :mINL
  attr_accessor :mAXL
  attr_accessor :rESERVED

  def initialize(mEGROUP = nil, cXG = nil, cLRLP = nil, pFX = nil, cSA = nil, mINL = nil, mAXL = nil, rESERVED = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @cLRLP = cLRLP
    @pFX = pFX
    @cSA = cSA
    @mINL = mINL
    @mAXL = mAXL
    @rESERVED = rESERVED
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_ICXPFXResponse
#   result - ResultType
class MOD_ICXPFXResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ICXPFXRequest
#   mEGROUP - (any)
#   cXG - (any)
#   cLRLP - (any)
#   pFX - (any)
#   cSA - (any)
class LST_ICXPFXRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :cLRLP
  attr_accessor :pFX
  attr_accessor :cSA

  def initialize(mEGROUP = nil, cXG = nil, cLRLP = nil, pFX = nil, cSA = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @cLRLP = cLRLP
    @pFX = pFX
    @cSA = cSA
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ICXPFXResponse
#   result - LST_ICXPFXType
class LST_ICXPFXResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_WACCTLRequest
#   mEGROUP - (any)
#   wACCXG - (any)
#   wAC - (any)
#   cXG - (any)
class ADD_WACCTLRequest
  attr_accessor :mEGROUP
  attr_accessor :wACCXG
  attr_accessor :wAC
  attr_accessor :cXG

  def initialize(mEGROUP = nil, wACCXG = nil, wAC = nil, cXG = nil)
    @mEGROUP = mEGROUP
    @wACCXG = wACCXG
    @wAC = wAC
    @cXG = cXG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_WACCTLResponse
#   result - ResultType
class ADD_WACCTLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_WACCTLRequest
#   mEGROUP - (any)
#   wACCXG - (any)
#   wAC - (any)
#   cXG - (any)
class RMV_WACCTLRequest
  attr_accessor :mEGROUP
  attr_accessor :wACCXG
  attr_accessor :wAC
  attr_accessor :cXG

  def initialize(mEGROUP = nil, wACCXG = nil, wAC = nil, cXG = nil)
    @mEGROUP = mEGROUP
    @wACCXG = wACCXG
    @wAC = wAC
    @cXG = cXG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_WACCTLResponse
#   result - ResultType
class RMV_WACCTLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_WACCTLRequest
#   mEGROUP - (any)
#   wACCXG - (any)
#   wAC - (any)
#   cXG - (any)
class MOD_WACCTLRequest
  attr_accessor :mEGROUP
  attr_accessor :wACCXG
  attr_accessor :wAC
  attr_accessor :cXG

  def initialize(mEGROUP = nil, wACCXG = nil, wAC = nil, cXG = nil)
    @mEGROUP = mEGROUP
    @wACCXG = wACCXG
    @wAC = wAC
    @cXG = cXG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_WACCTLResponse
#   result - ResultType
class MOD_WACCTLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WACCTLRequest
#   mEGROUP - (any)
#   wACCXG - (any)
#   wAC - (any)
#   cXG - (any)
class LST_WACCTLRequest
  attr_accessor :mEGROUP
  attr_accessor :wACCXG
  attr_accessor :wAC
  attr_accessor :cXG

  def initialize(mEGROUP = nil, wACCXG = nil, wAC = nil, cXG = nil)
    @mEGROUP = mEGROUP
    @wACCXG = wACCXG
    @wAC = wAC
    @cXG = cXG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WACCTLResponse
#   result - LST_WACCTLType
class LST_WACCTLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_WCXPFXRequest
#   mEGROUP - (any)
#   cXG - (any)
#   wAC - (any)
#   wACCXG - (any)
class ADD_WCXPFXRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :wAC
  attr_accessor :wACCXG

  def initialize(mEGROUP = nil, cXG = nil, wAC = nil, wACCXG = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @wAC = wAC
    @wACCXG = wACCXG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_WCXPFXResponse
#   result - ResultType
class ADD_WCXPFXResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_WCXPFXRequest
#   mEGROUP - (any)
#   cXG - (any)
#   wAC - (any)
#   wACCXG - (any)
class RMV_WCXPFXRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :wAC
  attr_accessor :wACCXG

  def initialize(mEGROUP = nil, cXG = nil, wAC = nil, wACCXG = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @wAC = wAC
    @wACCXG = wACCXG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_WCXPFXResponse
#   result - ResultType
class RMV_WCXPFXResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_WCXPFXRequest
#   mEGROUP - (any)
#   cXG - (any)
#   wAC - (any)
#   wACCXG - (any)
class MOD_WCXPFXRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :wAC
  attr_accessor :wACCXG

  def initialize(mEGROUP = nil, cXG = nil, wAC = nil, wACCXG = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @wAC = wAC
    @wACCXG = wACCXG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_WCXPFXResponse
#   result - ResultType
class MOD_WCXPFXResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WCXPFXRequest
#   mEGROUP - (any)
#   cXG - (any)
#   wAC - (any)
#   wACCXG - (any)
class LST_WCXPFXRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :wAC
  attr_accessor :wACCXG

  def initialize(mEGROUP = nil, cXG = nil, wAC = nil, wACCXG = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @wAC = wAC
    @wACCXG = wACCXG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WCXPFXResponse
#   result - LST_WCXPFXType
class LST_WCXPFXResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_PBXRequest
#   mEGROUP - (any)
#   gDN - (any)
#   qUL - (any)
#   sGM - (any)
#   mDF - (any)
#   pAC - (any)
#   sNDP - (any)
#   cHT - (any)
#   rSF - (any)
class ADD_PBXRequest
  attr_accessor :mEGROUP
  attr_accessor :gDN
  attr_accessor :qUL
  attr_accessor :sGM
  attr_accessor :mDF
  attr_accessor :pAC
  attr_accessor :sNDP
  attr_accessor :cHT
  attr_accessor :rSF

  def initialize(mEGROUP = nil, gDN = nil, qUL = nil, sGM = nil, mDF = nil, pAC = nil, sNDP = nil, cHT = nil, rSF = nil)
    @mEGROUP = mEGROUP
    @gDN = gDN
    @qUL = qUL
    @sGM = sGM
    @mDF = mDF
    @pAC = pAC
    @sNDP = sNDP
    @cHT = cHT
    @rSF = rSF
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_PBXResponse
#   result - ResultType
class ADD_PBXResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_PBXRequest
#   mEGROUP - (any)
#   gDN - (any)
class RMV_PBXRequest
  attr_accessor :mEGROUP
  attr_accessor :gDN

  def initialize(mEGROUP = nil, gDN = nil)
    @mEGROUP = mEGROUP
    @gDN = gDN
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_PBXResponse
#   result - ResultType
class RMV_PBXResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_PBXRequest
#   mEGROUP - (any)
#   gDN - (any)
#   qUL - (any)
#   sGM - (any)
#   mDF - (any)
#   pAC - (any)
#   sNDP - (any)
#   cHT - (any)
#   rSF - (any)
class MOD_PBXRequest
  attr_accessor :mEGROUP
  attr_accessor :gDN
  attr_accessor :qUL
  attr_accessor :sGM
  attr_accessor :mDF
  attr_accessor :pAC
  attr_accessor :sNDP
  attr_accessor :cHT
  attr_accessor :rSF

  def initialize(mEGROUP = nil, gDN = nil, qUL = nil, sGM = nil, mDF = nil, pAC = nil, sNDP = nil, cHT = nil, rSF = nil)
    @mEGROUP = mEGROUP
    @gDN = gDN
    @qUL = qUL
    @sGM = sGM
    @mDF = mDF
    @pAC = pAC
    @sNDP = sNDP
    @cHT = cHT
    @rSF = rSF
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_PBXResponse
#   result - ResultType
class MOD_PBXResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PBXRequest
#   mEGROUP - (any)
#   gDN - (any)
#   qSP - (any)
#   qAT - (any)
class LST_PBXRequest
  attr_accessor :mEGROUP
  attr_accessor :gDN
  attr_accessor :qSP
  attr_accessor :qAT

  def initialize(mEGROUP = nil, gDN = nil, qSP = nil, qAT = nil)
    @mEGROUP = mEGROUP
    @gDN = gDN
    @qSP = qSP
    @qAT = qAT
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PBXResponse
#   result - LST_PBXType
class LST_PBXResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_PBXSBRRequest
#   mEGROUP - (any)
#   iMPU - (any)
#   gDN - (any)
#   pSN - (any)
#   tIP - (any)
class ADD_PBXSBRRequest
  attr_accessor :mEGROUP
  attr_accessor :iMPU
  attr_accessor :gDN
  attr_accessor :pSN
  attr_accessor :tIP

  def initialize(mEGROUP = nil, iMPU = nil, gDN = nil, pSN = nil, tIP = nil)
    @mEGROUP = mEGROUP
    @iMPU = iMPU
    @gDN = gDN
    @pSN = pSN
    @tIP = tIP
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_PBXSBRResponse
#   result - ResultType
class ADD_PBXSBRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_PBXSBRRequest
#   mEGROUP - (any)
#   iMPU - (any)
class RMV_PBXSBRRequest
  attr_accessor :mEGROUP
  attr_accessor :iMPU

  def initialize(mEGROUP = nil, iMPU = nil)
    @mEGROUP = mEGROUP
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_PBXSBRResponse
#   result - ResultType
class RMV_PBXSBRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_PBXSBRRequest
#   mEGROUP - (any)
#   iMPU - (any)
#   gDN - (any)
#   pSN - (any)
#   tIP - (any)
class MOD_PBXSBRRequest
  attr_accessor :mEGROUP
  attr_accessor :iMPU
  attr_accessor :gDN
  attr_accessor :pSN
  attr_accessor :tIP

  def initialize(mEGROUP = nil, iMPU = nil, gDN = nil, pSN = nil, tIP = nil)
    @mEGROUP = mEGROUP
    @iMPU = iMPU
    @gDN = gDN
    @pSN = pSN
    @tIP = tIP
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_PBXSBRResponse
#   result - ResultType
class MOD_PBXSBRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PBXSBRRequest
#   mEGROUP - (any)
#   iMPU - (any)
#   qSP - (any)
#   qAT - (any)
#   qM - (any)
class LST_PBXSBRRequest
  attr_accessor :mEGROUP
  attr_accessor :iMPU
  attr_accessor :qSP
  attr_accessor :qAT
  attr_accessor :qM

  def initialize(mEGROUP = nil, iMPU = nil, qSP = nil, qAT = nil, qM = nil)
    @mEGROUP = mEGROUP
    @iMPU = iMPU
    @qSP = qSP
    @qAT = qAT
    @qM = qM
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PBXSBRResponse
#   result - LST_PBXSBRType
class LST_PBXSBRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXSDRequest
#   mEGROUP - (any)
#   cXG - (any)
#   cXSG - (any)
#   sDSN - (any)
#   sDFN - (any)
class ADD_CXSDRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :cXSG
  attr_accessor :sDSN
  attr_accessor :sDFN

  def initialize(mEGROUP = nil, cXG = nil, cXSG = nil, sDSN = nil, sDFN = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @cXSG = cXSG
    @sDSN = sDSN
    @sDFN = sDFN
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXSDResponse
#   result - ResultType
class ADD_CXSDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXSDRequest
#   mEGROUP - (any)
#   cXG - (any)
#   cXSG - (any)
#   sDSN - (any)
class RMV_CXSDRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :cXSG
  attr_accessor :sDSN

  def initialize(mEGROUP = nil, cXG = nil, cXSG = nil, sDSN = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @cXSG = cXSG
    @sDSN = sDSN
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXSDResponse
#   result - ResultType
class RMV_CXSDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXSDRequest
#   mEGROUP - (any)
#   cXG - (any)
#   cXSG - (any)
#   sDSN - (any)
#   sDFN - (any)
class MOD_CXSDRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :cXSG
  attr_accessor :sDSN
  attr_accessor :sDFN

  def initialize(mEGROUP = nil, cXG = nil, cXSG = nil, sDSN = nil, sDFN = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @cXSG = cXSG
    @sDSN = sDSN
    @sDFN = sDFN
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXSDResponse
#   result - ResultType
class MOD_CXSDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSDRequest
#   mEGROUP - (any)
#   cXG - (any)
#   cXSG - (any)
#   sDSN - (any)
class LST_CXSDRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :cXSG
  attr_accessor :sDSN

  def initialize(mEGROUP = nil, cXG = nil, cXSG = nil, sDSN = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @cXSG = cXSG
    @sDSN = sDSN
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSDResponse
#   result - LST_CXSDType
class LST_CXSDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXUNUMRequest
#   cXG - (any)
class LST_CXUNUMRequest
  attr_accessor :cXG

  def initialize(cXG = nil)
    @cXG = cXG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXUNUMResponse
#   result - LST_CXUNUMType
class LST_CXUNUMResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_WCIMPURequest
#   mEGROUP - (any)
#   wCIDX - (any)
#   pIMPU - (any)
#   wCIMPU1 - (any)
#   wCIMPU2 - (any)
#   rESERVED - (any)
class ADD_WCIMPURequest
  attr_accessor :mEGROUP
  attr_accessor :wCIDX
  attr_accessor :pIMPU
  attr_accessor :wCIMPU1
  attr_accessor :wCIMPU2
  attr_accessor :rESERVED

  def initialize(mEGROUP = nil, wCIDX = nil, pIMPU = nil, wCIMPU1 = nil, wCIMPU2 = nil, rESERVED = nil)
    @mEGROUP = mEGROUP
    @wCIDX = wCIDX
    @pIMPU = pIMPU
    @wCIMPU1 = wCIMPU1
    @wCIMPU2 = wCIMPU2
    @rESERVED = rESERVED
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_WCIMPUResponse
#   result - ResultType
class ADD_WCIMPUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_WCIMPURequest
#   mEGROUP - (any)
#   wCIDX - (any)
class RMV_WCIMPURequest
  attr_accessor :mEGROUP
  attr_accessor :wCIDX

  def initialize(mEGROUP = nil, wCIDX = nil)
    @mEGROUP = mEGROUP
    @wCIDX = wCIDX
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_WCIMPUResponse
#   result - ResultType
class RMV_WCIMPUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_WCIMPURequest
#   mEGROUP - (any)
#   wCIDX - (any)
#   pIMPU - (any)
#   wCIMPU1 - (any)
#   wCIMPU2 - (any)
#   rESERVED - (any)
class MOD_WCIMPURequest
  attr_accessor :mEGROUP
  attr_accessor :wCIDX
  attr_accessor :pIMPU
  attr_accessor :wCIMPU1
  attr_accessor :wCIMPU2
  attr_accessor :rESERVED

  def initialize(mEGROUP = nil, wCIDX = nil, pIMPU = nil, wCIMPU1 = nil, wCIMPU2 = nil, rESERVED = nil)
    @mEGROUP = mEGROUP
    @wCIDX = wCIDX
    @pIMPU = pIMPU
    @wCIMPU1 = wCIMPU1
    @wCIMPU2 = wCIMPU2
    @rESERVED = rESERVED
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_WCIMPUResponse
#   result - ResultType
class MOD_WCIMPUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WCIMPURequest
#   mEGROUP - (any)
#   wCIDX - (any)
#   pIMPU - (any)
#   wCIMPU1 - (any)
#   wCIMPU2 - (any)
class LST_WCIMPURequest
  attr_accessor :mEGROUP
  attr_accessor :wCIDX
  attr_accessor :pIMPU
  attr_accessor :wCIMPU1
  attr_accessor :wCIMPU2

  def initialize(mEGROUP = nil, wCIDX = nil, pIMPU = nil, wCIMPU1 = nil, wCIMPU2 = nil)
    @mEGROUP = mEGROUP
    @wCIDX = wCIDX
    @pIMPU = pIMPU
    @wCIMPU1 = wCIMPU1
    @wCIMPU2 = wCIMPU2
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WCIMPUResponse
#   result - LST_WCIMPUType
class LST_WCIMPUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXOCRRequest
#   mEGROUP - (any)
#   cTXGRPID - (any)
#   kVALUE - (any)
#   cALLOUTRIGHTEX - (any)
class ADD_CXOCRRequest
  attr_accessor :mEGROUP
  attr_accessor :cTXGRPID
  attr_accessor :kVALUE
  attr_accessor :cALLOUTRIGHTEX

  def initialize(mEGROUP = nil, cTXGRPID = nil, kVALUE = nil, cALLOUTRIGHTEX = nil)
    @mEGROUP = mEGROUP
    @cTXGRPID = cTXGRPID
    @kVALUE = kVALUE
    @cALLOUTRIGHTEX = cALLOUTRIGHTEX
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXOCRResponse
#   result - ResultType
class ADD_CXOCRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXOCRRequest
#   mEGROUP - (any)
#   cTXGRPID - (any)
#   kVALUE - (any)
class RMV_CXOCRRequest
  attr_accessor :mEGROUP
  attr_accessor :cTXGRPID
  attr_accessor :kVALUE

  def initialize(mEGROUP = nil, cTXGRPID = nil, kVALUE = nil)
    @mEGROUP = mEGROUP
    @cTXGRPID = cTXGRPID
    @kVALUE = kVALUE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXOCRResponse
#   result - ResultType
class RMV_CXOCRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXOCRRequest
#   mEGROUP - (any)
#   cTXGRPID - (any)
#   kVALUE - (any)
#   cALLOUTRIGHTEX - (any)
class MOD_CXOCRRequest
  attr_accessor :mEGROUP
  attr_accessor :cTXGRPID
  attr_accessor :kVALUE
  attr_accessor :cALLOUTRIGHTEX

  def initialize(mEGROUP = nil, cTXGRPID = nil, kVALUE = nil, cALLOUTRIGHTEX = nil)
    @mEGROUP = mEGROUP
    @cTXGRPID = cTXGRPID
    @kVALUE = kVALUE
    @cALLOUTRIGHTEX = cALLOUTRIGHTEX
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXOCRResponse
#   result - ResultType
class MOD_CXOCRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXOCRRequest
#   mEGROUP - (any)
#   cTXGRPID - (any)
#   kVALUE - (any)
class LST_CXOCRRequest
  attr_accessor :mEGROUP
  attr_accessor :cTXGRPID
  attr_accessor :kVALUE

  def initialize(mEGROUP = nil, cTXGRPID = nil, kVALUE = nil)
    @mEGROUP = mEGROUP
    @cTXGRPID = cTXGRPID
    @kVALUE = kVALUE
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXOCRResponse
#   result - LST_CXOCRType
class LST_CXOCRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXPFXPRORequest
#   mEGROUP - (any)
#   cXG - (any)
#   pFX - (any)
#   cSC - (any)
#   dDC - (any)
#   rDC - (any)
#   sTP - (any)
#   fPF - (any)
#   nPS - (any)
#   nLP - (any)
#   dDCX - (any)
#   rDCX - (any)
#   rAF - (any)
#   tT - (any)
#   fCC - (any)
#   rESERVED - (any)
class ADD_CXPFXPRORequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :pFX
  attr_accessor :cSC
  attr_accessor :dDC
  attr_accessor :rDC
  attr_accessor :sTP
  attr_accessor :fPF
  attr_accessor :nPS
  attr_accessor :nLP
  attr_accessor :dDCX
  attr_accessor :rDCX
  attr_accessor :rAF
  attr_accessor :tT
  attr_accessor :fCC
  attr_accessor :rESERVED

  def initialize(mEGROUP = nil, cXG = nil, pFX = nil, cSC = nil, dDC = nil, rDC = nil, sTP = nil, fPF = nil, nPS = nil, nLP = nil, dDCX = nil, rDCX = nil, rAF = nil, tT = nil, fCC = nil, rESERVED = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @pFX = pFX
    @cSC = cSC
    @dDC = dDC
    @rDC = rDC
    @sTP = sTP
    @fPF = fPF
    @nPS = nPS
    @nLP = nLP
    @dDCX = dDCX
    @rDCX = rDCX
    @rAF = rAF
    @tT = tT
    @fCC = fCC
    @rESERVED = rESERVED
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXPFXPROResponse
#   result - ResultType
class ADD_CXPFXPROResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXPFXPRORequest
#   mEGROUP - (any)
#   cXG - (any)
#   pFX - (any)
#   cSC - (any)
class RMV_CXPFXPRORequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :pFX
  attr_accessor :cSC

  def initialize(mEGROUP = nil, cXG = nil, pFX = nil, cSC = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @pFX = pFX
    @cSC = cSC
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXPFXPROResponse
#   result - ResultType
class RMV_CXPFXPROResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXPFXPRORequest
#   mEGROUP - (any)
#   cXG - (any)
#   pFX - (any)
#   cSC - (any)
#   dDC - (any)
#   rDC - (any)
#   sTP - (any)
#   fPF - (any)
#   nPS - (any)
#   nLP - (any)
#   dDCX - (any)
#   rDCX - (any)
#   rAF - (any)
#   tT - (any)
#   fCC - (any)
#   rESERVED - (any)
class MOD_CXPFXPRORequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :pFX
  attr_accessor :cSC
  attr_accessor :dDC
  attr_accessor :rDC
  attr_accessor :sTP
  attr_accessor :fPF
  attr_accessor :nPS
  attr_accessor :nLP
  attr_accessor :dDCX
  attr_accessor :rDCX
  attr_accessor :rAF
  attr_accessor :tT
  attr_accessor :fCC
  attr_accessor :rESERVED

  def initialize(mEGROUP = nil, cXG = nil, pFX = nil, cSC = nil, dDC = nil, rDC = nil, sTP = nil, fPF = nil, nPS = nil, nLP = nil, dDCX = nil, rDCX = nil, rAF = nil, tT = nil, fCC = nil, rESERVED = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @pFX = pFX
    @cSC = cSC
    @dDC = dDC
    @rDC = rDC
    @sTP = sTP
    @fPF = fPF
    @nPS = nPS
    @nLP = nLP
    @dDCX = dDCX
    @rDCX = rDCX
    @rAF = rAF
    @tT = tT
    @fCC = fCC
    @rESERVED = rESERVED
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXPFXPROResponse
#   result - ResultType
class MOD_CXPFXPROResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXPFXPRORequest
#   mEGROUP - (any)
#   cXG - (any)
#   pFX - (any)
#   cSC - (any)
class LST_CXPFXPRORequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :pFX
  attr_accessor :cSC

  def initialize(mEGROUP = nil, cXG = nil, pFX = nil, cSC = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @pFX = pFX
    @cSC = cSC
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXPFXPROResponse
#   result - LST_CXPFXPROType
class LST_CXPFXPROResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXACTRequest
#   mEGROUP - (any)
#   aCT - (any)
#   pWD - (any)
#   rOLEID - (any)
#   rTLIST - (any)
#   iMPU - (any)
#   nAME - (any)
class ADD_CXACTRequest
  attr_accessor :mEGROUP
  attr_accessor :aCT
  attr_accessor :pWD
  attr_accessor :rOLEID
  attr_accessor :rTLIST
  attr_accessor :iMPU
  attr_accessor :nAME

  def initialize(mEGROUP = nil, aCT = nil, pWD = nil, rOLEID = nil, rTLIST = nil, iMPU = nil, nAME = nil)
    @mEGROUP = mEGROUP
    @aCT = aCT
    @pWD = pWD
    @rOLEID = rOLEID
    @rTLIST = rTLIST
    @iMPU = iMPU
    @nAME = nAME
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXACTResponse
#   result - ResultType
class ADD_CXACTResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXACTRequest
#   mEGROUP - (any)
#   aCT - (any)
class RMV_CXACTRequest
  attr_accessor :mEGROUP
  attr_accessor :aCT

  def initialize(mEGROUP = nil, aCT = nil)
    @mEGROUP = mEGROUP
    @aCT = aCT
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXACTResponse
#   result - ResultType
class RMV_CXACTResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXACTRequest
#   mEGROUP - (any)
#   aCT - (any)
#   rOLEID - (any)
#   rTLIST - (any)
#   nAME - (any)
class MOD_CXACTRequest
  attr_accessor :mEGROUP
  attr_accessor :aCT
  attr_accessor :rOLEID
  attr_accessor :rTLIST
  attr_accessor :nAME

  def initialize(mEGROUP = nil, aCT = nil, rOLEID = nil, rTLIST = nil, nAME = nil)
    @mEGROUP = mEGROUP
    @aCT = aCT
    @rOLEID = rOLEID
    @rTLIST = rTLIST
    @nAME = nAME
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXACTResponse
#   result - ResultType
class MOD_CXACTResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXACTRequest
#   mEGROUP - (any)
#   cXG - (any)
#   cXSG - (any)
#   aCT - (any)
class LST_CXACTRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :cXSG
  attr_accessor :aCT

  def initialize(mEGROUP = nil, cXG = nil, cXSG = nil, aCT = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @cXSG = cXSG
    @aCT = aCT
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXACTResponse
#   result - LST_CXACTType
class LST_CXACTResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CXACTRequest
#   mEGROUP - (any)
#   aCT - (any)
class DSP_CXACTRequest
  attr_accessor :mEGROUP
  attr_accessor :aCT

  def initialize(mEGROUP = nil, aCT = nil)
    @mEGROUP = mEGROUP
    @aCT = aCT
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CXACTResponse
#   result - DSP_CXACTType
class DSP_CXACTResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}INL_CXACTRequest
#   aCT - (any)
#   eMAIL - (any)
class INL_CXACTRequest
  attr_accessor :aCT
  attr_accessor :eMAIL

  def initialize(aCT = nil, eMAIL = nil)
    @aCT = aCT
    @eMAIL = eMAIL
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}INL_CXACTResponse
#   result - ResultType
class INL_CXACTResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CONRequest
#   mEGROUP - (any)
#   iMPU - (any)
#   cONPWD - (any)
#   pDMN - (any)
#   pADDR - (any)
#   pPORT - (any)
#   cONTYPE - (any)
#   sMSNUM - (any)
class REG_CONRequest
  attr_accessor :mEGROUP
  attr_accessor :iMPU
  attr_accessor :cONPWD
  attr_accessor :pDMN
  attr_accessor :pADDR
  attr_accessor :pPORT
  attr_accessor :cONTYPE
  attr_accessor :sMSNUM

  def initialize(mEGROUP = nil, iMPU = nil, cONPWD = nil, pDMN = nil, pADDR = nil, pPORT = nil, cONTYPE = nil, sMSNUM = nil)
    @mEGROUP = mEGROUP
    @iMPU = iMPU
    @cONPWD = cONPWD
    @pDMN = pDMN
    @pADDR = pADDR
    @pPORT = pPORT
    @cONTYPE = cONTYPE
    @sMSNUM = sMSNUM
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CONResponse
#   result - ResultType
class REG_CONResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CONRequest
#   mEGROUP - (any)
#   iMPU - (any)
class RPL_CONRequest
  attr_accessor :mEGROUP
  attr_accessor :iMPU

  def initialize(mEGROUP = nil, iMPU = nil)
    @mEGROUP = mEGROUP
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CONResponse
#   result - ResultType
class RPL_CONResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CONRequest
#   mEGROUP - (any)
#   iMPU - (any)
class DSP_CONRequest
  attr_accessor :mEGROUP
  attr_accessor :iMPU

  def initialize(mEGROUP = nil, iMPU = nil)
    @mEGROUP = mEGROUP
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CONResponse
#   result - DSP_CONType
class DSP_CONResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CONRequest
#   mEGROUP - (any)
#   cXG - (any)
#   cXSG - (any)
class LST_CONRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :cXSG

  def initialize(mEGROUP = nil, cXG = nil, cXSG = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @cXSG = cXSG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CONResponse
#   result - LST_CONType
class LST_CONResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_ROLERequest
#   mEGROUP - (any)
#   rOLEID - (any)
#   rOLENAME - (any)
#   rTLIST - (any)
#   dESC - (any)
class ADD_ROLERequest
  attr_accessor :mEGROUP
  attr_accessor :rOLEID
  attr_accessor :rOLENAME
  attr_accessor :rTLIST
  attr_accessor :dESC

  def initialize(mEGROUP = nil, rOLEID = nil, rOLENAME = nil, rTLIST = nil, dESC = nil)
    @mEGROUP = mEGROUP
    @rOLEID = rOLEID
    @rOLENAME = rOLENAME
    @rTLIST = rTLIST
    @dESC = dESC
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_ROLEResponse
#   result - ResultType
class ADD_ROLEResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_ROLERequest
#   mEGROUP - (any)
#   rOLEID - (any)
class RMV_ROLERequest
  attr_accessor :mEGROUP
  attr_accessor :rOLEID

  def initialize(mEGROUP = nil, rOLEID = nil)
    @mEGROUP = mEGROUP
    @rOLEID = rOLEID
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_ROLEResponse
#   result - ResultType
class RMV_ROLEResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_ROLERequest
#   mEGROUP - (any)
#   rOLEID - (any)
#   rOLENAME - (any)
#   rTLIST - (any)
#   dESC - (any)
class MOD_ROLERequest
  attr_accessor :mEGROUP
  attr_accessor :rOLEID
  attr_accessor :rOLENAME
  attr_accessor :rTLIST
  attr_accessor :dESC

  def initialize(mEGROUP = nil, rOLEID = nil, rOLENAME = nil, rTLIST = nil, dESC = nil)
    @mEGROUP = mEGROUP
    @rOLEID = rOLEID
    @rOLENAME = rOLENAME
    @rTLIST = rTLIST
    @dESC = dESC
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_ROLEResponse
#   result - ResultType
class MOD_ROLEResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ROLERequest
#   mEGROUP - (any)
#   rOLEID - (any)
#   rOLENAME - (any)
class LST_ROLERequest
  attr_accessor :mEGROUP
  attr_accessor :rOLEID
  attr_accessor :rOLENAME

  def initialize(mEGROUP = nil, rOLEID = nil, rOLENAME = nil)
    @mEGROUP = mEGROUP
    @rOLEID = rOLEID
    @rOLENAME = rOLENAME
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ROLEResponse
#   result - LST_ROLEType
class LST_ROLEResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ROLERequest
#   mEGROUP - (any)
#   rOLEID - (any)
class DSP_ROLERequest
  attr_accessor :mEGROUP
  attr_accessor :rOLEID

  def initialize(mEGROUP = nil, rOLEID = nil)
    @mEGROUP = mEGROUP
    @rOLEID = rOLEID
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ROLEResponse
#   result - DSP_ROLEType
class DSP_ROLEResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ACTRTRequest
#   rTID - (any)
#   rTNAME - (any)
class LST_ACTRTRequest
  attr_accessor :rTID
  attr_accessor :rTNAME

  def initialize(rTID = nil, rTNAME = nil)
    @rTID = rTID
    @rTNAME = rTNAME
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ACTRTResponse
#   result - LST_ACTRTType
class LST_ACTRTResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ACTRTRequest
#   rTID - (any)
class DSP_ACTRTRequest
  attr_accessor :rTID

  def initialize(rTID = nil)
    @rTID = rTID
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ACTRTResponse
#   result - DSP_ACTRTType
class DSP_ACTRTResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_SBGLANRequest
#   mEGROUP - (any)
#   cXG - (any)
#   cXSG - (any)
#   lAN - (any)
class MOD_SBGLANRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :cXSG
  attr_accessor :lAN

  def initialize(mEGROUP = nil, cXG = nil, cXSG = nil, lAN = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @cXSG = cXSG
    @lAN = lAN
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_SBGLANResponse
#   result - ResultType
class MOD_SBGLANResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SBGLANRequest
#   mEGROUP - (any)
#   cXG - (any)
#   cXSG - (any)
class DSP_SBGLANRequest
  attr_accessor :mEGROUP
  attr_accessor :cXG
  attr_accessor :cXSG

  def initialize(mEGROUP = nil, cXG = nil, cXSG = nil)
    @mEGROUP = mEGROUP
    @cXG = cXG
    @cXSG = cXSG
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SBGLANResponse
#   result - DSP_SBGLANType
class DSP_SBGLANResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_LANRequest
#   lANID - (any)
#   lANNAME - (any)
class LST_LANRequest
  attr_accessor :lANID
  attr_accessor :lANNAME

  def initialize(lANID = nil, lANNAME = nil)
    @lANID = lANID
    @lANNAME = lANNAME
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_LANResponse
#   result - LST_LANType
class LST_LANResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXSBRCONRequest
#   mEGROUP - (any)
#   iMPU - (any)
#   lCO - (any)
#   lC - (any)
#   lCT - (any)
#   nTT - (any)
#   iTT - (any)
#   iNTT - (any)
#   iITT - (any)
#   iOLT - (any)
#   gRPICO - (any)
#   gRPCO - (any)
#   iDDCI - (any)
#   nTCI - (any)
#   lTCI - (any)
#   gRPICI - (any)
#   gRPINCO - (any)
#   nSCFU - (any)
#   nSCFB - (any)
#   nSCFBVM - (any)
#   nSCFNR - (any)
#   nSCFNRVM - (any)
#   nSCFNL - (any)
#   nSCD - (any)
#   nSCIDCW - (any)
#   nSRIP - (any)
#   nSRID - (any)
#   nSNRID - (any)
#   nSCLIP - (any)
#   nSRIO - (any)
#   nSCLIR - (any)
#   nSCW - (any)
#   nSWAKE_UP - (any)
#   nSCCBS - (any)
#   nS3PTY - (any)
#   nSNPTY - (any)
#   nSDND - (any)
#   nSHOLD - (any)
#   nSCFTB - (any)
#   nSDAN - (any)
#   nSMCID - (any)
#   nSDN_CALL_OUT_ALLOW - (any)
#   nSSPEED_DIAL - (any)
#   nSGAA - (any)
#   nSHOTLINE - (any)
#   nSICENCF - (any)
#   nSABSENT - (any)
class MOD_CXSBRCONRequest
  attr_accessor :mEGROUP
  attr_accessor :iMPU
  attr_accessor :lCO
  attr_accessor :lC
  attr_accessor :lCT
  attr_accessor :nTT
  attr_accessor :iTT
  attr_accessor :iNTT
  attr_accessor :iITT
  attr_accessor :iOLT
  attr_accessor :gRPICO
  attr_accessor :gRPCO
  attr_accessor :iDDCI
  attr_accessor :nTCI
  attr_accessor :lTCI
  attr_accessor :gRPICI
  attr_accessor :gRPINCO
  attr_accessor :nSCFU
  attr_accessor :nSCFB
  attr_accessor :nSCFBVM
  attr_accessor :nSCFNR
  attr_accessor :nSCFNRVM
  attr_accessor :nSCFNL
  attr_accessor :nSCD
  attr_accessor :nSCIDCW
  attr_accessor :nSRIP
  attr_accessor :nSRID
  attr_accessor :nSNRID
  attr_accessor :nSCLIP
  attr_accessor :nSRIO
  attr_accessor :nSCLIR
  attr_accessor :nSCW
  attr_accessor :nSWAKE_UP
  attr_accessor :nSCCBS
  attr_accessor :nS3PTY
  attr_accessor :nSNPTY
  attr_accessor :nSDND
  attr_accessor :nSHOLD
  attr_accessor :nSCFTB
  attr_accessor :nSDAN
  attr_accessor :nSMCID
  attr_accessor :nSDN_CALL_OUT_ALLOW
  attr_accessor :nSSPEED_DIAL
  attr_accessor :nSGAA
  attr_accessor :nSHOTLINE
  attr_accessor :nSICENCF
  attr_accessor :nSABSENT

  def initialize(mEGROUP = nil, iMPU = nil, lCO = nil, lC = nil, lCT = nil, nTT = nil, iTT = nil, iNTT = nil, iITT = nil, iOLT = nil, gRPICO = nil, gRPCO = nil, iDDCI = nil, nTCI = nil, lTCI = nil, gRPICI = nil, gRPINCO = nil, nSCFU = nil, nSCFB = nil, nSCFBVM = nil, nSCFNR = nil, nSCFNRVM = nil, nSCFNL = nil, nSCD = nil, nSCIDCW = nil, nSRIP = nil, nSRID = nil, nSNRID = nil, nSCLIP = nil, nSRIO = nil, nSCLIR = nil, nSCW = nil, nSWAKE_UP = nil, nSCCBS = nil, nS3PTY = nil, nSNPTY = nil, nSDND = nil, nSHOLD = nil, nSCFTB = nil, nSDAN = nil, nSMCID = nil, nSDN_CALL_OUT_ALLOW = nil, nSSPEED_DIAL = nil, nSGAA = nil, nSHOTLINE = nil, nSICENCF = nil, nSABSENT = nil)
    @mEGROUP = mEGROUP
    @iMPU = iMPU
    @lCO = lCO
    @lC = lC
    @lCT = lCT
    @nTT = nTT
    @iTT = iTT
    @iNTT = iNTT
    @iITT = iITT
    @iOLT = iOLT
    @gRPICO = gRPICO
    @gRPCO = gRPCO
    @iDDCI = iDDCI
    @nTCI = nTCI
    @lTCI = lTCI
    @gRPICI = gRPICI
    @gRPINCO = gRPINCO
    @nSCFU = nSCFU
    @nSCFB = nSCFB
    @nSCFBVM = nSCFBVM
    @nSCFNR = nSCFNR
    @nSCFNRVM = nSCFNRVM
    @nSCFNL = nSCFNL
    @nSCD = nSCD
    @nSCIDCW = nSCIDCW
    @nSRIP = nSRIP
    @nSRID = nSRID
    @nSNRID = nSNRID
    @nSCLIP = nSCLIP
    @nSRIO = nSRIO
    @nSCLIR = nSCLIR
    @nSCW = nSCW
    @nSWAKE_UP = nSWAKE_UP
    @nSCCBS = nSCCBS
    @nS3PTY = nS3PTY
    @nSNPTY = nSNPTY
    @nSDND = nSDND
    @nSHOLD = nSHOLD
    @nSCFTB = nSCFTB
    @nSDAN = nSDAN
    @nSMCID = nSMCID
    @nSDN_CALL_OUT_ALLOW = nSDN_CALL_OUT_ALLOW
    @nSSPEED_DIAL = nSSPEED_DIAL
    @nSGAA = nSGAA
    @nSHOTLINE = nSHOTLINE
    @nSICENCF = nSICENCF
    @nSABSENT = nSABSENT
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXSBRCONResponse
#   result - ResultType
class MOD_CXSBRCONResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSBRCONRequest
#   mEGROUP - (any)
#   iMPU - (any)
class LST_CXSBRCONRequest
  attr_accessor :mEGROUP
  attr_accessor :iMPU

  def initialize(mEGROUP = nil, iMPU = nil)
    @mEGROUP = mEGROUP
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSBRCONResponse
#   result - LST_CXSBRCONType
class LST_CXSBRCONResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}Authentication
#   username - SOAP::SOAPString
#   password - SOAP::SOAPString
class Authentication
  attr_accessor :username
  attr_accessor :password

  def initialize(username = nil, password = nil)
    @username = username
    @password = password
  end
end
