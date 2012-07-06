require 'ATS_default.rb'
require 'soap/mapping'

module ATS_DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsATSV100R003C03SPC100 = "http://www.huawei.com/IMS/ATSV100R003C03SPC100"
  NsV100R003C03SPC100 = "http://www.huawei.com/IMS/ATS/V100R003C03SPC100/"

  EncodedRegistry.register(
    :class => RequestCommonInfoType,
    :schema_type => XSD::QName.new(NsATSV100R003C03SPC100, "RequestCommonInfoType"),
    :schema_element => [
      ["sessionID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "SessionID")]],
      ["mEID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "MEID")]],
      ["sourceMEID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "SourceMEID")]],
      ["serialID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "SerialID")]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsATSV100R003C03SPC100, "UserName")]],
      ["sync", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "Sync")]],
      ["reserve", ["SOAP::SOAPString", XSD::QName.new(NsATSV100R003C03SPC100, "Reserve")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ResponseCommonInfoType,
    :schema_type => XSD::QName.new(NsATSV100R003C03SPC100, "ResponseCommonInfoType"),
    :schema_element => [
      ["commandName", ["SOAP::SOAPString", XSD::QName.new(NsATSV100R003C03SPC100, "CommandName")]],
      ["sessionID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "SessionID")]],
      ["requestID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "RequestID")]],
      ["mEID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "MEID")]],
      ["sourceMEID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "SourceMEID")]],
      ["serialID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "SerialID")]],
      ["timeStamp", ["SOAP::SOAPString", XSD::QName.new(NsATSV100R003C03SPC100, "TimeStamp")]],
      ["svrType", ["SOAP::SOAPString", XSD::QName.new(NsATSV100R003C03SPC100, "SvrType")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SBRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_SBRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_SBRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SBRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_SBRTables"),
    :schema_element => [
      ["table1", ["LST_SBRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SBRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_SBRTable1"),
    :schema_element => [
      ["item", ["LST_SBRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SBRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_SBRStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["tEMPLATEIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "TEMPLATEIDX")]],
      ["dSPIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "DSPIDX")]],
      ["lP", [nil, XSD::QName.new(NsV100R003C03SPC100, "LP")]],
      ["cSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSC")]],
      ["uNAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "UNAME")]],
      ["uTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "UTYPE")]],
      ["vCCFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "VCCFLAG")]],
      ["vTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "VTFLAG")]],
      ["nSCFU", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFU")]],
      ["nSCFUVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFUVM")]],
      ["nSCFB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFB")]],
      ["nSCFBVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFBVM")]],
      ["nSCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNR")]],
      ["nSCFNRVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRVM")]],
      ["nSCFNL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNL")]],
      ["nSCFNLVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNLVM")]],
      ["nSCD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCD")]],
      ["nSCDVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCDVM")]],
      ["nSCFNRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRC")]],
      ["nSCFNRCVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRCVM")]],
      ["nSCLIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIP")]],
      ["nSCIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIDCW")]],
      ["nSRIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIO")]],
      ["nSCNIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIP")]],
      ["nSCLIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIR")]],
      ["nSRIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIP")]],
      ["nSCNIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIR")]],
      ["nSRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRID")]],
      ["nSNRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRID")]],
      ["nSRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRND")]],
      ["nSNRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRND")]],
      ["nSCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCW")]],
      ["nSCCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCW")]],
      ["nSOIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOIP")]],
      ["nSACRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACRM")]],
      ["nSGOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGOIR")]],
      ["nSMOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMOIR")]],
      ["nSTIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIP")]],
      ["nSTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIR")]],
      ["nSOTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOTIR")]],
      ["nSCLIPNOSCREENING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIPNOSCREENING")]],
      ["nSCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCR")]],
      ["nSWAKE_UP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSWAKE_UP")]],
      ["nSAOC_D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_D")]],
      ["nSAOC_E", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_E")]],
      ["nSXEXH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEXH")]],
      ["nSXEGJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEGJ")]],
      ["nSCWCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCWCFNR")]],
      ["nSIIFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIIFC")]],
      ["nSDN_CALL_OUT_BAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_BAR")]],
      ["nSCCBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBS")]],
      ["nSCCNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNR")]],
      ["nSCCBSR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBSR")]],
      ["nSCCNRR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNRR")]],
      ["nS3PTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NS3PTY")]],
      ["nSNPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNPTY")]],
      ["nSDND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDND")]],
      ["nSMCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCR")]],
      ["nSCBA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBA")]],
      ["nSTMP_LIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTMP_LIN")]],
      ["nSCODEC_CNTRL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCODEC_CNTRL")]],
      ["nSMWI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMWI")]],
      ["nSDC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDC")]],
      ["nSHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOLD")]],
      ["nSECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSECT")]],
      ["nSCFTB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFTB")]],
      ["nSDAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDAN")]],
      ["nSSTOP_SECRET", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSTOP_SECRET")]],
      ["nSMCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCID")]],
      ["nSEBO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSEBO")]],
      ["nSICO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICO")]],
      ["nSOUTG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTG")]],
      ["nSINQYH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINQYH")]],
      ["nSUINFO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSUINFO")]],
      ["nSDN_CALL_OUT_ALLOW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_ALLOW")]],
      ["nSSIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSIC")]],
      ["nSSOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSOC")]],
      ["nSSETCFNRTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETCFNRTIME")]],
      ["nSCFS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFS")]],
      ["nSCFSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFSB")]],
      ["nSFAX", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFAX")]],
      ["nSABRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABRC")]],
      ["nSACRTOVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACRTOVM")]],
      ["nSPREPAID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPREPAID")]],
      ["nSCRBT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCRBT")]],
      ["nSICB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICB")]],
      ["nSMRINGING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMRINGING")]],
      ["nSCIS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIS")]],
      ["nSCBEG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBEG")]],
      ["nSCOLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLP")]],
      ["nSCOLR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLR")]],
      ["nSCOLPOVR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLPOVR")]],
      ["nSBAOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAOC")]],
      ["nSBOIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOIC")]],
      ["nSBOICEXHC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOICEXHC")]],
      ["nSBAIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAIC")]],
      ["nSBICROM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBICROM")]],
      ["nSSPEED_DIAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSPEED_DIAL")]],
      ["nSSD1D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD1D")]],
      ["nSSD2D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD2D")]],
      ["nSGRNCALL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGRNCALL")]],
      ["nSCPARK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCPARK")]],
      ["nSGAA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGAA")]],
      ["nSQSNS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQSNS")]],
      ["nSMSN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMSN")]],
      ["nSHOTLINE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOTLINE")]],
      ["nSAOC_S", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_S")]],
      ["nSNIGHTSRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNIGHTSRV")]],
      ["nSBACKNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBACKNUM")]],
      ["nSAUTOCON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAUTOCON")]],
      ["nSCAMPON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCAMPON")]],
      ["nSCTD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTD")]],
      ["nSCLICKHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLICKHOLD")]],
      ["nSQUEUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQUEUE")]],
      ["nSSANSWER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSANSWER")]],
      ["nSICENCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICENCF")]],
      ["nSCFGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFGO")]],
      ["nSCECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCECT")]],
      ["nSCTGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTGO")]],
      ["nSCTIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTIO")]],
      ["nSSETBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETBUSY")]],
      ["nSOVERSTEP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOVERSTEP")]],
      ["nSABSENT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABSENT")]],
      ["nSMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMONITOR")]],
      ["nSFMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFMONITOR")]],
      ["nSDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDISCNT")]],
      ["nSFDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFDISCNT")]],
      ["nSINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINSERT")]],
      ["nSFINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFINSERT")]],
      ["nSASI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSASI")]],
      ["nSPWCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPWCB")]],
      ["nSRD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRD")]],
      ["nSLCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSLCPS")]],
      ["nSNCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNCPS")]],
      ["nSICPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICPS")]],
      ["nSHCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHCPS")]],
      ["nSCBCLOCK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBCLOCK")]],
      ["nSMINIBAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMINIBAR")]],
      ["nSMCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCN")]],
      ["nSDSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDSTR")]],
      ["nSOPRREG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOPRREG")]],
      ["nSONEKEY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSONEKEY")]],
      ["nSINBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINBOUND")]],
      ["nSOUTBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTBOUND")]],
      ["nSCALLERID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCALLERID")]],
      ["nSCUN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCUN")]],
      ["nSIPTVVC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIPTVVC")]],
      ["nSNP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNP")]],
      ["nSSEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSEC")]],
      ["nSSECSTA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSECSTA")]],
      ["nSHRCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHRCN")]],
      ["nSSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSB")]],
      ["nSSCCA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSCCA")]],
      ["nSCCS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCS")]],
      ["nSOCCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOCCR")]],
      ["nSIMSMS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIMSMS")]],
      ["lCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "LCO")]],
      ["lC", [nil, XSD::QName.new(NsV100R003C03SPC100, "LC")]],
      ["lCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "LCT")]],
      ["nTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTT")]],
      ["iTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ITT")]],
      ["iCTX", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICTX")]],
      ["oCTX", [nil, XSD::QName.new(NsV100R003C03SPC100, "OCTX")]],
      ["iNTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "INTT")]],
      ["iITT", [nil, XSD::QName.new(NsV100R003C03SPC100, "IITT")]],
      ["iCLT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICLT")]],
      ["iCDDD", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICDDD")]],
      ["iCIDD", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICIDD")]],
      ["iOLT", [nil, XSD::QName.new(NsV100R003C03SPC100, "IOLT")]],
      ["cTLCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTLCO")]],
      ["cTLCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTLCT")]],
      ["cTLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTLD")]],
      ["cTINTNANP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTINTNANP")]],
      ["cTINTWORLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTINTWORLD")]],
      ["cTDA", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTDA")]],
      ["cTOSM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTOSM")]],
      ["cTOSP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTOSP")]],
      ["cTOSP1", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTOSP1")]],
      ["cCO1", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO1")]],
      ["cCO2", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO2")]],
      ["cCO3", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO3")]],
      ["cCO4", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO4")]],
      ["cCO5", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO5")]],
      ["cCO6", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO6")]],
      ["cCO7", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO7")]],
      ["cCO8", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO8")]],
      ["cCO9", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO9")]],
      ["cCO10", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO10")]],
      ["cCO11", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO11")]],
      ["cCO12", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO12")]],
      ["cCO13", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO13")]],
      ["cCO14", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO14")]],
      ["cCO15", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO15")]],
      ["cCO16", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO16")]],
      ["cCO17", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO17")]],
      ["cCO18", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO18")]],
      ["cCO19", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO19")]],
      ["cCO20", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO20")]],
      ["cCO21", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO21")]],
      ["cCO22", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO22")]],
      ["cCO23", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO23")]],
      ["cCO24", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO24")]],
      ["cCO25", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO25")]],
      ["cCO26", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO26")]],
      ["cCO27", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO27")]],
      ["cCO28", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO28")]],
      ["cCO29", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO29")]],
      ["cCO30", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO30")]],
      ["cCO31", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO31")]],
      ["cCO32", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO32")]],
      ["hIGHENTCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "HIGHENTCO")]],
      ["oPERATOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "OPERATOR")]],
      ["sUPYSRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUPYSRV")]],
      ["iDDCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "IDDCI")]],
      ["nTCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTCI")]],
      ["lTCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "LTCI")]],
      ["rSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "RSC")]],
      ["cIG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CIG")]],
      ["oUTRST", [nil, XSD::QName.new(NsV100R003C03SPC100, "OUTRST")]],
      ["iNRST", [nil, XSD::QName.new(NsV100R003C03SPC100, "INRST")]],
      ["nOAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOAT")]],
      ["rINGCOUNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "RINGCOUNT")]],
      ["vMAIND", [nil, XSD::QName.new(NsV100R003C03SPC100, "VMAIND")]],
      ["vDMAIND", [nil, XSD::QName.new(NsV100R003C03SPC100, "VDMAIND")]],
      ["tGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "TGRP")]],
      ["tIDHLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIDHLD")]],
      ["tIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIDCW")]],
      ["sCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SCF")]],
      ["lMTGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "LMTGRP")]],
      ["fLBGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "FLBGRP")]],
      ["sLBGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "SLBGRP")]],
      ["cOP", [nil, XSD::QName.new(NsV100R003C03SPC100, "COP")]],
      ["g711_64K_A_LAW", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711_64K_A_LAW")]],
      ["g711_64K_U_LAW", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711_64K_U_LAW")]],
      ["g722", [nil, XSD::QName.new(NsV100R003C03SPC100, "G722")]],
      ["g723", [nil, XSD::QName.new(NsV100R003C03SPC100, "G723")]],
      ["g726", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726")]],
      ["g728", [nil, XSD::QName.new(NsV100R003C03SPC100, "G728")]],
      ["g729", [nil, XSD::QName.new(NsV100R003C03SPC100, "G729")]],
      ["cODEC_MP4A", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC_MP4A")]],
      ["cODEC2833", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC2833")]],
      ["cODEC2198", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC2198")]],
      ["g726_40", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_40")]],
      ["g726_32", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_32")]],
      ["g726_24", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_24")]],
      ["g726_16", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_16")]],
      ["aMR", [nil, XSD::QName.new(NsV100R003C03SPC100, "AMR")]],
      ["cLEARMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLEARMODE")]],
      ["iLBC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ILBC")]],
      ["sPEEX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SPEEX")]],
      ["g729EV", [nil, XSD::QName.new(NsV100R003C03SPC100, "G729EV")]],
      ["eVRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "EVRC")]],
      ["eVRCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "EVRCB")]],
      ["h261", [nil, XSD::QName.new(NsV100R003C03SPC100, "H261")]],
      ["h263", [nil, XSD::QName.new(NsV100R003C03SPC100, "H263")]],
      ["cODEC_MP4V", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC_MP4V")]],
      ["h264", [nil, XSD::QName.new(NsV100R003C03SPC100, "H264")]],
      ["t38", [nil, XSD::QName.new(NsV100R003C03SPC100, "T38")]],
      ["t120", [nil, XSD::QName.new(NsV100R003C03SPC100, "T120")]],
      ["g711A_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711A_VBD")]],
      ["g711U_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711U_VBD")]],
      ["g726_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_VBD")]],
      ["g726_40_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_40_VBD")]],
      ["g726_32_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_32_VBD")]],
      ["g726_24_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_24_VBD")]],
      ["g726_16_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_16_VBD")]],
      ["wIND_BAND_AMR", [nil, XSD::QName.new(NsV100R003C03SPC100, "WIND_BAND_AMR")]],
      ["gSM610", [nil, XSD::QName.new(NsV100R003C03SPC100, "GSM610")]],
      ["h263_2000", [nil, XSD::QName.new(NsV100R003C03SPC100, "H263_2000")]],
      ["bROADVOICE_32", [nil, XSD::QName.new(NsV100R003C03SPC100, "BROADVOICE_32")]],
      ["uNKNOWN_CODEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "UNKNOWN_CODEC")]],
      ["aCODEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACODEC")]],
      ["vCODEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "VCODEC")]],
      ["pOLIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "POLIDX")]],
      ["nCPI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NCPI")]],
      ["iCPI", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICPI")]],
      ["hCPI", [nil, XSD::QName.new(NsV100R003C03SPC100, "HCPI")]],
      ["eBOCL", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBOCL")]],
      ["eBOPL", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBOPL")]],
      ["eBOIT", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBOIT")]],
      ["rM", [nil, XSD::QName.new(NsV100R003C03SPC100, "RM")]],
      ["cPC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CPC")]],
      ["pCHG", [nil, XSD::QName.new(NsV100R003C03SPC100, "PCHG")]],
      ["tFPT", [nil, XSD::QName.new(NsV100R003C03SPC100, "TFPT")]],
      ["cHT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHT")]],
      ["mCIDMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCIDMODE")]],
      ["mCIDCMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCIDCMODE")]],
      ["mCIDAMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCIDAMODE")]],
      ["pREPAIDIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "PREPAIDIDX")]],
      ["cRBTID", [nil, XSD::QName.new(NsV100R003C03SPC100, "CRBTID")]],
      ["oDBBICTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBICTYPE")]],
      ["oDBBOCTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBOCTYPE")]],
      ["oDBBARTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBARTYPE")]],
      ["oDBSS", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBSS")]],
      ["oDBBRCFTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBRCFTYPE")]],
      ["oDBINFORM", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBINFORM")]],
      ["oDBENTAIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBENTAIN")]],
      ["oDBPLMNBAR1", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR1")]],
      ["oDBPLMNBAR2", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR2")]],
      ["oDBPLMNBAR3", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR3")]],
      ["oDBPLMNBAR4", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR4")]],
      ["pNOTI", [nil, XSD::QName.new(NsV100R003C03SPC100, "PNOTI")]],
      ["mAXPARACALL", [nil, XSD::QName.new(NsV100R003C03SPC100, "MAXPARACALL")]],
      ["aTSDTMBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "ATSDTMBUSY")]],
      ["cALLCOUNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLCOUNT")]],
      ["cDNOTICALLER", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDNOTICALLER")]],
      ["iSCHGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "ISCHGFLAG")]],
      ["cHC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHC")]],
      ["cUSER", [nil, XSD::QName.new(NsV100R003C03SPC100, "CUSER")]],
      ["cGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CGRP")]],
      ["cUSERGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CUSERGRP")]],
      ["sTCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "STCF")]],
      ["cHARSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHARSC")]],
      ["rEGUIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGUIDX")]],
      ["sOCBFUNC", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCBFUNC")]],
      ["sOCBPTONEIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCBPTONEIDX")]],
      ["aDMINCBA", [nil, XSD::QName.new(NsV100R003C03SPC100, "ADMINCBA")]],
      ["aDCONTROL_DIVERSION", [nil, XSD::QName.new(NsV100R003C03SPC100, "ADCONTROL_DIVERSION")]],
      ["dPR", [nil, XSD::QName.new(NsV100R003C03SPC100, "DPR")]],
      ["pRON", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRON")]],
      ["cPCRUS", [nil, XSD::QName.new(NsV100R003C03SPC100, "CPCRUS")]],
      ["cUSCAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CUSCAT")]],
      ["sPT100REL", [nil, XSD::QName.new(NsV100R003C03SPC100, "SPT100REL")]],
      ["aNALYSISMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ANALYSISMODE")]],
      ["gRPIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPIDX")]],
      ["sCADDRIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SCADDRIDX")]],
      ["cDNOCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDNOCB")]],
      ["pBTSBR", ["LST_SBRStruct1::PBTSBR", XSD::QName.new(NsV100R003C03SPC100, "PBTSBR")]],
      ["kVALUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "KVALUE")]],
      ["iNPFIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "INPFIDX")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SBRStruct1::PBTSBR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "PBTSBR"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["pBXID", [nil, XSD::QName.new(NsV100R003C03SPC100, "PBXID")]],
      ["iSPILOT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ISPILOT")]],
      ["iSSHARESRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "ISSHARESRV")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SSType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_SSType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_SSTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SSTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_SSTables"),
    :schema_element => [
      ["table1", ["LST_SSTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SSTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_SSTable1"),
    :schema_element => [
      ["item", ["LST_SSStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SSStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_SSStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nSCFU", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFU")]],
      ["nSCFUVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFUVM")]],
      ["nSCFB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFB")]],
      ["nSCFBVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFBVM")]],
      ["nSCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNR")]],
      ["nSCFNRVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRVM")]],
      ["nSCFNL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNL")]],
      ["nSCFNLVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNLVM")]],
      ["nSCD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCD")]],
      ["nSCDVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCDVM")]],
      ["nSCFNRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRC")]],
      ["nSCFNRCVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRCVM")]],
      ["nSCIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIDCW")]],
      ["nSRIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIP")]],
      ["nSRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRID")]],
      ["nSNRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRID")]],
      ["nSRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRND")]],
      ["nSNRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRND")]],
      ["nSOIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOIP")]],
      ["nSGOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGOIR")]],
      ["nSMOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMOIR")]],
      ["nSTIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIP")]],
      ["nSTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIR")]],
      ["nSOTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOTIR")]],
      ["nSCLIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIP")]],
      ["nSCLIPNOSCREENING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIPNOSCREENING")]],
      ["nSRIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIO")]],
      ["nSCNIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIP")]],
      ["nSCLIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIR")]],
      ["nSCNIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIR")]],
      ["nSCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCW")]],
      ["nSCCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCW")]],
      ["nSACRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACRM")]],
      ["nSCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCR")]],
      ["nSWAKE_UP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSWAKE_UP")]],
      ["nSAOC_D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_D")]],
      ["nSAOC_E", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_E")]],
      ["nSXEXH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEXH")]],
      ["nSXEGJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEGJ")]],
      ["nSCWCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCWCFNR")]],
      ["nSIIFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIIFC")]],
      ["nSDN_CALL_OUT_BAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_BAR")]],
      ["nSCCBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBS")]],
      ["nSCCNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNR")]],
      ["nSCCBSR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBSR")]],
      ["nSCCNRR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNRR")]],
      ["nS3PTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NS3PTY")]],
      ["nSNPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNPTY")]],
      ["nSDND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDND")]],
      ["nSMCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCR")]],
      ["nSCBA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBA")]],
      ["nSTMP_LIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTMP_LIN")]],
      ["nSCODEC_CNTRL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCODEC_CNTRL")]],
      ["nSMWI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMWI")]],
      ["nSDC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDC")]],
      ["nSHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOLD")]],
      ["nSECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSECT")]],
      ["nSCFTB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFTB")]],
      ["nSDAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDAN")]],
      ["nSSTOP_SECRET", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSTOP_SECRET")]],
      ["nSMCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCID")]],
      ["nSEBO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSEBO")]],
      ["nSICO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICO")]],
      ["nSOUTG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTG")]],
      ["nSINQYH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINQYH")]],
      ["nSUINFO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSUINFO")]],
      ["nSDN_CALL_OUT_ALLOW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_ALLOW")]],
      ["nSSIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSIC")]],
      ["nSSOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSOC")]],
      ["nSSETCFNRTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETCFNRTIME")]],
      ["nSCFS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFS")]],
      ["nSCFSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFSB")]],
      ["nSFAX", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFAX")]],
      ["nSABRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABRC")]],
      ["nSACRTOVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACRTOVM")]],
      ["nSPREPAID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPREPAID")]],
      ["nSCRBT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCRBT")]],
      ["nSICB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICB")]],
      ["nSMRINGING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMRINGING")]],
      ["nSCIS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIS")]],
      ["nSCBEG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBEG")]],
      ["nSCOLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLP")]],
      ["nSCOLR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLR")]],
      ["nSCOLPOVR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLPOVR")]],
      ["nSBAOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAOC")]],
      ["nSBOIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOIC")]],
      ["nSBOICEXHC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOICEXHC")]],
      ["nSBAIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAIC")]],
      ["nSBICROM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBICROM")]],
      ["nSSPEED_DIAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSPEED_DIAL")]],
      ["nSSD1D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD1D")]],
      ["nSSD2D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD2D")]],
      ["nSGRNCALL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGRNCALL")]],
      ["nSCPARK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCPARK")]],
      ["nSGAA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGAA")]],
      ["nSQSNS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQSNS")]],
      ["nSMSN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMSN")]],
      ["nSHOTLINE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOTLINE")]],
      ["nSAOC_S", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_S")]],
      ["nSNIGHTSRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNIGHTSRV")]],
      ["nSBACKNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBACKNUM")]],
      ["nSAUTOCON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAUTOCON")]],
      ["nSCAMPON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCAMPON")]],
      ["nSCTD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTD")]],
      ["nSCLICKHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLICKHOLD")]],
      ["nSQUEUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQUEUE")]],
      ["nSSANSWER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSANSWER")]],
      ["nSICENCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICENCF")]],
      ["nSCFGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFGO")]],
      ["nSCECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCECT")]],
      ["nSCTGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTGO")]],
      ["nSCTIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTIO")]],
      ["nSSETBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETBUSY")]],
      ["nSOVERSTEP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOVERSTEP")]],
      ["nSABSENT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABSENT")]],
      ["nSMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMONITOR")]],
      ["nSFMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFMONITOR")]],
      ["nSDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDISCNT")]],
      ["nSFDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFDISCNT")]],
      ["nSINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINSERT")]],
      ["nSFINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFINSERT")]],
      ["nSASI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSASI")]],
      ["nSPWCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPWCB")]],
      ["nSRD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRD")]],
      ["nSLCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSLCPS")]],
      ["nSNCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNCPS")]],
      ["nSICPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICPS")]],
      ["nSHCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHCPS")]],
      ["nSCBCLOCK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBCLOCK")]],
      ["nSMINIBAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMINIBAR")]],
      ["nSMCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCN")]],
      ["nSDSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDSTR")]],
      ["nSOPRREG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOPRREG")]],
      ["nSONEKEY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSONEKEY")]],
      ["nSINBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINBOUND")]],
      ["nSOUTBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTBOUND")]],
      ["nSCALLERID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCALLERID")]],
      ["nSCUN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCUN")]],
      ["nSIPTVVC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIPTVVC")]],
      ["nSNP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNP")]],
      ["nSSEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSEC")]],
      ["nSSECSTA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSECSTA")]],
      ["nSHRCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHRCN")]],
      ["nSSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSB")]],
      ["nSSCCA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSCCA")]],
      ["nSCCS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCS")]],
      ["nSOCCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOCCR")]],
      ["nSIMSMS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIMSMS")]]
    ]
  )

  EncodedRegistry.register(
    :class => REG_COMSSType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "REG_COMSSType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["REG_COMSSTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => REG_COMSSTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "REG_COMSSTables"),
    :schema_element => [
      ["table1", ["REG_COMSSTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => REG_COMSSTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "REG_COMSSTable1"),
    :schema_element => [
      ["item", ["REG_COMSSStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => REG_COMSSStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "REG_COMSSStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cFUVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFUVM")], [0, 1]],
      ["cFBVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFBVM")], [0, 1]],
      ["cFNRVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFNRVM")], [0, 1]],
      ["cFNLVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFNLVM")], [0, 1]],
      ["cFNRCVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFNRCVM")], [0, 1]],
      ["cD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CD")], [0, 1]],
      ["cDVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDVM")], [0, 1]],
      ["cIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "CIDCW")], [0, 1]],
      ["rIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "RIP")], [0, 1]],
      ["rID", [nil, XSD::QName.new(NsV100R003C03SPC100, "RID")], [0, 1]],
      ["nRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRID")], [0, 1]],
      ["rND", [nil, XSD::QName.new(NsV100R003C03SPC100, "RND")], [0, 1]],
      ["nRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRND")], [0, 1]],
      ["oIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "OIP")], [0, 1]],
      ["tIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIP")], [0, 1]],
      ["oTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "OTIR")], [0, 1]],
      ["cLIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLIP")], [0, 1]],
      ["rIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "RIO")], [0, 1]],
      ["cNIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CNIP")], [0, 1]],
      ["cLIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLIR")], [0, 1]],
      ["cNIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CNIR")], [0, 1]],
      ["cW", [nil, XSD::QName.new(NsV100R003C03SPC100, "CW")], [0, 1]],
      ["aCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACR")], [0, 1]],
      ["cR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CR")], [0, 1]],
      ["aOC_D", [nil, XSD::QName.new(NsV100R003C03SPC100, "AOC_D")], [0, 1]],
      ["aOC_E", [nil, XSD::QName.new(NsV100R003C03SPC100, "AOC_E")], [0, 1]],
      ["xEXH", [nil, XSD::QName.new(NsV100R003C03SPC100, "XEXH")], [0, 1]],
      ["xEGJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "XEGJ")], [0, 1]],
      ["iIFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "IIFC")], [0, 1]],
      ["cCBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCBS")], [0, 1]],
      ["cCNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCNR")], [0, 1]],
      ["cCBSR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCBSR")], [0, 1]],
      ["cCNRR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCNRR")], [0, 1]],
      ["tPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "TPTY")], [0, 1]],
      ["nPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NPTY")], [0, 1]],
      ["mCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCR")], [0, 1]],
      ["mWI", [nil, XSD::QName.new(NsV100R003C03SPC100, "MWI")], [0, 1]],
      ["dC", [nil, XSD::QName.new(NsV100R003C03SPC100, "DC")], [0, 1]],
      ["hOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "HOLD")], [0, 1]],
      ["eCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ECT")], [0, 1]],
      ["dAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "DAN")], [0, 1]],
      ["sTOP_SECRET", [nil, XSD::QName.new(NsV100R003C03SPC100, "STOP_SECRET")], [0, 1]],
      ["eBO", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBO")], [0, 1]],
      ["iCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICO")], [0, 1]],
      ["oUTG", [nil, XSD::QName.new(NsV100R003C03SPC100, "OUTG")], [0, 1]],
      ["iNQYH", [nil, XSD::QName.new(NsV100R003C03SPC100, "INQYH")], [0, 1]],
      ["sETCFNRTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "SETCFNRTIME")], [0, 1]],
      ["aCRTOVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACRTOVM")], [0, 1]],
      ["sETBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "SETBUSY")], [0, 1]],
      ["pWCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "PWCB")], [0, 1]],
      ["aOC_S", [nil, XSD::QName.new(NsV100R003C03SPC100, "AOC_S")], [0, 1]],
      ["mCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCID")], [0, 1]],
      ["cLIPNOSCREENING", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLIPNOSCREENING")], [0, 1]],
      ["cOLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "COLP")], [0, 1]],
      ["cOLPOVR", [nil, XSD::QName.new(NsV100R003C03SPC100, "COLPOVR")], [0, 1]],
      ["oPRREG", [nil, XSD::QName.new(NsV100R003C03SPC100, "OPRREG")], [0, 1]],
      ["sECSTA", [nil, XSD::QName.new(NsV100R003C03SPC100, "SECSTA")], [0, 1]],
      ["hRCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "HRCN")], [0, 1]],
      ["cCS", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCS")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_COMSSType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_COMSSType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_COMSSTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_COMSSTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_COMSSTables"),
    :schema_element => [
      ["table1", ["DSP_COMSSTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_COMSSTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_COMSSTable1"),
    :schema_element => [
      ["item", ["DSP_COMSSStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_COMSSStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_COMSSStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cFUVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFUVM")]],
      ["cFBVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFBVM")]],
      ["cFNRVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFNRVM")]],
      ["cFNLVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFNLVM")]],
      ["cFNRCVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFNRCVM")]],
      ["cD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CD")]],
      ["cDVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDVM")]],
      ["cIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "CIDCW")]],
      ["rIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "RIP")]],
      ["rID", [nil, XSD::QName.new(NsV100R003C03SPC100, "RID")]],
      ["nRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRID")]],
      ["rND", [nil, XSD::QName.new(NsV100R003C03SPC100, "RND")]],
      ["nRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRND")]],
      ["oIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "OIP")]],
      ["tIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIP")]],
      ["oTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "OTIR")]],
      ["cLIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLIP")]],
      ["rIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "RIO")]],
      ["cNIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CNIP")]],
      ["cLIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLIR")]],
      ["cNIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CNIR")]],
      ["cW", [nil, XSD::QName.new(NsV100R003C03SPC100, "CW")]],
      ["aCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACR")]],
      ["cR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CR")]],
      ["aOC_D", [nil, XSD::QName.new(NsV100R003C03SPC100, "AOC_D")]],
      ["aOC_E", [nil, XSD::QName.new(NsV100R003C03SPC100, "AOC_E")]],
      ["xEXH", [nil, XSD::QName.new(NsV100R003C03SPC100, "XEXH")]],
      ["xEGJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "XEGJ")]],
      ["iIFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "IIFC")]],
      ["cCBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCBS")]],
      ["cCNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCNR")]],
      ["cCBSR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCBSR")]],
      ["cCNRR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCNRR")]],
      ["tPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "TPTY")]],
      ["nPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NPTY")]],
      ["mCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCR")]],
      ["mWI", [nil, XSD::QName.new(NsV100R003C03SPC100, "MWI")]],
      ["dC", [nil, XSD::QName.new(NsV100R003C03SPC100, "DC")]],
      ["hOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "HOLD")]],
      ["eCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ECT")]],
      ["dAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "DAN")]],
      ["sTOP_SECRET", [nil, XSD::QName.new(NsV100R003C03SPC100, "STOP_SECRET")]],
      ["eBO", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBO")]],
      ["iCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICO")]],
      ["oUTG", [nil, XSD::QName.new(NsV100R003C03SPC100, "OUTG")]],
      ["iNQYH", [nil, XSD::QName.new(NsV100R003C03SPC100, "INQYH")]],
      ["sETCFNRTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "SETCFNRTIME")]],
      ["aCRTOVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACRTOVM")]],
      ["sETBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "SETBUSY")]],
      ["pWCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "PWCB")]],
      ["aOC_S", [nil, XSD::QName.new(NsV100R003C03SPC100, "AOC_S")]],
      ["mCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCID")]],
      ["cLIPNOSCREENING", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLIPNOSCREENING")]],
      ["cOLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "COLP")]],
      ["cOLPOVR", [nil, XSD::QName.new(NsV100R003C03SPC100, "COLPOVR")]],
      ["oPRREG", [nil, XSD::QName.new(NsV100R003C03SPC100, "OPRREG")]],
      ["sECSTA", [nil, XSD::QName.new(NsV100R003C03SPC100, "SECSTA")]],
      ["hRCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "HRCN")]],
      ["cCS", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCS")]],
      ["cRBT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CRBT")]]
    ]
  )

  EncodedRegistry.register(
    :class => QRY_SSType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "QRY_SSType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["QRY_SSTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => QRY_SSTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "QRY_SSTables"),
    :schema_element => [
      ["table1", ["QRY_SSTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => QRY_SSTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "QRY_SSTable1"),
    :schema_element => [
      ["item", ["QRY_SSStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => QRY_SSStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "QRY_SSStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "SIC")]],
      ["dSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "DSTR")]],
      ["sB", [nil, XSD::QName.new(NsV100R003C03SPC100, "SB")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFUType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFUType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CFUTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFUTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFUTables"),
    :schema_element => [
      ["table1", ["DSP_CFUTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFUTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFUTable1"),
    :schema_element => [
      ["item", ["DSP_CFUStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFUStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFUStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSV", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSV")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")]],
      ["dIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DIMPU")]],
      ["sUBINF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBINF")]],
      ["nOTIFYCALLER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOTIFYCALLER")]],
      ["pRVTOCER", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRVTOCER")]],
      ["pRVTODES", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRVTODES")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CLIRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CLIRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CLIRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CLIRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CLIRTables"),
    :schema_element => [
      ["table1", ["DSP_CLIRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CLIRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CLIRTable1"),
    :schema_element => [
      ["item", ["DSP_CLIRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CLIRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CLIRStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["gMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "GMODE")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_COLRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_COLRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_COLRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_COLRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_COLRTables"),
    :schema_element => [
      ["table1", ["DSP_COLRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_COLRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_COLRTable1"),
    :schema_element => [
      ["item", ["DSP_COLRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_COLRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_COLRStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["tMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "TMODE")]],
      ["sTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "STYPE")]],
      ["sHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SHOUR")]],
      ["sMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMINUTE")]],
      ["eHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EHOUR")]],
      ["eMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMINUTE")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_WAKE_UPType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_WAKE_UPType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_WAKE_UPTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_WAKE_UPTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_WAKE_UPTables"),
    :schema_element => [
      ["table1", ["DSP_WAKE_UPTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_WAKE_UPTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_WAKE_UPTable1"),
    :schema_element => [
      ["item", ["DSP_WAKE_UPStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_WAKE_UPStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_WAKE_UPStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["wCH", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCH")]],
      ["wCM", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCM")]],
      ["wCLAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCLAN")]],
      ["wCMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCMODE")]],
      ["wCWP", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCWP")]],
      ["wCWTN", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCWTN")]],
      ["wCDTN", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCDTN")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFTBType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFTBType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CFTBTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFTBTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFTBTables"),
    :schema_element => [
      ["table1", ["DSP_CFTBTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFTBTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFTBTable1"),
    :schema_element => [
      ["item", ["DSP_CFTBStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFTBStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFTBStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cFTBSV", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFTBSV")]],
      ["sVT", [nil, XSD::QName.new(NsV100R003C03SPC100, "SVT")]],
      ["cTIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTIMPU")]],
      ["cTSBIF", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTSBIF")]],
      ["pT", [nil, XSD::QName.new(NsV100R003C03SPC100, "PT")]],
      ["rIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "RIDX")]],
      ["sYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SYEAR")]],
      ["sMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMONTH")]],
      ["sDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SDATE")]],
      ["sHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SHOUR")]],
      ["sMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMINUTE")]],
      ["eYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EYEAR")]],
      ["eMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMONTH")]],
      ["eDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EDATE")]],
      ["eHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EHOUR")]],
      ["eMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMINUTE")]],
      ["dINW", [nil, XSD::QName.new(NsV100R003C03SPC100, "DINW")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_UINFOType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_UINFOType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_UINFOTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_UINFOTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_UINFOTables"),
    :schema_element => [
      ["table1", ["DSP_UINFOTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_UINFOTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_UINFOTable1"),
    :schema_element => [
      ["item", ["DSP_UINFOStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_UINFOStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_UINFOStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["iMG", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMG")]],
      ["pCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "PCI")]],
      ["wINFO", [nil, XSD::QName.new(NsV100R003C03SPC100, "WINFO")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SOCType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SOCType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_SOCTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SOCTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SOCTables"),
    :schema_element => [
      ["table1", ["DSP_SOCTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SOCTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SOCTable1"),
    :schema_element => [
      ["item", ["DSP_SOCStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SOCStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SOCStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sOCIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCIDX")]],
      ["sOIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOIMPU")]],
      ["sYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SYEAR")]],
      ["sMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMONTH")]],
      ["sDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SDATE")]],
      ["sHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SHOUR")]],
      ["sMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMINUTE")]],
      ["eYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EYEAR")]],
      ["eMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMONTH")]],
      ["eDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EDATE")]],
      ["eHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EHOUR")]],
      ["eMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMINUTE")]],
      ["sOCPER", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCPER")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_DN_CALL_OUT_ALLOWType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DN_CALL_OUT_ALLOWType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_DN_CALL_OUT_ALLOWTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_DN_CALL_OUT_ALLOWTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DN_CALL_OUT_ALLOWTables"),
    :schema_element => [
      ["table1", ["DSP_DN_CALL_OUT_ALLOWTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_DN_CALL_OUT_ALLOWTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DN_CALL_OUT_ALLOWTable1"),
    :schema_element => [
      ["item", ["DSP_DN_CALL_OUT_ALLOWStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_DN_CALL_OUT_ALLOWStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DN_CALL_OUT_ALLOWStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cOAD", [nil, XSD::QName.new(NsV100R003C03SPC100, "COAD")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_DNDType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DNDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_DNDTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_DNDTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DNDTables"),
    :schema_element => [
      ["table1", ["DSP_DNDTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_DNDTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DNDTable1"),
    :schema_element => [
      ["item", ["DSP_DNDStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_DNDStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DNDStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sG", [nil, XSD::QName.new(NsV100R003C03SPC100, "SG")]],
      ["sYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SYEAR")]],
      ["sMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMONTH")]],
      ["sDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SDATE")]],
      ["sHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SHOUR")]],
      ["sMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMINUTE")]],
      ["eYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EYEAR")]],
      ["eMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMONTH")]],
      ["eDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EDATE")]],
      ["eHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EHOUR")]],
      ["eMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMINUTE")]],
      ["eMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMODE")]],
      ["dNDWP", [nil, XSD::QName.new(NsV100R003C03SPC100, "DNDWP")]],
      ["sETMON", [nil, XSD::QName.new(NsV100R003C03SPC100, "SETMON")]],
      ["sETDAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "SETDAY")]],
      ["tREAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "TREAT")]],
      ["bTREAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "BTREAT")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CBAType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CBAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CBATables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CBATables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CBATables"),
    :schema_element => [
      ["table1", ["DSP_CBATable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CBATable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CBATable1"),
    :schema_element => [
      ["item", ["DSP_CBAStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CBAStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CBAStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cBABLV", [nil, XSD::QName.new(NsV100R003C03SPC100, "CBABLV")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_TMP_LINType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_TMP_LINType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_TMP_LINTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_TMP_LINTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_TMP_LINTables"),
    :schema_element => [
      ["table1", ["DSP_TMP_LINTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_TMP_LINTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_TMP_LINTable1"),
    :schema_element => [
      ["item", ["DSP_TMP_LINStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_TMP_LINStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_TMP_LINStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["yEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "YEAR")]],
      ["mONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "MONTH")]],
      ["dAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "DAY")]],
      ["tLDUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "TLDUR")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CODEC_CNTRLType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CODEC_CNTRLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CODEC_CNTRLTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CODEC_CNTRLTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CODEC_CNTRLTables"),
    :schema_element => [
      ["table1", ["DSP_CODEC_CNTRLTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CODEC_CNTRLTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CODEC_CNTRLTable1"),
    :schema_element => [
      ["item", ["DSP_CODEC_CNTRLStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CODEC_CNTRLStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CODEC_CNTRLStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["g711_64K_A_LAW", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711_64K_A_LAW")]],
      ["g711_64K_U_LAW", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711_64K_U_LAW")]],
      ["g723", [nil, XSD::QName.new(NsV100R003C03SPC100, "G723")]],
      ["g726", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726")]],
      ["g729", [nil, XSD::QName.new(NsV100R003C03SPC100, "G729")]],
      ["aMR", [nil, XSD::QName.new(NsV100R003C03SPC100, "AMR")]],
      ["eVRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "EVRC")]],
      ["eVRCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "EVRCB")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SICType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SICType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_SICTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SICTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SICTables"),
    :schema_element => [
      ["table1", ["DSP_SICTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SICTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SICTable1"),
    :schema_element => [
      ["item", ["DSP_SICStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SICStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SICStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sICIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SICIDX")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]],
      ["sIIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "SIIMPU")]],
      ["sYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SYEAR")]],
      ["sMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMONTH")]],
      ["sDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SDATE")]],
      ["sHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SHOUR")]],
      ["sMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMINUTE")]],
      ["eYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EYEAR")]],
      ["eMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMONTH")]],
      ["eDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EDATE")]],
      ["eHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EHOUR")]],
      ["eMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMINUTE")]],
      ["sICPER", [nil, XSD::QName.new(NsV100R003C03SPC100, "SICPER")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFSType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFSType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CFSTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFSTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFSTables"),
    :schema_element => [
      ["table1", ["DSP_CFSTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFSTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFSTable1"),
    :schema_element => [
      ["item", ["DSP_CFSStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFSStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFSStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["eP", [nil, XSD::QName.new(NsV100R003C03SPC100, "EP")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]],
      ["cSIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSIMPU")]],
      ["sHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SHOUR")]],
      ["sMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMINUTE")]],
      ["eHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EHOUR")]],
      ["eMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMINUTE")]],
      ["oFWEEK", [nil, XSD::QName.new(NsV100R003C03SPC100, "OFWEEK")]],
      ["fTIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "FTIMPU")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_DN_CALL_OUT_BARType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DN_CALL_OUT_BARType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_DN_CALL_OUT_BARTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_DN_CALL_OUT_BARTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DN_CALL_OUT_BARTables"),
    :schema_element => [
      ["table1", ["DSP_DN_CALL_OUT_BARTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_DN_CALL_OUT_BARTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DN_CALL_OUT_BARTable1"),
    :schema_element => [
      ["item", ["DSP_DN_CALL_OUT_BARStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_DN_CALL_OUT_BARStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DN_CALL_OUT_BARStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cOBPNO", [nil, XSD::QName.new(NsV100R003C03SPC100, "COBPNO")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFSBType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFSBType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CFSBTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFSBTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFSBTables"),
    :schema_element => [
      ["table1", ["DSP_CFSBTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFSBTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFSBTable1"),
    :schema_element => [
      ["item", ["DSP_CFSBStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFSBStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFSBStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cSBSVT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSBSVT")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFBType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFBType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CFBTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFBTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFBTables"),
    :schema_element => [
      ["table1", ["DSP_CFBTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFBTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFBTable1"),
    :schema_element => [
      ["item", ["DSP_CFBStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFBStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFBStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSV", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSV")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")]],
      ["dIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DIMPU")]],
      ["sUBINF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBINF")]],
      ["nOTIFYCALLER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOTIFYCALLER")]],
      ["nOTIFYFORWARDER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOTIFYFORWARDER")]],
      ["pRVTOCER", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRVTOCER")]],
      ["pRVTODES", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRVTODES")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFNRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CFNRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFNRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNRTables"),
    :schema_element => [
      ["table1", ["DSP_CFNRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFNRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNRTable1"),
    :schema_element => [
      ["item", ["DSP_CFNRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFNRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNRStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSV", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSV")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")]],
      ["dIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DIMPU")]],
      ["sUBINF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBINF")]],
      ["nOTIFYCALLER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOTIFYCALLER")]],
      ["nOTIFYFORWARDER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOTIFYFORWARDER")]],
      ["pRVTOCER", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRVTOCER")]],
      ["pRVTODES", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRVTODES")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFNLType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CFNLTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFNLTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNLTables"),
    :schema_element => [
      ["table1", ["DSP_CFNLTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFNLTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNLTable1"),
    :schema_element => [
      ["item", ["DSP_CFNLStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFNLStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNLStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSV", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSV")]],
      ["dIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DIMPU")]],
      ["sUBINF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBINF")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFNRCType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNRCType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CFNRCTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFNRCTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNRCTables"),
    :schema_element => [
      ["table1", ["DSP_CFNRCTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFNRCTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNRCTable1"),
    :schema_element => [
      ["item", ["DSP_CFNRCStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CFNRCStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNRCStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSV", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSV")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")]],
      ["dIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DIMPU")]],
      ["sUBINF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBINF")]],
      ["nOTIFYCALLER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOTIFYCALLER")]],
      ["nOTIFYFORWARDER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOTIFYFORWARDER")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CWCFNRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CWCFNRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CWCFNRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CWCFNRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CWCFNRTables"),
    :schema_element => [
      ["table1", ["DSP_CWCFNRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CWCFNRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CWCFNRTable1"),
    :schema_element => [
      ["item", ["DSP_CWCFNRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CWCFNRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CWCFNRStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSV", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSV")]],
      ["dIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DIMPU")]],
      ["sUBINF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBINF")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_MRINGMODEType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_MRINGMODEType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_MRINGMODETables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_MRINGMODETables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_MRINGMODETables"),
    :schema_element => [
      ["table1", ["DSP_MRINGMODETable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_MRINGMODETable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_MRINGMODETable1"),
    :schema_element => [
      ["item", ["DSP_MRINGMODEStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_MRINGMODEStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_MRINGMODEStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["mRINGMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MRINGMODE")]],
      ["rELBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "RELBUSY")]],
      ["rELREJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "RELREJ")]],
      ["rINGTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "RINGTIME")]],
      ["cFMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFMODE")]],
      ["iMPU1", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU1")]],
      ["iMPU2", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU2")]],
      ["iMPU3", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU3")]],
      ["iMPU4", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU4")]],
      ["iMPU5", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU5")]],
      ["iMPU6", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU6")]],
      ["iMPU7", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU7")]],
      ["iMPU8", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU8")]],
      ["iMPU9", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU9")]],
      ["iMPU10", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU10")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CISType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CISType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CISTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CISTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CISTables"),
    :schema_element => [
      ["table1", ["DSP_CISTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CISTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CISTable1"),
    :schema_element => [
      ["item", ["DSP_CISStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CISStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CISStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["dUALRING", [nil, XSD::QName.new(NsV100R003C03SPC100, "DUALRING")]],
      ["iMPUPC", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPUPC")]],
      ["rELBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "RELBUSY")]],
      ["rELREJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "RELREJ")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CFDATAType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CFDATAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CFDATATables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CFDATATables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CFDATATables"),
    :schema_element => [
      ["table1", ["LST_CFDATATable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CFDATATable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CFDATATable1"),
    :schema_element => [
      ["item", ["LST_CFDATAStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CFDATAStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CFDATAStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cFR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFR")]],
      ["dIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DIMPU")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NUMCHGType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_NUMCHGType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_NUMCHGTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NUMCHGTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_NUMCHGTables"),
    :schema_element => [
      ["table1", ["LST_NUMCHGTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NUMCHGTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_NUMCHGTable1"),
    :schema_element => [
      ["item", ["LST_NUMCHGStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NUMCHGStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_NUMCHGStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "NIMPU")]],
      ["cMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CMODE")]],
      ["sMFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMFLAG")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_BLKNUMType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_BLKNUMType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_BLKNUMTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_BLKNUMTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_BLKNUMTables"),
    :schema_element => [
      ["table1", ["LST_BLKNUMTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_BLKNUMTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_BLKNUMTable1"),
    :schema_element => [
      ["item", ["LST_BLKNUMStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_BLKNUMStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_BLKNUMStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "BIMPU")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_WTNUMType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WTNUMType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_WTNUMTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_WTNUMTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WTNUMTables"),
    :schema_element => [
      ["table1", ["LST_WTNUMTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_WTNUMTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WTNUMTable1"),
    :schema_element => [
      ["item", ["LST_WTNUMStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_WTNUMStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WTNUMStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["wTIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "WTIMPU")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_OWSBRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_OWSBRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_OWSBRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_OWSBRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_OWSBRTables"),
    :schema_element => [
      ["table1", ["LST_OWSBRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_OWSBRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_OWSBRTable1"),
    :schema_element => [
      ["item", ["LST_OWSBRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_OWSBRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_OWSBRStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["uS", [nil, XSD::QName.new(NsV100R003C03SPC100, "US")]],
      ["lTOS", [nil, XSD::QName.new(NsV100R003C03SPC100, "LTOS")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_STRATEGYType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_STRATEGYType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_STRATEGYTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_STRATEGYTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_STRATEGYTables"),
    :schema_element => [
      ["table1", ["LST_STRATEGYTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_STRATEGYTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_STRATEGYTable1"),
    :schema_element => [
      ["item", ["LST_STRATEGYStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_STRATEGYStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_STRATEGYStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["gREENSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "GREENSTR")]],
      ["rEDSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "REDSTR")]],
      ["oTHSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "OTHSTR")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_GREENNUMType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_GREENNUMType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_GREENNUMTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_GREENNUMTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_GREENNUMTables"),
    :schema_element => [
      ["table1", ["LST_GREENNUMTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_GREENNUMTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_GREENNUMTable1"),
    :schema_element => [
      ["item", ["LST_GREENNUMStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_GREENNUMStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_GREENNUMStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["gIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "GIMPU")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_REDNUMType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_REDNUMType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_REDNUMTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_REDNUMTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_REDNUMTables"),
    :schema_element => [
      ["table1", ["LST_REDNUMTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_REDNUMTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_REDNUMTable1"),
    :schema_element => [
      ["item", ["LST_REDNUMStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_REDNUMStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_REDNUMStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["rIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "RIMPU")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_BAOCType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BAOCType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_BAOCTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_BAOCTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BAOCTables"),
    :schema_element => [
      ["table1", ["DSP_BAOCTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_BAOCTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BAOCTable1"),
    :schema_element => [
      ["item", ["DSP_BAOCStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_BAOCStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BAOCStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_BOICType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BOICType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_BOICTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_BOICTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BOICTables"),
    :schema_element => [
      ["table1", ["DSP_BOICTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_BOICTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BOICTable1"),
    :schema_element => [
      ["item", ["DSP_BOICStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_BOICStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BOICStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_BOICEXHCType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BOICEXHCType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_BOICEXHCTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_BOICEXHCTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BOICEXHCTables"),
    :schema_element => [
      ["table1", ["DSP_BOICEXHCTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_BOICEXHCTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BOICEXHCTable1"),
    :schema_element => [
      ["item", ["DSP_BOICEXHCStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_BOICEXHCStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BOICEXHCStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_BAICType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BAICType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_BAICTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_BAICTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BAICTables"),
    :schema_element => [
      ["table1", ["DSP_BAICTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_BAICTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BAICTable1"),
    :schema_element => [
      ["item", ["DSP_BAICStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_BAICStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BAICStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_BICROMType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BICROMType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_BICROMTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_BICROMTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BICROMTables"),
    :schema_element => [
      ["table1", ["DSP_BICROMTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_BICROMTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BICROMTable1"),
    :schema_element => [
      ["item", ["DSP_BICROMStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_BICROMStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BICROMStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SPEED_DIALType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SPEED_DIALType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_SPEED_DIALTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SPEED_DIALTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SPEED_DIALTables"),
    :schema_element => [
      ["table1", ["DSP_SPEED_DIALTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SPEED_DIALTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SPEED_DIALTable1"),
    :schema_element => [
      ["item", ["DSP_SPEED_DIALStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SPEED_DIALStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SPEED_DIALStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["aBBRNUMBER", [nil, XSD::QName.new(NsV100R003C03SPC100, "ABBRNUMBER")], [0, 1]],
      ["dESTIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DESTIMPU")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_GRNCALLType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_GRNCALLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_GRNCALLTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_GRNCALLTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_GRNCALLTables"),
    :schema_element => [
      ["table1", ["DSP_GRNCALLTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_GRNCALLTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_GRNCALLTable1"),
    :schema_element => [
      ["item", ["DSP_GRNCALLStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_GRNCALLStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_GRNCALLStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "BIMPU")]],
      ["bMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "BMODE")]],
      ["tHRPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "THRPTY")]],
      ["tHRPTYTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "THRPTYTIME")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_AUTOCONType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_AUTOCONType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_AUTOCONTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_AUTOCONTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_AUTOCONTables"),
    :schema_element => [
      ["table1", ["DSP_AUTOCONTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_AUTOCONTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_AUTOCONTable1"),
    :schema_element => [
      ["item", ["DSP_AUTOCONStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_AUTOCONStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_AUTOCONStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sRVIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "SRVIMPU")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_NIGHTSRVType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_NIGHTSRVType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_NIGHTSRVTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_NIGHTSRVTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_NIGHTSRVTables"),
    :schema_element => [
      ["table1", ["DSP_NIGHTSRVTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_NIGHTSRVTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_NIGHTSRVTable1"),
    :schema_element => [
      ["item", ["DSP_NIGHTSRVStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_NIGHTSRVStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_NIGHTSRVStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sRVIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "SRVIMPU")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_BACKNUMType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BACKNUMType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_BACKNUMTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_BACKNUMTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BACKNUMTables"),
    :schema_element => [
      ["table1", ["DSP_BACKNUMTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_BACKNUMTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BACKNUMTable1"),
    :schema_element => [
      ["item", ["DSP_BACKNUMStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_BACKNUMStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BACKNUMStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sRVIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "SRVIMPU")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_ABSENTType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ABSENTType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_ABSENTTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_ABSENTTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ABSENTTables"),
    :schema_element => [
      ["table1", ["DSP_ABSENTTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_ABSENTTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ABSENTTable1"),
    :schema_element => [
      ["item", ["DSP_ABSENTStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_ABSENTStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ABSENTStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["vOICE", [nil, XSD::QName.new(NsV100R003C03SPC100, "VOICE")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_ASIType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ASIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_ASITables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_ASITables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ASITables"),
    :schema_element => [
      ["table1", ["DSP_ASITable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_ASITable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ASITable1"),
    :schema_element => [
      ["item", ["DSP_ASIStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_ASIStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ASIStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sTATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "STATE")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_HOTLINEType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_HOTLINEType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_HOTLINETables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_HOTLINETables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_HOTLINETables"),
    :schema_element => [
      ["table1", ["DSP_HOTLINETable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_HOTLINETable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_HOTLINETable1"),
    :schema_element => [
      ["item", ["DSP_HOTLINEStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_HOTLINEStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_HOTLINEStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["hLITYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "HLITYPE")]],
      ["hLIIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "HLIIMPU")]],
      ["hLIDELAYTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "HLIDELAYTIME")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CETMCIDType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CETMCIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CETMCIDTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CETMCIDTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CETMCIDTables"),
    :schema_element => [
      ["table1", ["DSP_CETMCIDTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CETMCIDTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CETMCIDTable1"),
    :schema_element => [
      ["item", ["DSP_CETMCIDStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CETMCIDStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CETMCIDStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["pHASE", [nil, XSD::QName.new(NsV100R003C03SPC100, "PHASE")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_MCNType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_MCNType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_MCNTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_MCNTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_MCNTables"),
    :schema_element => [
      ["table1", ["DSP_MCNTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_MCNTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_MCNTable1"),
    :schema_element => [
      ["item", ["DSP_MCNStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_MCNStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_MCNStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "BIMPU")]],
      ["bNTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "BNTY")]],
      ["nANTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NANTY")]],
      ["nRCNTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRCNTY")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SUBSType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_SUBSType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_SUBSTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SUBSTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_SUBSTables"),
    :schema_element => [
      ["table1", ["LST_SUBSTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SUBSTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_SUBSTable1"),
    :schema_element => [
      ["item", ["LST_SUBSStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SUBSStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_SUBSStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sUBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBS")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_ONEKEYType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ONEKEYType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_ONEKEYTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_ONEKEYTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ONEKEYTables"),
    :schema_element => [
      ["table1", ["DSP_ONEKEYTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_ONEKEYTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ONEKEYTable1"),
    :schema_element => [
      ["item", ["DSP_ONEKEYStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_ONEKEYStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ONEKEYStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["dUALRING", [nil, XSD::QName.new(NsV100R003C03SPC100, "DUALRING")]],
      ["iMPUPC", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPUPC")]],
      ["rELBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "RELBUSY")]],
      ["rELREJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "RELREJ")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_IBDSType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_IBDSType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_IBDSTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_IBDSTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_IBDSTables"),
    :schema_element => [
      ["table1", ["DSP_IBDSTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_IBDSTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_IBDSTable1"),
    :schema_element => [
      ["item", ["DSP_IBDSStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_IBDSStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_IBDSStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["vIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU")]],
      ["sUBNETID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID")]]
    ]
  )

  EncodedRegistry.register(
    :class => QRY_IBDSType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "QRY_IBDSType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["QRY_IBDSTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => QRY_IBDSTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "QRY_IBDSTables"),
    :schema_element => [
      ["table1", ["QRY_IBDSTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => QRY_IBDSTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "QRY_IBDSTable1"),
    :schema_element => [
      ["item", ["QRY_IBDSStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => QRY_IBDSStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "QRY_IBDSStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["vIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU")]],
      ["sUBNETID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_OBDSType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_OBDSType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_OBDSTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_OBDSTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_OBDSTables"),
    :schema_element => [
      ["table1", ["DSP_OBDSTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_OBDSTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_OBDSTable1"),
    :schema_element => [
      ["item", ["DSP_OBDSStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_OBDSStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_OBDSStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["vIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU")]],
      ["sUBNETID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NPASType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_NPASType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_NPASTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NPASTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_NPASTables"),
    :schema_element => [
      ["table1", ["LST_NPASTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NPASTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_NPASTable1"),
    :schema_element => [
      ["item", ["LST_NPASStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NPASStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_NPASStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nTN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTN")]],
      ["nSIPN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIPN")]],
      ["pYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "PYEAR")]],
      ["pMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "PMONTH")]],
      ["pDAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "PDAY")]],
      ["pHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "PHOUR")]],
      ["pMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "PMINUTE")]],
      ["aYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "AYEAR")]],
      ["aMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "AMONTH")]],
      ["aDAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "ADAY")]],
      ["aHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "AHOUR")]],
      ["aMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "AMINUTE")]],
      ["eYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EYEAR")]],
      ["eMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMONTH")]],
      ["eDAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "EDAY")]],
      ["pAMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "PAMODE")]],
      ["aAMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "AAMODE")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_GOIRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_GOIRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_GOIRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_GOIRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_GOIRTables"),
    :schema_element => [
      ["table1", ["DSP_GOIRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_GOIRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_GOIRTable1"),
    :schema_element => [
      ["item", ["DSP_GOIRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_GOIRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_GOIRStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["gMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "GMODE")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_MOIRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_MOIRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_MOIRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_MOIRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_MOIRTables"),
    :schema_element => [
      ["table1", ["DSP_MOIRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_MOIRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_MOIRTable1"),
    :schema_element => [
      ["item", ["DSP_MOIRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_MOIRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_MOIRStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["mMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MMODE")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_TIRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_TIRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_TIRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_TIRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_TIRTables"),
    :schema_element => [
      ["table1", ["DSP_TIRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_TIRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_TIRTable1"),
    :schema_element => [
      ["item", ["DSP_TIRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_TIRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_TIRStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["tMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "TMODE")]],
      ["sTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "STYPE")]],
      ["sHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SHOUR")]],
      ["sMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMINUTE")]],
      ["eHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EHOUR")]],
      ["eMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMINUTE")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_DSTRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DSTRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_DSTRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_DSTRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DSTRTables"),
    :schema_element => [
      ["table1", ["DSP_DSTRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_DSTRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DSTRTable1"),
    :schema_element => [
      ["item", ["DSP_DSTRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_DSTRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DSTRStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["pATTERN", [nil, XSD::QName.new(NsV100R003C03SPC100, "PATTERN")], [0, 1]],
      ["cWPATTERN", [nil, XSD::QName.new(NsV100R003C03SPC100, "CWPATTERN")], [0, 1]],
      ["sIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "SIMPU")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_VIMPUType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_VIMPUType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_VIMPUTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_VIMPUTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_VIMPUTables"),
    :schema_element => [
      ["table1", ["LST_VIMPUTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_VIMPUTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_VIMPUTable1"),
    :schema_element => [
      ["item", ["LST_VIMPUStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_VIMPUStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_VIMPUStruct1"),
    :schema_element => [
      ["vIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU")], [0, 1]],
      ["sUBNETID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID")], [0, 1]],
      ["oCPFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "OCPFLAG")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_IBDVIMPUType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_IBDVIMPUType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_IBDVIMPUTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_IBDVIMPUTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_IBDVIMPUTables"),
    :schema_element => [
      ["table1", ["LST_IBDVIMPUTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_IBDVIMPUTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_IBDVIMPUTable1"),
    :schema_element => [
      ["item", ["LST_IBDVIMPUStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_IBDVIMPUStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_IBDVIMPUStruct1"),
    :schema_element => [
      ["sUBNETID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID")]],
      ["vIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PRKSBRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PRKSBRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_PRKSBRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PRKSBRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PRKSBRTables"),
    :schema_element => [
      ["table1", ["LST_PRKSBRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PRKSBRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PRKSBRTable1"),
    :schema_element => [
      ["item", ["LST_PRKSBRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PRKSBRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PRKSBRStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "STYPE")]],
      ["tREAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "TREAT")]],
      ["rNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "RNUM")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NUMINVAType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_NUMINVAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_NUMINVATables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NUMINVATables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_NUMINVATables"),
    :schema_element => [
      ["table1", ["LST_NUMINVATable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NUMINVATable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_NUMINVATable1"),
    :schema_element => [
      ["item", ["LST_NUMINVAStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NUMINVAStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_NUMINVAStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["dURATION", [nil, XSD::QName.new(NsV100R003C03SPC100, "DURATION")]],
      ["tN", [nil, XSD::QName.new(NsV100R003C03SPC100, "TN")]],
      ["yEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "YEAR")]],
      ["mONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "MONTH")]],
      ["dAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "DAY")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_IBDSUBNUMType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_IBDSUBNUMType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_IBDSUBNUMTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_IBDSUBNUMTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_IBDSUBNUMTables"),
    :schema_element => [
      ["table1", ["LST_IBDSUBNUMTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_IBDSUBNUMTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_IBDSUBNUMTable1"),
    :schema_element => [
      ["item", ["LST_IBDSUBNUMStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_IBDSUBNUMStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_IBDSUBNUMStruct1"),
    :schema_element => [
      ["hOMENUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "HOMENUM")]],
      ["sUBID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CALLERIDType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CALLERIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CALLERIDTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CALLERIDTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CALLERIDTables"),
    :schema_element => [
      ["table1", ["DSP_CALLERIDTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CALLERIDTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CALLERIDTable1"),
    :schema_element => [
      ["item", ["DSP_CALLERIDStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CALLERIDStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CALLERIDStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "BIMPU")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_IPTVVCType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_IPTVVCType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_IPTVVCTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_IPTVVCTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_IPTVVCTables"),
    :schema_element => [
      ["table1", ["DSP_IPTVVCTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_IPTVVCTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_IPTVVCTable1"),
    :schema_element => [
      ["item", ["DSP_IPTVVCStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_IPTVVCStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_IPTVVCStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sTBIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "STBIMPU")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_NPType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_NPType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_NPTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_NPTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_NPTables"),
    :schema_element => [
      ["table1", ["DSP_NPTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_NPTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_NPTable1"),
    :schema_element => [
      ["item", ["DSP_NPStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_NPStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_NPStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["pIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "PIMPU")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SECType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SECType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_SECTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SECTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SECTables"),
    :schema_element => [
      ["table1", ["DSP_SECTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SECTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SECTable1"),
    :schema_element => [
      ["item", ["DSP_SECStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SECStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SECStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sECIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "SECIMPU")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SBType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SBType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_SBTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SBTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SBTables"),
    :schema_element => [
      ["table1", ["DSP_SBTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SBTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SBTable1"),
    :schema_element => [
      ["item", ["DSP_SBStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SBStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SBStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["pRIONUM", ["[]", XSD::QName.new(NsV100R003C03SPC100, "PRIONUM")], [1, 25]],
      ["sTARTTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "STARTTIME")]],
      ["sTOPTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "STOPTIME")]],
      ["rECURRENCE", [nil, XSD::QName.new(NsV100R003C03SPC100, "RECURRENCE")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_FILCRITType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_FILCRITType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_FILCRITTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_FILCRITTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_FILCRITTables"),
    :schema_element => [
      ["table1", ["LST_FILCRITTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_FILCRITTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_FILCRITTable1"),
    :schema_element => [
      ["item", ["LST_FILCRITStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_FILCRITStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_FILCRITStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "NAME")], [0, 1]],
      ["cOMBIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "COMBIN")]],
      ["cALLERINFO", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLERINFO")]],
      ["pRESTATUS", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRESTATUS")]],
      ["hOLDGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "HOLDGRP")]],
      ["dATEMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "DATEMODE")]],
      ["mONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "MONTH")]],
      ["oRDER", [nil, XSD::QName.new(NsV100R003C03SPC100, "ORDER")]],
      ["dAYOFWEEK", [nil, XSD::QName.new(NsV100R003C03SPC100, "DAYOFWEEK")]],
      ["sTARTDAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "STARTDAY")]],
      ["eNDDAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "ENDDAY")]],
      ["sTARTDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "STARTDATE")]],
      ["eNDDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ENDDATE")]],
      ["sTARTTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "STARTTIME")]],
      ["eNDTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "ENDTIME")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CALLERINFOType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CALLERINFOType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CALLERINFOTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CALLERINFOTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CALLERINFOTables"),
    :schema_element => [
      ["table1", ["LST_CALLERINFOTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CALLERINFOTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CALLERINFOTable1"),
    :schema_element => [
      ["item", ["LST_CALLERINFOStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CALLERINFOStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CALLERINFOStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cALLERNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLERNUM")], [0, 1]],
      ["cALLERTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLERTYPE")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PRESSTUSType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PRESSTUSType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_PRESSTUSTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PRESSTUSTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PRESSTUSTables"),
    :schema_element => [
      ["table1", ["LST_PRESSTUSTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PRESSTUSTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PRESSTUSTable1"),
    :schema_element => [
      ["item", ["LST_PRESSTUSStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PRESSTUSStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PRESSTUSStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["pRESSTUS", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRESSTUS")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ONENUMType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ONENUMType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_ONENUMTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ONENUMTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ONENUMTables"),
    :schema_element => [
      ["table1", ["LST_ONENUMTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ONENUMTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ONENUMTable1"),
    :schema_element => [
      ["item", ["LST_ONENUMStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ONENUMStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ONENUMStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["iDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "IDX")], [0, 1]],
      ["pRIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRIO")], [0, 1]],
      ["sRVTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SRVTYPE")]],
      ["nUMTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NUMTYPE")]],
      ["rELNUMLST", ["[]", XSD::QName.new(NsV100R003C03SPC100, "RELNUMLST")], [1, 3]],
      ["pROMODE302", [nil, XSD::QName.new(NsV100R003C03SPC100, "PROMODE302")]],
      ["rINGTONE", [nil, XSD::QName.new(NsV100R003C03SPC100, "RINGTONE")]],
      ["cWRTONE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CWRTONE")]],
      ["rTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTYPE")]],
      ["cFMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFMODE")]],
      ["fLTCOMB", [nil, XSD::QName.new(NsV100R003C03SPC100, "FLTCOMB")]],
      ["cALLEEDSPNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLEEDSPNUM")]],
      ["aSSIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "ASSIDX")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ASSLSTType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ASSLSTType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_ASSLSTTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ASSLSTTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ASSLSTTables"),
    :schema_element => [
      ["table1", ["LST_ASSLSTTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ASSLSTTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ASSLSTTable1"),
    :schema_element => [
      ["item", ["LST_ASSLSTStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ASSLSTStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ASSLSTStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["aSSIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "ASSIDX")], [0, 1]],
      ["aSSTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ASSTYPE")], [0, 1]],
      ["aSSDATA", ["LST_ASSLSTStruct1::ASSDATA", XSD::QName.new(NsV100R003C03SPC100, "ASSDATA")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ASSLSTStruct1::ASSDATA::AND,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "AND"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["aN", [nil, XSD::QName.new(NsV100R003C03SPC100, "AN")]],
      ["uT", [nil, XSD::QName.new(NsV100R003C03SPC100, "UT")]],
      ["nA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NA")]],
      ["nRT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ASSLSTStruct1::ASSDATA,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ASSDATA"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["aCTED", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTED")]],
      ["dSPNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "DSPNUM")]],
      ["pRMNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRMNUM")]],
      ["mAXNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "MAXNUM")]],
      ["rTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTIME")]],
      ["aND", ["LST_ASSLSTStruct1::ASSDATA::AND[]", XSD::QName.new(NsV100R003C03SPC100, "AND")], [1, 10]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CUGINFOType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CUGINFOType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CUGINFOTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CUGINFOTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CUGINFOTables"),
    :schema_element => [
      ["table1", ["LST_CUGINFOTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CUGINFOTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CUGINFOTable1"),
    :schema_element => [
      ["item", ["LST_CUGINFOStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CUGINFOStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CUGINFOStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nETWORKID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NETWORKID")]],
      ["iNTERLOCKCODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "INTERLOCKCODE")]],
      ["pRIORITY", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRIORITY")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_PINType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_PINType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_PINTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_PINTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_PINTables"),
    :schema_element => [
      ["table1", ["DSP_PINTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_PINTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_PINTable1"),
    :schema_element => [
      ["item", ["DSP_PINStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_PINStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_PINStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sTATUS", [nil, XSD::QName.new(NsV100R003C03SPC100, "STATUS")]],
      ["iNCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "INCNT")]],
      ["lCKTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "LCKTIME")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PINMODEType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PINMODEType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_PINMODETables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PINMODETables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PINMODETables"),
    :schema_element => [
      ["table1", ["LST_PINMODETable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PINMODETable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PINMODETable1"),
    :schema_element => [
      ["item", ["LST_PINMODEStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PINMODEStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PINMODEStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["uPF", [nil, XSD::QName.new(NsV100R003C03SPC100, "UPF")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CDIVBARGRPType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CDIVBARGRPType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CDIVBARGRPTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CDIVBARGRPTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CDIVBARGRPTables"),
    :schema_element => [
      ["table1", ["LST_CDIVBARGRPTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CDIVBARGRPTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CDIVBARGRPTable1"),
    :schema_element => [
      ["item", ["LST_CDIVBARGRPStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CDIVBARGRPStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CDIVBARGRPStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cDIVBARGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDIVBARGRP")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SS_USE_ALLOWEDType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SS_USE_ALLOWEDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_SS_USE_ALLOWEDTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SS_USE_ALLOWEDTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SS_USE_ALLOWEDTables"),
    :schema_element => [
      ["table1", ["DSP_SS_USE_ALLOWEDTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SS_USE_ALLOWEDTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SS_USE_ALLOWEDTable1"),
    :schema_element => [
      ["item", ["DSP_SS_USE_ALLOWEDStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SS_USE_ALLOWEDStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SS_USE_ALLOWEDStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nSCFU", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFU")]],
      ["nSCFUVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFUVM")]],
      ["nSCFB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFB")]],
      ["nSCFBVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFBVM")]],
      ["nSCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNR")]],
      ["nSCFNRVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRVM")]],
      ["nSCFNL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNL")]],
      ["nSCFNLVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNLVM")]],
      ["nSCD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCD")]],
      ["nSCDVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCDVM")]],
      ["nSCFNRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRC")]],
      ["nSCFNRCVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRCVM")]],
      ["nSCIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIDCW")]],
      ["nSRIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIP")]],
      ["nSRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRID")]],
      ["nSNRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRID")]],
      ["nSRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRND")]],
      ["nSNRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRND")]],
      ["nSOIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOIP")]],
      ["nSGOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGOIR")]],
      ["nSMOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMOIR")]],
      ["nSTIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIP")]],
      ["nSTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIR")]],
      ["nSOTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOTIR")]],
      ["nSCLIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIP")]],
      ["nSCLIPNOSCREENING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIPNOSCREENING")]],
      ["nSRIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIO")]],
      ["nSCNIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIP")]],
      ["nSCLIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIR")]],
      ["nSCNIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIR")]],
      ["nSCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCW")]],
      ["nSCCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCW")]],
      ["nSACR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACR")]],
      ["nSCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCR")]],
      ["nSWAKE_UP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSWAKE_UP")]],
      ["nSAOC_D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_D")]],
      ["nSAOC_E", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_E")]],
      ["nSXEXH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEXH")]],
      ["nSXEGJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEGJ")]],
      ["nSCWCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCWCFNR")]],
      ["nSIIFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIIFC")]],
      ["nSDN_CALL_OUT_BAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_BAR")]],
      ["nSCCBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBS")]],
      ["nSCCNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNR")]],
      ["nSCCBSR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBSR")]],
      ["nSCCNRR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNRR")]],
      ["nS3PTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NS3PTY")]],
      ["nSNPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNPTY")]],
      ["nSDND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDND")]],
      ["nSMCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCR")]],
      ["nSCBA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBA")]],
      ["nSTMP_LIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTMP_LIN")]],
      ["nSCODEC_CNTRL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCODEC_CNTRL")]],
      ["nSMWI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMWI")]],
      ["nSDC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDC")]],
      ["nSHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOLD")]],
      ["nSECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSECT")]],
      ["nSCFTB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFTB")]],
      ["nSDAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDAN")]],
      ["nSSTOP_SECRET", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSTOP_SECRET")]],
      ["nSMCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCID")]],
      ["nSEBO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSEBO")]],
      ["nSICO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICO")]],
      ["nSOUTG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTG")]],
      ["nSINQYH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINQYH")]],
      ["nSUINFO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSUINFO")]],
      ["nSDN_CALL_OUT_ALLOW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_ALLOW")]],
      ["nSSIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSIC")]],
      ["nSSOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSOC")]],
      ["nSSETCFNRTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETCFNRTIME")]],
      ["nSCFS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFS")]],
      ["nSCFSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFSB")]],
      ["nSFAX", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFAX")]],
      ["nSABRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABRC")]],
      ["nSACRTOVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACRTOVM")]],
      ["nSPREPAID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPREPAID")]],
      ["nSCRBT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCRBT")]],
      ["nSICB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICB")]],
      ["nSMRINGING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMRINGING")]],
      ["nSCIS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIS")]],
      ["nSCBEG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBEG")]],
      ["nSCOLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLP")]],
      ["nSCOLR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLR")]],
      ["nSCOLPOVR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLPOVR")]],
      ["nSBAOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAOC")]],
      ["nSBOIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOIC")]],
      ["nSBOICEXHC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOICEXHC")]],
      ["nSBAIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAIC")]],
      ["nSBICROM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBICROM")]],
      ["nSSPEED_DIAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSPEED_DIAL")]],
      ["nSSD1D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD1D")]],
      ["nSSD2D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD2D")]],
      ["nSGRNCALL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGRNCALL")]],
      ["nSCPARK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCPARK")]],
      ["nSGAA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGAA")]],
      ["nSQSNS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQSNS")]],
      ["nSMSN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMSN")]],
      ["nSHOTLINE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOTLINE")]],
      ["nSAOC_S", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_S")]],
      ["nSNIGHTSRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNIGHTSRV")]],
      ["nSBACKNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBACKNUM")]],
      ["nSAUTOCON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAUTOCON")]],
      ["nSCAMPON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCAMPON")]],
      ["nSCTD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTD")]],
      ["nSCLICKHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLICKHOLD")]],
      ["nSQUEUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQUEUE")]],
      ["nSSANSWER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSANSWER")]],
      ["nSICENCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICENCF")]],
      ["nSCFGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFGO")]],
      ["nSCECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCECT")]],
      ["nSCTGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTGO")]],
      ["nSCTIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTIO")]],
      ["nSSETBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETBUSY")]],
      ["nSOVERSTEP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOVERSTEP")]],
      ["nSABSENT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABSENT")]],
      ["nSMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMONITOR")]],
      ["nSFMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFMONITOR")]],
      ["nSDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDISCNT")]],
      ["nSFDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFDISCNT")]],
      ["nSINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINSERT")]],
      ["nSFINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFINSERT")]],
      ["nSASI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSASI")]],
      ["nSPWCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPWCB")]],
      ["nSRD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRD")]],
      ["nSLCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSLCPS")]],
      ["nSNCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNCPS")]],
      ["nSICPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICPS")]],
      ["nSHCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHCPS")]],
      ["nSCBCLOCK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBCLOCK")]],
      ["nSMINIBAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMINIBAR")]],
      ["nSMCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCN")]],
      ["nSDSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDSTR")]],
      ["nSOPRREG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOPRREG")]],
      ["nSONEKEY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSONEKEY")]],
      ["nSINBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINBOUND")]],
      ["nSOUTBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTBOUND")]],
      ["nSCALLERID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCALLERID")]],
      ["nSCUN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCUN")]],
      ["nSIPTVVC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIPTVVC")]],
      ["nSNP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNP")]],
      ["nSSEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSEC")]],
      ["nSSECSTA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSECSTA")]],
      ["nSHRCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHRCN")]],
      ["nSSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSB")]],
      ["nSSCCA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSCCA")]],
      ["nSCCS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCS")]],
      ["nSOCCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOCCR")]],
      ["nSIMSMS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIMSMS")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_TPType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_TPType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_TPTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_TPTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_TPTables"),
    :schema_element => [
      ["table1", ["LST_TPTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_TPTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_TPTable1"),
    :schema_element => [
      ["item", ["LST_TPStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_TPStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_TPStruct1"),
    :schema_element => [
      ["tEMPLATEIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "TEMPLATEIDX")]],
      ["tEMPLATENAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "TEMPLATENAME")]],
      ["dSPIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "DSPIDX")]],
      ["lP", [nil, XSD::QName.new(NsV100R003C03SPC100, "LP")]],
      ["cSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSC")]],
      ["uTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "UTYPE")]],
      ["vCCFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "VCCFLAG")]],
      ["vTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "VTFLAG")]],
      ["nSCFU", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFU")]],
      ["nSCFUVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFUVM")]],
      ["nSCFB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFB")]],
      ["nSCFBVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFBVM")]],
      ["nSCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNR")]],
      ["nSCFNRVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRVM")]],
      ["nSCFNL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNL")]],
      ["nSCFNLVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNLVM")]],
      ["nSCD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCD")]],
      ["nSCDVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCDVM")]],
      ["nSCFNRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRC")]],
      ["nSCFNRCVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRCVM")]],
      ["nSCLIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIP")]],
      ["nSCIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIDCW")]],
      ["nSRIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIO")]],
      ["nSCNIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIP")]],
      ["nSCLIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIR")]],
      ["nSRIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIP")]],
      ["nSCNIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIR")]],
      ["nSRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRID")]],
      ["nSNRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRID")]],
      ["nSRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRND")]],
      ["nSNRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRND")]],
      ["nSCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCW")]],
      ["nSCCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCW")]],
      ["nSOIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOIP")]],
      ["nSACRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACRM")]],
      ["nSGOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGOIR")]],
      ["nSMOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMOIR")]],
      ["nSTIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIP")]],
      ["nSTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIR")]],
      ["nSOTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOTIR")]],
      ["nSCLIPNOSCREENING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIPNOSCREENING")]],
      ["nSCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCR")]],
      ["nSWAKE_UP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSWAKE_UP")]],
      ["nSAOC_D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_D")]],
      ["nSAOC_E", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_E")]],
      ["nSXEXH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEXH")]],
      ["nSXEGJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEGJ")]],
      ["nSCWCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCWCFNR")]],
      ["nSIIFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIIFC")]],
      ["nSDN_CALL_OUT_BAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_BAR")]],
      ["nSCCBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBS")]],
      ["nSCCNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNR")]],
      ["nSCCBSR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBSR")]],
      ["nSCCNRR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNRR")]],
      ["nS3PTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NS3PTY")]],
      ["nSNPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNPTY")]],
      ["nSDND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDND")]],
      ["nSMCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCR")]],
      ["nSCBA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBA")]],
      ["nSTMP_LIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTMP_LIN")]],
      ["nSCODEC_CNTRL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCODEC_CNTRL")]],
      ["nSMWI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMWI")]],
      ["nSDC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDC")]],
      ["nSHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOLD")]],
      ["nSECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSECT")]],
      ["nSCFTB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFTB")]],
      ["nSDAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDAN")]],
      ["nSSTOP_SECRET", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSTOP_SECRET")]],
      ["nSMCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCID")]],
      ["nSEBO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSEBO")]],
      ["nSICO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICO")]],
      ["nSOUTG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTG")]],
      ["nSINQYH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINQYH")]],
      ["nSUINFO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSUINFO")]],
      ["nSDN_CALL_OUT_ALLOW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_ALLOW")]],
      ["nSSIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSIC")]],
      ["nSSOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSOC")]],
      ["nSSETCFNRTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETCFNRTIME")]],
      ["nSCFS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFS")]],
      ["nSCFSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFSB")]],
      ["nSFAX", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFAX")]],
      ["nSABRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABRC")]],
      ["nSACRTOVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACRTOVM")]],
      ["nSPREPAID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPREPAID")]],
      ["nSCRBT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCRBT")]],
      ["nSICB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICB")]],
      ["nSMRINGING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMRINGING")]],
      ["nSCIS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIS")]],
      ["nSCBEG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBEG")]],
      ["nSCOLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLP")]],
      ["nSCOLR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLR")]],
      ["nSCOLPOVR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLPOVR")]],
      ["nSBAOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAOC")]],
      ["nSBOIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOIC")]],
      ["nSBOICEXHC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOICEXHC")]],
      ["nSBAIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAIC")]],
      ["nSBICROM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBICROM")]],
      ["nSSPEED_DIAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSPEED_DIAL")]],
      ["nSSD1D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD1D")]],
      ["nSSD2D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD2D")]],
      ["nSGRNCALL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGRNCALL")]],
      ["nSCPARK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCPARK")]],
      ["nSGAA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGAA")]],
      ["nSQSNS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQSNS")]],
      ["nSMSN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMSN")]],
      ["nSHOTLINE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOTLINE")]],
      ["nSAOC_S", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_S")]],
      ["nSNIGHTSRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNIGHTSRV")]],
      ["nSBACKNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBACKNUM")]],
      ["nSAUTOCON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAUTOCON")]],
      ["nSCAMPON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCAMPON")]],
      ["nSCTD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTD")]],
      ["nSCLICKHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLICKHOLD")]],
      ["nSQUEUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQUEUE")]],
      ["nSSANSWER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSANSWER")]],
      ["nSICENCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICENCF")]],
      ["nSCFGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFGO")]],
      ["nSCECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCECT")]],
      ["nSCTGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTGO")]],
      ["nSCTIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTIO")]],
      ["nSSETBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETBUSY")]],
      ["nSOVERSTEP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOVERSTEP")]],
      ["nSABSENT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABSENT")]],
      ["nSMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMONITOR")]],
      ["nSFMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFMONITOR")]],
      ["nSDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDISCNT")]],
      ["nSFDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFDISCNT")]],
      ["nSINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINSERT")]],
      ["nSFINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFINSERT")]],
      ["nSASI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSASI")]],
      ["nSPWCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPWCB")]],
      ["nSRD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRD")]],
      ["nSLCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSLCPS")]],
      ["nSNCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNCPS")]],
      ["nSICPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICPS")]],
      ["nSHCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHCPS")]],
      ["nSCBCLOCK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBCLOCK")]],
      ["nSMINIBAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMINIBAR")]],
      ["nSMCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCN")]],
      ["nSDSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDSTR")]],
      ["nSOPRREG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOPRREG")]],
      ["nSONEKEY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSONEKEY")]],
      ["nSINBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINBOUND")]],
      ["nSOUTBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTBOUND")]],
      ["nSCALLERID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCALLERID")]],
      ["nSCUN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCUN")]],
      ["nSIPTVVC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIPTVVC")]],
      ["nSNP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNP")]],
      ["nSSEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSEC")]],
      ["nSSECSTA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSECSTA")]],
      ["nSHRCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHRCN")]],
      ["nSSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSB")]],
      ["nSSCCA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSCCA")]],
      ["nSCCS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCS")]],
      ["nSOCCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOCCR")]],
      ["nSIMSMS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIMSMS")]],
      ["lCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "LCO")]],
      ["lC", [nil, XSD::QName.new(NsV100R003C03SPC100, "LC")]],
      ["lCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "LCT")]],
      ["nTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTT")]],
      ["iTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ITT")]],
      ["iCTX", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICTX")]],
      ["oCTX", [nil, XSD::QName.new(NsV100R003C03SPC100, "OCTX")]],
      ["iNTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "INTT")]],
      ["iITT", [nil, XSD::QName.new(NsV100R003C03SPC100, "IITT")]],
      ["iCLT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICLT")]],
      ["iCDDD", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICDDD")]],
      ["iCIDD", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICIDD")]],
      ["iOLT", [nil, XSD::QName.new(NsV100R003C03SPC100, "IOLT")]],
      ["cTLCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTLCO")]],
      ["cTLCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTLCT")]],
      ["cTLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTLD")]],
      ["cTINTNANP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTINTNANP")]],
      ["cTINTWORLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTINTWORLD")]],
      ["cTDA", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTDA")]],
      ["cTOSM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTOSM")]],
      ["cTOSP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTOSP")]],
      ["cTOSP1", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTOSP1")]],
      ["cCO1", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO1")]],
      ["cCO2", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO2")]],
      ["cCO3", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO3")]],
      ["cCO4", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO4")]],
      ["cCO5", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO5")]],
      ["cCO6", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO6")]],
      ["cCO7", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO7")]],
      ["cCO8", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO8")]],
      ["cCO9", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO9")]],
      ["cCO10", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO10")]],
      ["cCO11", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO11")]],
      ["cCO12", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO12")]],
      ["cCO13", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO13")]],
      ["cCO14", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO14")]],
      ["cCO15", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO15")]],
      ["cCO16", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO16")]],
      ["cCO17", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO17")]],
      ["cCO18", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO18")]],
      ["cCO19", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO19")]],
      ["cCO20", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO20")]],
      ["cCO21", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO21")]],
      ["cCO22", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO22")]],
      ["cCO23", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO23")]],
      ["cCO24", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO24")]],
      ["cCO25", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO25")]],
      ["cCO26", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO26")]],
      ["cCO27", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO27")]],
      ["cCO28", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO28")]],
      ["cCO29", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO29")]],
      ["cCO30", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO30")]],
      ["cCO31", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO31")]],
      ["cCO32", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO32")]],
      ["hIGHENTCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "HIGHENTCO")]],
      ["oPERATOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "OPERATOR")]],
      ["sUPYSRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUPYSRV")]],
      ["iDDCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "IDDCI")]],
      ["nTCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTCI")]],
      ["lTCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "LTCI")]],
      ["rSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "RSC")]],
      ["cIG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CIG")]],
      ["oUTRST", [nil, XSD::QName.new(NsV100R003C03SPC100, "OUTRST")]],
      ["iNRST", [nil, XSD::QName.new(NsV100R003C03SPC100, "INRST")]],
      ["nOAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOAT")]],
      ["rINGCOUNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "RINGCOUNT")]],
      ["vMAIND", [nil, XSD::QName.new(NsV100R003C03SPC100, "VMAIND")]],
      ["vDMAIND", [nil, XSD::QName.new(NsV100R003C03SPC100, "VDMAIND")]],
      ["tGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "TGRP")]],
      ["tIDHLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIDHLD")]],
      ["tIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIDCW")]],
      ["sCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SCF")]],
      ["lMTGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "LMTGRP")]],
      ["fLBGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "FLBGRP")]],
      ["sLBGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "SLBGRP")]],
      ["cOP", [nil, XSD::QName.new(NsV100R003C03SPC100, "COP")]],
      ["g711_64K_A_LAW", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711_64K_A_LAW")]],
      ["g711_64K_U_LAW", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711_64K_U_LAW")]],
      ["g722", [nil, XSD::QName.new(NsV100R003C03SPC100, "G722")]],
      ["g723", [nil, XSD::QName.new(NsV100R003C03SPC100, "G723")]],
      ["g726", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726")]],
      ["g728", [nil, XSD::QName.new(NsV100R003C03SPC100, "G728")]],
      ["g729", [nil, XSD::QName.new(NsV100R003C03SPC100, "G729")]],
      ["cODEC_MP4A", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC_MP4A")]],
      ["cODEC2833", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC2833")]],
      ["cODEC2198", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC2198")]],
      ["g726_40", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_40")]],
      ["g726_32", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_32")]],
      ["g726_24", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_24")]],
      ["g726_16", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_16")]],
      ["aMR", [nil, XSD::QName.new(NsV100R003C03SPC100, "AMR")]],
      ["cLEARMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLEARMODE")]],
      ["iLBC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ILBC")]],
      ["sPEEX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SPEEX")]],
      ["g729EV", [nil, XSD::QName.new(NsV100R003C03SPC100, "G729EV")]],
      ["eVRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "EVRC")]],
      ["eVRCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "EVRCB")]],
      ["h261", [nil, XSD::QName.new(NsV100R003C03SPC100, "H261")]],
      ["h263", [nil, XSD::QName.new(NsV100R003C03SPC100, "H263")]],
      ["cODEC_MP4V", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC_MP4V")]],
      ["h264", [nil, XSD::QName.new(NsV100R003C03SPC100, "H264")]],
      ["t38", [nil, XSD::QName.new(NsV100R003C03SPC100, "T38")]],
      ["t120", [nil, XSD::QName.new(NsV100R003C03SPC100, "T120")]],
      ["g711A_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711A_VBD")]],
      ["g711U_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711U_VBD")]],
      ["g726_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_VBD")]],
      ["g726_40_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_40_VBD")]],
      ["g726_32_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_32_VBD")]],
      ["g726_24_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_24_VBD")]],
      ["g726_16_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_16_VBD")]],
      ["wIND_BAND_AMR", [nil, XSD::QName.new(NsV100R003C03SPC100, "WIND_BAND_AMR")]],
      ["gSM610", [nil, XSD::QName.new(NsV100R003C03SPC100, "GSM610")]],
      ["h263_2000", [nil, XSD::QName.new(NsV100R003C03SPC100, "H263_2000")]],
      ["bROADVOICE_32", [nil, XSD::QName.new(NsV100R003C03SPC100, "BROADVOICE_32")]],
      ["uNKNOWN_CODEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "UNKNOWN_CODEC")]],
      ["aCODEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACODEC")]],
      ["vCODEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "VCODEC")]],
      ["pOLIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "POLIDX")]],
      ["nCPI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NCPI")]],
      ["iCPI", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICPI")]],
      ["hCPI", [nil, XSD::QName.new(NsV100R003C03SPC100, "HCPI")]],
      ["eBOCL", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBOCL")]],
      ["eBOPL", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBOPL")]],
      ["eBOIT", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBOIT")]],
      ["rM", [nil, XSD::QName.new(NsV100R003C03SPC100, "RM")]],
      ["cPC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CPC")]],
      ["pCHG", [nil, XSD::QName.new(NsV100R003C03SPC100, "PCHG")]],
      ["tFPT", [nil, XSD::QName.new(NsV100R003C03SPC100, "TFPT")]],
      ["cHT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHT")]],
      ["mCIDMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCIDMODE")]],
      ["mCIDCMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCIDCMODE")]],
      ["mCIDAMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCIDAMODE")]],
      ["pREPAIDIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "PREPAIDIDX")]],
      ["cRBTID", [nil, XSD::QName.new(NsV100R003C03SPC100, "CRBTID")]],
      ["oDBBICTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBICTYPE")]],
      ["oDBBOCTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBOCTYPE")]],
      ["oDBBARTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBARTYPE")]],
      ["oDBSS", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBSS")]],
      ["oDBBRCFTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBRCFTYPE")]],
      ["oDBINFORM", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBINFORM")]],
      ["oDBENTAIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBENTAIN")]],
      ["oDBPLMNBAR1", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR1")]],
      ["oDBPLMNBAR2", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR2")]],
      ["oDBPLMNBAR3", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR3")]],
      ["oDBPLMNBAR4", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR4")]],
      ["pNOTI", [nil, XSD::QName.new(NsV100R003C03SPC100, "PNOTI")]],
      ["mAXPARACALL", [nil, XSD::QName.new(NsV100R003C03SPC100, "MAXPARACALL")]],
      ["aTSDTMBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "ATSDTMBUSY")]],
      ["cALLCOUNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLCOUNT")]],
      ["cDNOTICALLER", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDNOTICALLER")]],
      ["iSCHGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "ISCHGFLAG")]],
      ["cHC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHC")]],
      ["cUSER", [nil, XSD::QName.new(NsV100R003C03SPC100, "CUSER")]],
      ["cGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CGRP")]],
      ["cUSERGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CUSERGRP")]],
      ["sTCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "STCF")]],
      ["cHARSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHARSC")]],
      ["rEGUIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGUIDX")]],
      ["sOCBFUNC", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCBFUNC")]],
      ["sOCBPTONEIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCBPTONEIDX")]],
      ["aDMINCBA", [nil, XSD::QName.new(NsV100R003C03SPC100, "ADMINCBA")]],
      ["aDCONTROL_DIVERSION", [nil, XSD::QName.new(NsV100R003C03SPC100, "ADCONTROL_DIVERSION")]],
      ["dPR", [nil, XSD::QName.new(NsV100R003C03SPC100, "DPR")]],
      ["pRON", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRON")]],
      ["cPCRUS", [nil, XSD::QName.new(NsV100R003C03SPC100, "CPCRUS")]],
      ["cUSCAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CUSCAT")]],
      ["sPT100REL", [nil, XSD::QName.new(NsV100R003C03SPC100, "SPT100REL")]],
      ["aNALYSISMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ANALYSISMODE")]],
      ["gRPIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPIDX")]],
      ["sCADDRIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SCADDRIDX")]],
      ["cDNOCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDNOCB")]],
      ["kVALUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "KVALUE")]],
      ["iNPFIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "INPFIDX")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXSBRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSBRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CXSBRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXSBRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSBRTables"),
    :schema_element => [
      ["table1", ["LST_CXSBRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXSBRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSBRTable1"),
    :schema_element => [
      ["item", ["LST_CXSBRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXSBRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSBRStruct1"),
    :schema_element => [
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["cXSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSG")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")], [0, 1]],
      ["cXD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXD")], [0, 1]],
      ["pBXFG", [nil, XSD::QName.new(NsV100R003C03SPC100, "PBXFG")]],
      ["pKUPID", [nil, XSD::QName.new(NsV100R003C03SPC100, "PKUPID")]],
      ["gRPICO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPICO")]],
      ["gRPWCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPWCO")]],
      ["gRPCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPCO")]],
      ["gRPICI", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPICI")]],
      ["gRPWCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPWCI")]],
      ["gRPINCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPINCO")]],
      ["aUTOCON", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOCON")]],
      ["oDSPMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODSPMODE")]],
      ["cONFLG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CONFLG")]],
      ["rESERVED", [nil, XSD::QName.new(NsV100R003C03SPC100, "RESERVED")]],
      ["iMPU1", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU1")]],
      ["iMPU2", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU2")]],
      ["iMPU3", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU3")]],
      ["iMPU4", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU4")]],
      ["iMPU5", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU5")]],
      ["iMPU6", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU6")]],
      ["iMPU7", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU7")]],
      ["iMPU8", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU8")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXGRPType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXGRPType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CXGRPTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXGRPTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXGRPTables"),
    :schema_element => [
      ["table1", ["LST_CXGRPTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXGRPTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXGRPTable1"),
    :schema_element => [
      ["item", ["LST_CXGRPStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXGRPStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXGRPStruct1"),
    :schema_element => [
      ["cGN", [nil, XSD::QName.new(NsV100R003C03SPC100, "CGN")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["mAXM", [nil, XSD::QName.new(NsV100R003C03SPC100, "MAXM")]],
      ["oGC", [nil, XSD::QName.new(NsV100R003C03SPC100, "OGC")]],
      ["cXCFTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXCFTR")]],
      ["fOUTOCXPFX", [nil, XSD::QName.new(NsV100R003C03SPC100, "FOUTOCXPFX")]],
      ["mOUTOCXPFX", [nil, XSD::QName.new(NsV100R003C03SPC100, "MOUTOCXPFX")]],
      ["gPFALG", [nil, XSD::QName.new(NsV100R003C03SPC100, "GPFALG")]],
      ["fONNET", [nil, XSD::QName.new(NsV100R003C03SPC100, "FONNET")]],
      ["sPDT", [nil, XSD::QName.new(NsV100R003C03SPC100, "SPDT")]],
      ["oUTCHGPAI", [nil, XSD::QName.new(NsV100R003C03SPC100, "OUTCHGPAI")]],
      ["mTCHGPAI", [nil, XSD::QName.new(NsV100R003C03SPC100, "MTCHGPAI")]],
      ["mTDPAI", [nil, XSD::QName.new(NsV100R003C03SPC100, "MTDPAI")]],
      ["iGRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "IGRM")]],
      ["oGRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "OGRM")]],
      ["wACRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "WACRM")]],
      ["eCRBTF", [nil, XSD::QName.new(NsV100R003C03SPC100, "ECRBTF")]],
      ["eCRBTTID", [nil, XSD::QName.new(NsV100R003C03SPC100, "ECRBTTID")]],
      ["oNNETOUTBAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "ONNETOUTBAL")]],
      ["oNNETINBAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "ONNETINBAL")]],
      ["wACOUTBAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "WACOUTBAL")]],
      ["wACINBAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "WACINBAL")]],
      ["oVPNF", [nil, XSD::QName.new(NsV100R003C03SPC100, "OVPNF")]],
      ["bALRULEIND", [nil, XSD::QName.new(NsV100R003C03SPC100, "BALRULEIND")]],
      ["oVPNPF", [nil, XSD::QName.new(NsV100R003C03SPC100, "OVPNPF")]],
      ["rESERVED", [nil, XSD::QName.new(NsV100R003C03SPC100, "RESERVED")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXSUBGRPType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSUBGRPType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CXSUBGRPTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXSUBGRPTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSUBGRPTables"),
    :schema_element => [
      ["table1", ["LST_CXSUBGRPTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXSUBGRPTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSUBGRPTable1"),
    :schema_element => [
      ["item", ["LST_CXSUBGRPStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXSUBGRPStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSUBGRPStruct1"),
    :schema_element => [
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["cGN", [nil, XSD::QName.new(NsV100R003C03SPC100, "CGN")], [0, 1]],
      ["cXSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSG")], [0, 1]],
      ["cXSGN", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSGN")], [0, 1]],
      ["bSFG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSFG")], [0, 1]],
      ["bALRULEIND", [nil, XSD::QName.new(NsV100R003C03SPC100, "BALRULEIND")]],
      ["cXD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXD")]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["tOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "TOC")]],
      ["iDDFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "IDDFC")]],
      ["oDDFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODDFC")]],
      ["iRFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "IRFC")]],
      ["oRFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ORFC")]],
      ["iRBB", [nil, XSD::QName.new(NsV100R003C03SPC100, "IRBB")]],
      ["oRBB", [nil, XSD::QName.new(NsV100R003C03SPC100, "ORBB")]],
      ["nRCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRCI")]],
      ["nRFCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRFCO")]],
      ["cCTI", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCTI")]],
      ["cCTO", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCTO")]],
      ["cDM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDM")]],
      ["iDM", [nil, XSD::QName.new(NsV100R003C03SPC100, "IDM")]],
      ["fDM", [nil, XSD::QName.new(NsV100R003C03SPC100, "FDM")]],
      ["cFUCSI", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFUCSI")]],
      ["cFUCSO", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFUCSO")]],
      ["iNDO", [nil, XSD::QName.new(NsV100R003C03SPC100, "INDO")]],
      ["bILLFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BILLFLAG")]],
      ["kINDVOICE", [nil, XSD::QName.new(NsV100R003C03SPC100, "KINDVOICE")]],
      ["cLICKTRANSRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLICKTRANSRM")]],
      ["cALLINQUEUERM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLINQUEUERM")]],
      ["cALLHOLDRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLHOLDRM")]],
      ["wAKEUPRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "WAKEUPRM")]],
      ["cXCFNRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXCFNRC")]],
      ["cHGTOFLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHGTOFLD")]],
      ["cXCFNRCNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXCFNRCNUM")]],
      ["pRIPHXFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRIPHXFLAG")]],
      ["pUBPHXFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "PUBPHXFLAG")]],
      ["aCC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACC")]],
      ["fTOSTA", [nil, XSD::QName.new(NsV100R003C03SPC100, "FTOSTA")]],
      ["rESERVED", [nil, XSD::QName.new(NsV100R003C03SPC100, "RESERVED")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_OCXPFXType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_OCXPFXType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_OCXPFXTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_OCXPFXTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_OCXPFXTables"),
    :schema_element => [
      ["table1", ["LST_OCXPFXTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_OCXPFXTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_OCXPFXTable1"),
    :schema_element => [
      ["item", ["LST_OCXPFXStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_OCXPFXStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_OCXPFXStruct1"),
    :schema_element => [
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["oGP", [nil, XSD::QName.new(NsV100R003C03SPC100, "OGP")], [0, 1]],
      ["oCSA", [nil, XSD::QName.new(NsV100R003C03SPC100, "OCSA")]],
      ["dLEN", [nil, XSD::QName.new(NsV100R003C03SPC100, "DLEN")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ICXPFXType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ICXPFXType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_ICXPFXTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ICXPFXTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ICXPFXTables"),
    :schema_element => [
      ["table1", ["LST_ICXPFXTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ICXPFXTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ICXPFXTable1"),
    :schema_element => [
      ["item", ["LST_ICXPFXStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ICXPFXStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ICXPFXStruct1"),
    :schema_element => [
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["cLRLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLRLP")], [0, 1]],
      ["pFX", [nil, XSD::QName.new(NsV100R003C03SPC100, "PFX")], [0, 1]],
      ["cSA", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSA")], [0, 1]],
      ["mINL", [nil, XSD::QName.new(NsV100R003C03SPC100, "MINL")]],
      ["mAXL", [nil, XSD::QName.new(NsV100R003C03SPC100, "MAXL")]],
      ["rESERVED", [nil, XSD::QName.new(NsV100R003C03SPC100, "RESERVED")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_WACCTLType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WACCTLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_WACCTLTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_WACCTLTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WACCTLTables"),
    :schema_element => [
      ["table1", ["LST_WACCTLTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_WACCTLTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WACCTLTable1"),
    :schema_element => [
      ["item", ["LST_WACCTLStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_WACCTLStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WACCTLStruct1"),
    :schema_element => [
      ["wACCXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "WACCXG")], [0, 1]],
      ["wAC", [nil, XSD::QName.new(NsV100R003C03SPC100, "WAC")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_WCXPFXType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WCXPFXType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_WCXPFXTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_WCXPFXTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WCXPFXTables"),
    :schema_element => [
      ["table1", ["LST_WCXPFXTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_WCXPFXTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WCXPFXTable1"),
    :schema_element => [
      ["item", ["LST_WCXPFXStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_WCXPFXStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WCXPFXStruct1"),
    :schema_element => [
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["wAC", [nil, XSD::QName.new(NsV100R003C03SPC100, "WAC")], [0, 1]],
      ["wACCXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "WACCXG")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PBXType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PBXType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_PBXTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PBXTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PBXTables"),
    :schema_element => [
      ["table1", ["LST_PBXTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PBXTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PBXTable1"),
    :schema_element => [
      ["item", ["LST_PBXStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PBXStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PBXStruct1"),
    :schema_element => [
      ["gDN", [nil, XSD::QName.new(NsV100R003C03SPC100, "GDN")], [0, 1]],
      ["sVCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SVCID")]],
      ["qUL", [nil, XSD::QName.new(NsV100R003C03SPC100, "QUL")]],
      ["sGM", [nil, XSD::QName.new(NsV100R003C03SPC100, "SGM")]],
      ["mDF", [nil, XSD::QName.new(NsV100R003C03SPC100, "MDF")]],
      ["pAC", [nil, XSD::QName.new(NsV100R003C03SPC100, "PAC")]],
      ["sNDP", [nil, XSD::QName.new(NsV100R003C03SPC100, "SNDP")]],
      ["iADDR", [nil, XSD::QName.new(NsV100R003C03SPC100, "IADDR")]],
      ["cHT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHT")]],
      ["rSF", [nil, XSD::QName.new(NsV100R003C03SPC100, "RSF")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PBXSBRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PBXSBRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_PBXSBRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PBXSBRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PBXSBRTables"),
    :schema_element => [
      ["table1", ["LST_PBXSBRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PBXSBRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PBXSBRTable1"),
    :schema_element => [
      ["item", ["LST_PBXSBRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PBXSBRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PBXSBRStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")], [0, 1]],
      ["gDN", [nil, XSD::QName.new(NsV100R003C03SPC100, "GDN")]],
      ["pSN", [nil, XSD::QName.new(NsV100R003C03SPC100, "PSN")]],
      ["tIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIP")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXSDType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CXSDTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXSDTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSDTables"),
    :schema_element => [
      ["table1", ["LST_CXSDTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXSDTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSDTable1"),
    :schema_element => [
      ["item", ["LST_CXSDStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXSDStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSDStruct1"),
    :schema_element => [
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["cXSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSG")], [0, 1]],
      ["sDSN", [nil, XSD::QName.new(NsV100R003C03SPC100, "SDSN")], [0, 1]],
      ["sDFN", [nil, XSD::QName.new(NsV100R003C03SPC100, "SDFN")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXUNUMType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXUNUMType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CXUNUMTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXUNUMTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXUNUMTables"),
    :schema_element => [
      ["table1", ["LST_CXUNUMTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXUNUMTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXUNUMTable1"),
    :schema_element => [
      ["item", ["LST_CXUNUMStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXUNUMStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXUNUMStruct1"),
    :schema_element => [
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["mAXU", [nil, XSD::QName.new(NsV100R003C03SPC100, "MAXU")]],
      ["aCTUALU", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTUALU")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_WCIMPUType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WCIMPUType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_WCIMPUTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_WCIMPUTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WCIMPUTables"),
    :schema_element => [
      ["table1", ["LST_WCIMPUTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_WCIMPUTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WCIMPUTable1"),
    :schema_element => [
      ["item", ["LST_WCIMPUStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_WCIMPUStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WCIMPUStruct1"),
    :schema_element => [
      ["wCIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCIDX")], [0, 1]],
      ["pIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "PIMPU")], [0, 1]],
      ["wCIMPU1", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCIMPU1")], [0, 1]],
      ["wCIMPU2", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCIMPU2")], [0, 1]],
      ["rESERVED", [nil, XSD::QName.new(NsV100R003C03SPC100, "RESERVED")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXOCRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXOCRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CXOCRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXOCRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXOCRTables"),
    :schema_element => [
      ["table1", ["LST_CXOCRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXOCRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXOCRTable1"),
    :schema_element => [
      ["item", ["LST_CXOCRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXOCRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXOCRStruct1"),
    :schema_element => [
      ["cTXGRPID", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTXGRPID")], [0, 1]],
      ["kVALUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "KVALUE")], [0, 1]],
      ["cALLOUTRIGHT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLOUTRIGHT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXPFXPROType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXPFXPROType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CXPFXPROTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXPFXPROTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXPFXPROTables"),
    :schema_element => [
      ["table1", ["LST_CXPFXPROTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXPFXPROTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXPFXPROTable1"),
    :schema_element => [
      ["item", ["LST_CXPFXPROStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXPFXPROStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXPFXPROStruct1"),
    :schema_element => [
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["pFX", [nil, XSD::QName.new(NsV100R003C03SPC100, "PFX")], [0, 1]],
      ["cSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSC")], [0, 1]],
      ["dDC", [nil, XSD::QName.new(NsV100R003C03SPC100, "DDC")]],
      ["rDC", [nil, XSD::QName.new(NsV100R003C03SPC100, "RDC")]],
      ["sTP", [nil, XSD::QName.new(NsV100R003C03SPC100, "STP")]],
      ["fPF", [nil, XSD::QName.new(NsV100R003C03SPC100, "FPF")]],
      ["nPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NPS")]],
      ["nLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NLP")]],
      ["dDCX", [nil, XSD::QName.new(NsV100R003C03SPC100, "DDCX")]],
      ["rDCX", [nil, XSD::QName.new(NsV100R003C03SPC100, "RDCX")]],
      ["rAF", [nil, XSD::QName.new(NsV100R003C03SPC100, "RAF")]],
      ["tT", [nil, XSD::QName.new(NsV100R003C03SPC100, "TT")]],
      ["fCC", [nil, XSD::QName.new(NsV100R003C03SPC100, "FCC")]],
      ["rESERVED", [nil, XSD::QName.new(NsV100R003C03SPC100, "RESERVED")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXACTType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXACTType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CXACTTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXACTTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXACTTables"),
    :schema_element => [
      ["table1", ["LST_CXACTTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXACTTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXACTTable1"),
    :schema_element => [
      ["item", ["LST_CXACTStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXACTStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXACTStruct1"),
    :schema_element => [
      ["aCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACT")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CXACTType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CXACTType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CXACTTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CXACTTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CXACTTables"),
    :schema_element => [
      ["table1", ["DSP_CXACTTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CXACTTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CXACTTable1"),
    :schema_element => [
      ["item", ["DSP_CXACTStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CXACTStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CXACTStruct1"),
    :schema_element => [
      ["aCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACT")]],
      ["rOLEID", [nil, XSD::QName.new(NsV100R003C03SPC100, "ROLEID")]],
      ["rTLIST", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTLIST")]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "NAME")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CONType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CONType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CONTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CONTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CONTables"),
    :schema_element => [
      ["table1", ["DSP_CONTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CONTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CONTable1"),
    :schema_element => [
      ["item", ["DSP_CONStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_CONStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CONStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["pDMN", [nil, XSD::QName.new(NsV100R003C03SPC100, "PDMN")]],
      ["pADDR", [nil, XSD::QName.new(NsV100R003C03SPC100, "PADDR")]],
      ["pPORT", [nil, XSD::QName.new(NsV100R003C03SPC100, "PPORT")]],
      ["cONTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CONTYPE")]],
      ["sMSNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMSNUM")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CONType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CONType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CONTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CONTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CONTables"),
    :schema_element => [
      ["table1", ["LST_CONTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CONTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CONTable1"),
    :schema_element => [
      ["item", ["LST_CONStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CONStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CONStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ROLEType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ROLEType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_ROLETables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ROLETables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ROLETables"),
    :schema_element => [
      ["table1", ["LST_ROLETable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ROLETable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ROLETable1"),
    :schema_element => [
      ["item", ["LST_ROLEStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ROLEStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ROLEStruct1"),
    :schema_element => [
      ["rOLEID", [nil, XSD::QName.new(NsV100R003C03SPC100, "ROLEID")], [0, 1]],
      ["rOLENAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "ROLENAME")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_ROLEType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ROLEType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_ROLETables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_ROLETables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ROLETables"),
    :schema_element => [
      ["table1", ["DSP_ROLETable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_ROLETable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ROLETable1"),
    :schema_element => [
      ["item", ["DSP_ROLEStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_ROLEStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ROLEStruct1"),
    :schema_element => [
      ["rOLEID", [nil, XSD::QName.new(NsV100R003C03SPC100, "ROLEID")]],
      ["rOLENAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "ROLENAME")]],
      ["rTLIST", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTLIST")]],
      ["dESC", [nil, XSD::QName.new(NsV100R003C03SPC100, "DESC")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ACTRTType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ACTRTType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_ACTRTTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ACTRTTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ACTRTTables"),
    :schema_element => [
      ["table1", ["LST_ACTRTTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ACTRTTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ACTRTTable1"),
    :schema_element => [
      ["item", ["LST_ACTRTStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ACTRTStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ACTRTStruct1"),
    :schema_element => [
      ["rTID", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTID")], [0, 1]],
      ["rTNAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTNAME")], [0, 1]],
      ["rTDESC", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTDESC")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_ACTRTType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ACTRTType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_ACTRTTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_ACTRTTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ACTRTTables"),
    :schema_element => [
      ["table1", ["DSP_ACTRTTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_ACTRTTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ACTRTTable1"),
    :schema_element => [
      ["item", ["DSP_ACTRTStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_ACTRTStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ACTRTStruct1"),
    :schema_element => [
      ["rTID", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTID")]],
      ["rTNAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTNAME")]],
      ["rTDESC", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTDESC")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SBGLANType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SBGLANType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_SBGLANTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SBGLANTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SBGLANTables"),
    :schema_element => [
      ["table1", ["DSP_SBGLANTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SBGLANTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SBGLANTable1"),
    :schema_element => [
      ["item", ["DSP_SBGLANStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DSP_SBGLANStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SBGLANStruct1"),
    :schema_element => [
      ["lANID", [nil, XSD::QName.new(NsV100R003C03SPC100, "LANID")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_LANType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_LANType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_LANTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_LANTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_LANTables"),
    :schema_element => [
      ["table1", ["LST_LANTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_LANTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_LANTable1"),
    :schema_element => [
      ["item", ["LST_LANStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_LANStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_LANStruct1"),
    :schema_element => [
      ["lANID", [nil, XSD::QName.new(NsV100R003C03SPC100, "LANID")], [0, 1]],
      ["lANNAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "LANNAME")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXSBRCONType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSBRCONType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CXSBRCONTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXSBRCONTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSBRCONTables"),
    :schema_element => [
      ["table1", ["LST_CXSBRCONTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXSBRCONTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSBRCONTable1"),
    :schema_element => [
      ["item", ["LST_CXSBRCONStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CXSBRCONStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSBRCONStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["lCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "LCO")]],
      ["lC", [nil, XSD::QName.new(NsV100R003C03SPC100, "LC")]],
      ["lCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "LCT")]],
      ["nTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTT")]],
      ["iTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ITT")]],
      ["iNTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "INTT")]],
      ["iITT", [nil, XSD::QName.new(NsV100R003C03SPC100, "IITT")]],
      ["iOLT", [nil, XSD::QName.new(NsV100R003C03SPC100, "IOLT")]],
      ["gRPICO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPICO")]],
      ["gRPCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPCO")]],
      ["iDDCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "IDDCI")]],
      ["nTCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTCI")]],
      ["lTCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "LTCI")]],
      ["gRPICI", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPICI")]],
      ["gRPINCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPINCO")]],
      ["nSCFU", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFU")]],
      ["nSCFB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFB")]],
      ["nSCFBVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFBVM")]],
      ["nSCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNR")]],
      ["nSCFNRVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRVM")]],
      ["nSCFNL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNL")]],
      ["nSCD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCD")]],
      ["nSCIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIDCW")]],
      ["nSRIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIP")]],
      ["nSRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRID")]],
      ["nSNRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRID")]],
      ["nSCLIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIP")]],
      ["nSRIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIO")]],
      ["nSCLIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIR")]],
      ["nSCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCW")]],
      ["nSWAKE_UP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSWAKE_UP")]],
      ["nSCCBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBS")]],
      ["nS3PTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NS3PTY")]],
      ["nSNPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNPTY")]],
      ["nSDND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDND")]],
      ["nSHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOLD")]],
      ["nSCFTB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFTB")]],
      ["nSDAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDAN")]],
      ["nSMCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCID")]],
      ["nSDN_CALL_OUT_ALLOW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_ALLOW")]],
      ["nSSPEED_DIAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSPEED_DIAL")]],
      ["nSGAA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGAA")]],
      ["nSHOTLINE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOTLINE")]],
      ["nSICENCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICENCF")]],
      ["nSABSENT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABSENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => OperationFault,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "OperationFault"),
    :schema_element => [
      ["faultReason", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => ResultType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "ResultType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]]
    ]
  )

  LiteralRegistry.register(
    :class => RequestCommonInfoType,
    :schema_type => XSD::QName.new(NsATSV100R003C03SPC100, "RequestCommonInfoType"),
    :schema_element => [
      ["sessionID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "SessionID")]],
      ["mEID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "MEID")]],
      ["sourceMEID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "SourceMEID")]],
      ["serialID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "SerialID")]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsATSV100R003C03SPC100, "UserName")]],
      ["sync", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "Sync")]],
      ["reserve", ["SOAP::SOAPString", XSD::QName.new(NsATSV100R003C03SPC100, "Reserve")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ResponseCommonInfoType,
    :schema_type => XSD::QName.new(NsATSV100R003C03SPC100, "ResponseCommonInfoType"),
    :schema_element => [
      ["commandName", ["SOAP::SOAPString", XSD::QName.new(NsATSV100R003C03SPC100, "CommandName")]],
      ["sessionID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "SessionID")]],
      ["requestID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "RequestID")]],
      ["mEID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "MEID")]],
      ["sourceMEID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "SourceMEID")]],
      ["serialID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "SerialID")]],
      ["timeStamp", ["SOAP::SOAPString", XSD::QName.new(NsATSV100R003C03SPC100, "TimeStamp")]],
      ["svrType", ["SOAP::SOAPString", XSD::QName.new(NsATSV100R003C03SPC100, "SvrType")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SBRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_SBRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_SBRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SBRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_SBRTables"),
    :schema_element => [
      ["table1", ["LST_SBRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SBRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_SBRTable1"),
    :schema_element => [
      ["item", ["LST_SBRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SBRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_SBRStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["tEMPLATEIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "TEMPLATEIDX")]],
      ["dSPIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "DSPIDX")]],
      ["lP", [nil, XSD::QName.new(NsV100R003C03SPC100, "LP")]],
      ["cSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSC")]],
      ["uNAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "UNAME")]],
      ["uTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "UTYPE")]],
      ["vCCFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "VCCFLAG")]],
      ["vTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "VTFLAG")]],
      ["nSCFU", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFU")]],
      ["nSCFUVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFUVM")]],
      ["nSCFB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFB")]],
      ["nSCFBVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFBVM")]],
      ["nSCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNR")]],
      ["nSCFNRVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRVM")]],
      ["nSCFNL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNL")]],
      ["nSCFNLVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNLVM")]],
      ["nSCD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCD")]],
      ["nSCDVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCDVM")]],
      ["nSCFNRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRC")]],
      ["nSCFNRCVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRCVM")]],
      ["nSCLIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIP")]],
      ["nSCIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIDCW")]],
      ["nSRIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIO")]],
      ["nSCNIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIP")]],
      ["nSCLIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIR")]],
      ["nSRIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIP")]],
      ["nSCNIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIR")]],
      ["nSRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRID")]],
      ["nSNRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRID")]],
      ["nSRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRND")]],
      ["nSNRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRND")]],
      ["nSCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCW")]],
      ["nSCCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCW")]],
      ["nSOIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOIP")]],
      ["nSACRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACRM")]],
      ["nSGOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGOIR")]],
      ["nSMOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMOIR")]],
      ["nSTIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIP")]],
      ["nSTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIR")]],
      ["nSOTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOTIR")]],
      ["nSCLIPNOSCREENING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIPNOSCREENING")]],
      ["nSCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCR")]],
      ["nSWAKE_UP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSWAKE_UP")]],
      ["nSAOC_D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_D")]],
      ["nSAOC_E", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_E")]],
      ["nSXEXH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEXH")]],
      ["nSXEGJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEGJ")]],
      ["nSCWCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCWCFNR")]],
      ["nSIIFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIIFC")]],
      ["nSDN_CALL_OUT_BAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_BAR")]],
      ["nSCCBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBS")]],
      ["nSCCNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNR")]],
      ["nSCCBSR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBSR")]],
      ["nSCCNRR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNRR")]],
      ["nS3PTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NS3PTY")]],
      ["nSNPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNPTY")]],
      ["nSDND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDND")]],
      ["nSMCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCR")]],
      ["nSCBA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBA")]],
      ["nSTMP_LIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTMP_LIN")]],
      ["nSCODEC_CNTRL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCODEC_CNTRL")]],
      ["nSMWI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMWI")]],
      ["nSDC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDC")]],
      ["nSHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOLD")]],
      ["nSECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSECT")]],
      ["nSCFTB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFTB")]],
      ["nSDAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDAN")]],
      ["nSSTOP_SECRET", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSTOP_SECRET")]],
      ["nSMCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCID")]],
      ["nSEBO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSEBO")]],
      ["nSICO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICO")]],
      ["nSOUTG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTG")]],
      ["nSINQYH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINQYH")]],
      ["nSUINFO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSUINFO")]],
      ["nSDN_CALL_OUT_ALLOW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_ALLOW")]],
      ["nSSIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSIC")]],
      ["nSSOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSOC")]],
      ["nSSETCFNRTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETCFNRTIME")]],
      ["nSCFS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFS")]],
      ["nSCFSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFSB")]],
      ["nSFAX", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFAX")]],
      ["nSABRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABRC")]],
      ["nSACRTOVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACRTOVM")]],
      ["nSPREPAID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPREPAID")]],
      ["nSCRBT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCRBT")]],
      ["nSICB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICB")]],
      ["nSMRINGING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMRINGING")]],
      ["nSCIS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIS")]],
      ["nSCBEG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBEG")]],
      ["nSCOLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLP")]],
      ["nSCOLR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLR")]],
      ["nSCOLPOVR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLPOVR")]],
      ["nSBAOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAOC")]],
      ["nSBOIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOIC")]],
      ["nSBOICEXHC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOICEXHC")]],
      ["nSBAIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAIC")]],
      ["nSBICROM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBICROM")]],
      ["nSSPEED_DIAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSPEED_DIAL")]],
      ["nSSD1D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD1D")]],
      ["nSSD2D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD2D")]],
      ["nSGRNCALL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGRNCALL")]],
      ["nSCPARK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCPARK")]],
      ["nSGAA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGAA")]],
      ["nSQSNS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQSNS")]],
      ["nSMSN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMSN")]],
      ["nSHOTLINE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOTLINE")]],
      ["nSAOC_S", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_S")]],
      ["nSNIGHTSRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNIGHTSRV")]],
      ["nSBACKNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBACKNUM")]],
      ["nSAUTOCON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAUTOCON")]],
      ["nSCAMPON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCAMPON")]],
      ["nSCTD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTD")]],
      ["nSCLICKHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLICKHOLD")]],
      ["nSQUEUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQUEUE")]],
      ["nSSANSWER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSANSWER")]],
      ["nSICENCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICENCF")]],
      ["nSCFGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFGO")]],
      ["nSCECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCECT")]],
      ["nSCTGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTGO")]],
      ["nSCTIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTIO")]],
      ["nSSETBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETBUSY")]],
      ["nSOVERSTEP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOVERSTEP")]],
      ["nSABSENT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABSENT")]],
      ["nSMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMONITOR")]],
      ["nSFMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFMONITOR")]],
      ["nSDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDISCNT")]],
      ["nSFDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFDISCNT")]],
      ["nSINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINSERT")]],
      ["nSFINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFINSERT")]],
      ["nSASI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSASI")]],
      ["nSPWCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPWCB")]],
      ["nSRD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRD")]],
      ["nSLCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSLCPS")]],
      ["nSNCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNCPS")]],
      ["nSICPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICPS")]],
      ["nSHCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHCPS")]],
      ["nSCBCLOCK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBCLOCK")]],
      ["nSMINIBAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMINIBAR")]],
      ["nSMCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCN")]],
      ["nSDSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDSTR")]],
      ["nSOPRREG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOPRREG")]],
      ["nSONEKEY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSONEKEY")]],
      ["nSINBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINBOUND")]],
      ["nSOUTBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTBOUND")]],
      ["nSCALLERID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCALLERID")]],
      ["nSCUN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCUN")]],
      ["nSIPTVVC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIPTVVC")]],
      ["nSNP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNP")]],
      ["nSSEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSEC")]],
      ["nSSECSTA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSECSTA")]],
      ["nSHRCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHRCN")]],
      ["nSSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSB")]],
      ["nSSCCA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSCCA")]],
      ["nSCCS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCS")]],
      ["nSOCCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOCCR")]],
      ["nSIMSMS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIMSMS")]],
      ["lCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "LCO")]],
      ["lC", [nil, XSD::QName.new(NsV100R003C03SPC100, "LC")]],
      ["lCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "LCT")]],
      ["nTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTT")]],
      ["iTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ITT")]],
      ["iCTX", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICTX")]],
      ["oCTX", [nil, XSD::QName.new(NsV100R003C03SPC100, "OCTX")]],
      ["iNTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "INTT")]],
      ["iITT", [nil, XSD::QName.new(NsV100R003C03SPC100, "IITT")]],
      ["iCLT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICLT")]],
      ["iCDDD", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICDDD")]],
      ["iCIDD", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICIDD")]],
      ["iOLT", [nil, XSD::QName.new(NsV100R003C03SPC100, "IOLT")]],
      ["cTLCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTLCO")]],
      ["cTLCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTLCT")]],
      ["cTLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTLD")]],
      ["cTINTNANP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTINTNANP")]],
      ["cTINTWORLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTINTWORLD")]],
      ["cTDA", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTDA")]],
      ["cTOSM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTOSM")]],
      ["cTOSP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTOSP")]],
      ["cTOSP1", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTOSP1")]],
      ["cCO1", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO1")]],
      ["cCO2", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO2")]],
      ["cCO3", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO3")]],
      ["cCO4", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO4")]],
      ["cCO5", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO5")]],
      ["cCO6", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO6")]],
      ["cCO7", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO7")]],
      ["cCO8", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO8")]],
      ["cCO9", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO9")]],
      ["cCO10", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO10")]],
      ["cCO11", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO11")]],
      ["cCO12", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO12")]],
      ["cCO13", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO13")]],
      ["cCO14", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO14")]],
      ["cCO15", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO15")]],
      ["cCO16", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO16")]],
      ["cCO17", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO17")]],
      ["cCO18", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO18")]],
      ["cCO19", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO19")]],
      ["cCO20", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO20")]],
      ["cCO21", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO21")]],
      ["cCO22", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO22")]],
      ["cCO23", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO23")]],
      ["cCO24", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO24")]],
      ["cCO25", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO25")]],
      ["cCO26", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO26")]],
      ["cCO27", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO27")]],
      ["cCO28", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO28")]],
      ["cCO29", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO29")]],
      ["cCO30", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO30")]],
      ["cCO31", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO31")]],
      ["cCO32", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO32")]],
      ["hIGHENTCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "HIGHENTCO")]],
      ["oPERATOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "OPERATOR")]],
      ["sUPYSRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUPYSRV")]],
      ["iDDCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "IDDCI")]],
      ["nTCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTCI")]],
      ["lTCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "LTCI")]],
      ["rSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "RSC")]],
      ["cIG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CIG")]],
      ["oUTRST", [nil, XSD::QName.new(NsV100R003C03SPC100, "OUTRST")]],
      ["iNRST", [nil, XSD::QName.new(NsV100R003C03SPC100, "INRST")]],
      ["nOAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOAT")]],
      ["rINGCOUNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "RINGCOUNT")]],
      ["vMAIND", [nil, XSD::QName.new(NsV100R003C03SPC100, "VMAIND")]],
      ["vDMAIND", [nil, XSD::QName.new(NsV100R003C03SPC100, "VDMAIND")]],
      ["tGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "TGRP")]],
      ["tIDHLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIDHLD")]],
      ["tIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIDCW")]],
      ["sCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SCF")]],
      ["lMTGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "LMTGRP")]],
      ["fLBGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "FLBGRP")]],
      ["sLBGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "SLBGRP")]],
      ["cOP", [nil, XSD::QName.new(NsV100R003C03SPC100, "COP")]],
      ["g711_64K_A_LAW", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711_64K_A_LAW")]],
      ["g711_64K_U_LAW", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711_64K_U_LAW")]],
      ["g722", [nil, XSD::QName.new(NsV100R003C03SPC100, "G722")]],
      ["g723", [nil, XSD::QName.new(NsV100R003C03SPC100, "G723")]],
      ["g726", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726")]],
      ["g728", [nil, XSD::QName.new(NsV100R003C03SPC100, "G728")]],
      ["g729", [nil, XSD::QName.new(NsV100R003C03SPC100, "G729")]],
      ["cODEC_MP4A", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC_MP4A")]],
      ["cODEC2833", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC2833")]],
      ["cODEC2198", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC2198")]],
      ["g726_40", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_40")]],
      ["g726_32", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_32")]],
      ["g726_24", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_24")]],
      ["g726_16", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_16")]],
      ["aMR", [nil, XSD::QName.new(NsV100R003C03SPC100, "AMR")]],
      ["cLEARMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLEARMODE")]],
      ["iLBC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ILBC")]],
      ["sPEEX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SPEEX")]],
      ["g729EV", [nil, XSD::QName.new(NsV100R003C03SPC100, "G729EV")]],
      ["eVRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "EVRC")]],
      ["eVRCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "EVRCB")]],
      ["h261", [nil, XSD::QName.new(NsV100R003C03SPC100, "H261")]],
      ["h263", [nil, XSD::QName.new(NsV100R003C03SPC100, "H263")]],
      ["cODEC_MP4V", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC_MP4V")]],
      ["h264", [nil, XSD::QName.new(NsV100R003C03SPC100, "H264")]],
      ["t38", [nil, XSD::QName.new(NsV100R003C03SPC100, "T38")]],
      ["t120", [nil, XSD::QName.new(NsV100R003C03SPC100, "T120")]],
      ["g711A_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711A_VBD")]],
      ["g711U_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711U_VBD")]],
      ["g726_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_VBD")]],
      ["g726_40_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_40_VBD")]],
      ["g726_32_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_32_VBD")]],
      ["g726_24_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_24_VBD")]],
      ["g726_16_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_16_VBD")]],
      ["wIND_BAND_AMR", [nil, XSD::QName.new(NsV100R003C03SPC100, "WIND_BAND_AMR")]],
      ["gSM610", [nil, XSD::QName.new(NsV100R003C03SPC100, "GSM610")]],
      ["h263_2000", [nil, XSD::QName.new(NsV100R003C03SPC100, "H263_2000")]],
      ["bROADVOICE_32", [nil, XSD::QName.new(NsV100R003C03SPC100, "BROADVOICE_32")]],
      ["uNKNOWN_CODEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "UNKNOWN_CODEC")]],
      ["aCODEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACODEC")]],
      ["vCODEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "VCODEC")]],
      ["pOLIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "POLIDX")]],
      ["nCPI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NCPI")]],
      ["iCPI", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICPI")]],
      ["hCPI", [nil, XSD::QName.new(NsV100R003C03SPC100, "HCPI")]],
      ["eBOCL", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBOCL")]],
      ["eBOPL", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBOPL")]],
      ["eBOIT", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBOIT")]],
      ["rM", [nil, XSD::QName.new(NsV100R003C03SPC100, "RM")]],
      ["cPC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CPC")]],
      ["pCHG", [nil, XSD::QName.new(NsV100R003C03SPC100, "PCHG")]],
      ["tFPT", [nil, XSD::QName.new(NsV100R003C03SPC100, "TFPT")]],
      ["cHT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHT")]],
      ["mCIDMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCIDMODE")]],
      ["mCIDCMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCIDCMODE")]],
      ["mCIDAMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCIDAMODE")]],
      ["pREPAIDIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "PREPAIDIDX")]],
      ["cRBTID", [nil, XSD::QName.new(NsV100R003C03SPC100, "CRBTID")]],
      ["oDBBICTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBICTYPE")]],
      ["oDBBOCTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBOCTYPE")]],
      ["oDBBARTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBARTYPE")]],
      ["oDBSS", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBSS")]],
      ["oDBBRCFTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBRCFTYPE")]],
      ["oDBINFORM", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBINFORM")]],
      ["oDBENTAIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBENTAIN")]],
      ["oDBPLMNBAR1", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR1")]],
      ["oDBPLMNBAR2", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR2")]],
      ["oDBPLMNBAR3", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR3")]],
      ["oDBPLMNBAR4", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR4")]],
      ["pNOTI", [nil, XSD::QName.new(NsV100R003C03SPC100, "PNOTI")]],
      ["mAXPARACALL", [nil, XSD::QName.new(NsV100R003C03SPC100, "MAXPARACALL")]],
      ["aTSDTMBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "ATSDTMBUSY")]],
      ["cALLCOUNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLCOUNT")]],
      ["cDNOTICALLER", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDNOTICALLER")]],
      ["iSCHGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "ISCHGFLAG")]],
      ["cHC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHC")]],
      ["cUSER", [nil, XSD::QName.new(NsV100R003C03SPC100, "CUSER")]],
      ["cGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CGRP")]],
      ["cUSERGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CUSERGRP")]],
      ["sTCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "STCF")]],
      ["cHARSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHARSC")]],
      ["rEGUIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGUIDX")]],
      ["sOCBFUNC", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCBFUNC")]],
      ["sOCBPTONEIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCBPTONEIDX")]],
      ["aDMINCBA", [nil, XSD::QName.new(NsV100R003C03SPC100, "ADMINCBA")]],
      ["aDCONTROL_DIVERSION", [nil, XSD::QName.new(NsV100R003C03SPC100, "ADCONTROL_DIVERSION")]],
      ["dPR", [nil, XSD::QName.new(NsV100R003C03SPC100, "DPR")]],
      ["pRON", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRON")]],
      ["cPCRUS", [nil, XSD::QName.new(NsV100R003C03SPC100, "CPCRUS")]],
      ["cUSCAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CUSCAT")]],
      ["sPT100REL", [nil, XSD::QName.new(NsV100R003C03SPC100, "SPT100REL")]],
      ["aNALYSISMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ANALYSISMODE")]],
      ["gRPIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPIDX")]],
      ["sCADDRIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SCADDRIDX")]],
      ["cDNOCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDNOCB")]],
      ["pBTSBR", ["LST_SBRStruct1::PBTSBR", XSD::QName.new(NsV100R003C03SPC100, "PBTSBR")]],
      ["kVALUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "KVALUE")]],
      ["iNPFIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "INPFIDX")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SBRStruct1::PBTSBR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "PBTSBR"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["pBXID", [nil, XSD::QName.new(NsV100R003C03SPC100, "PBXID")]],
      ["iSPILOT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ISPILOT")]],
      ["iSSHARESRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "ISSHARESRV")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SSType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_SSType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_SSTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SSTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_SSTables"),
    :schema_element => [
      ["table1", ["LST_SSTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SSTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_SSTable1"),
    :schema_element => [
      ["item", ["LST_SSStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SSStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_SSStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nSCFU", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFU")]],
      ["nSCFUVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFUVM")]],
      ["nSCFB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFB")]],
      ["nSCFBVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFBVM")]],
      ["nSCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNR")]],
      ["nSCFNRVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRVM")]],
      ["nSCFNL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNL")]],
      ["nSCFNLVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNLVM")]],
      ["nSCD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCD")]],
      ["nSCDVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCDVM")]],
      ["nSCFNRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRC")]],
      ["nSCFNRCVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRCVM")]],
      ["nSCIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIDCW")]],
      ["nSRIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIP")]],
      ["nSRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRID")]],
      ["nSNRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRID")]],
      ["nSRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRND")]],
      ["nSNRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRND")]],
      ["nSOIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOIP")]],
      ["nSGOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGOIR")]],
      ["nSMOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMOIR")]],
      ["nSTIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIP")]],
      ["nSTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIR")]],
      ["nSOTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOTIR")]],
      ["nSCLIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIP")]],
      ["nSCLIPNOSCREENING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIPNOSCREENING")]],
      ["nSRIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIO")]],
      ["nSCNIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIP")]],
      ["nSCLIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIR")]],
      ["nSCNIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIR")]],
      ["nSCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCW")]],
      ["nSCCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCW")]],
      ["nSACRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACRM")]],
      ["nSCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCR")]],
      ["nSWAKE_UP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSWAKE_UP")]],
      ["nSAOC_D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_D")]],
      ["nSAOC_E", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_E")]],
      ["nSXEXH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEXH")]],
      ["nSXEGJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEGJ")]],
      ["nSCWCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCWCFNR")]],
      ["nSIIFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIIFC")]],
      ["nSDN_CALL_OUT_BAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_BAR")]],
      ["nSCCBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBS")]],
      ["nSCCNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNR")]],
      ["nSCCBSR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBSR")]],
      ["nSCCNRR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNRR")]],
      ["nS3PTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NS3PTY")]],
      ["nSNPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNPTY")]],
      ["nSDND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDND")]],
      ["nSMCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCR")]],
      ["nSCBA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBA")]],
      ["nSTMP_LIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTMP_LIN")]],
      ["nSCODEC_CNTRL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCODEC_CNTRL")]],
      ["nSMWI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMWI")]],
      ["nSDC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDC")]],
      ["nSHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOLD")]],
      ["nSECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSECT")]],
      ["nSCFTB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFTB")]],
      ["nSDAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDAN")]],
      ["nSSTOP_SECRET", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSTOP_SECRET")]],
      ["nSMCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCID")]],
      ["nSEBO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSEBO")]],
      ["nSICO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICO")]],
      ["nSOUTG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTG")]],
      ["nSINQYH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINQYH")]],
      ["nSUINFO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSUINFO")]],
      ["nSDN_CALL_OUT_ALLOW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_ALLOW")]],
      ["nSSIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSIC")]],
      ["nSSOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSOC")]],
      ["nSSETCFNRTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETCFNRTIME")]],
      ["nSCFS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFS")]],
      ["nSCFSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFSB")]],
      ["nSFAX", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFAX")]],
      ["nSABRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABRC")]],
      ["nSACRTOVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACRTOVM")]],
      ["nSPREPAID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPREPAID")]],
      ["nSCRBT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCRBT")]],
      ["nSICB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICB")]],
      ["nSMRINGING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMRINGING")]],
      ["nSCIS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIS")]],
      ["nSCBEG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBEG")]],
      ["nSCOLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLP")]],
      ["nSCOLR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLR")]],
      ["nSCOLPOVR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLPOVR")]],
      ["nSBAOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAOC")]],
      ["nSBOIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOIC")]],
      ["nSBOICEXHC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOICEXHC")]],
      ["nSBAIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAIC")]],
      ["nSBICROM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBICROM")]],
      ["nSSPEED_DIAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSPEED_DIAL")]],
      ["nSSD1D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD1D")]],
      ["nSSD2D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD2D")]],
      ["nSGRNCALL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGRNCALL")]],
      ["nSCPARK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCPARK")]],
      ["nSGAA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGAA")]],
      ["nSQSNS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQSNS")]],
      ["nSMSN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMSN")]],
      ["nSHOTLINE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOTLINE")]],
      ["nSAOC_S", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_S")]],
      ["nSNIGHTSRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNIGHTSRV")]],
      ["nSBACKNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBACKNUM")]],
      ["nSAUTOCON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAUTOCON")]],
      ["nSCAMPON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCAMPON")]],
      ["nSCTD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTD")]],
      ["nSCLICKHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLICKHOLD")]],
      ["nSQUEUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQUEUE")]],
      ["nSSANSWER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSANSWER")]],
      ["nSICENCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICENCF")]],
      ["nSCFGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFGO")]],
      ["nSCECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCECT")]],
      ["nSCTGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTGO")]],
      ["nSCTIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTIO")]],
      ["nSSETBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETBUSY")]],
      ["nSOVERSTEP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOVERSTEP")]],
      ["nSABSENT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABSENT")]],
      ["nSMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMONITOR")]],
      ["nSFMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFMONITOR")]],
      ["nSDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDISCNT")]],
      ["nSFDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFDISCNT")]],
      ["nSINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINSERT")]],
      ["nSFINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFINSERT")]],
      ["nSASI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSASI")]],
      ["nSPWCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPWCB")]],
      ["nSRD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRD")]],
      ["nSLCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSLCPS")]],
      ["nSNCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNCPS")]],
      ["nSICPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICPS")]],
      ["nSHCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHCPS")]],
      ["nSCBCLOCK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBCLOCK")]],
      ["nSMINIBAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMINIBAR")]],
      ["nSMCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCN")]],
      ["nSDSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDSTR")]],
      ["nSOPRREG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOPRREG")]],
      ["nSONEKEY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSONEKEY")]],
      ["nSINBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINBOUND")]],
      ["nSOUTBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTBOUND")]],
      ["nSCALLERID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCALLERID")]],
      ["nSCUN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCUN")]],
      ["nSIPTVVC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIPTVVC")]],
      ["nSNP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNP")]],
      ["nSSEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSEC")]],
      ["nSSECSTA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSECSTA")]],
      ["nSHRCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHRCN")]],
      ["nSSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSB")]],
      ["nSSCCA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSCCA")]],
      ["nSCCS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCS")]],
      ["nSOCCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOCCR")]],
      ["nSIMSMS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIMSMS")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_COMSSType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "REG_COMSSType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["REG_COMSSTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_COMSSTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "REG_COMSSTables"),
    :schema_element => [
      ["table1", ["REG_COMSSTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_COMSSTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "REG_COMSSTable1"),
    :schema_element => [
      ["item", ["REG_COMSSStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_COMSSStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "REG_COMSSStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cFUVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFUVM")], [0, 1]],
      ["cFBVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFBVM")], [0, 1]],
      ["cFNRVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFNRVM")], [0, 1]],
      ["cFNLVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFNLVM")], [0, 1]],
      ["cFNRCVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFNRCVM")], [0, 1]],
      ["cD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CD")], [0, 1]],
      ["cDVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDVM")], [0, 1]],
      ["cIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "CIDCW")], [0, 1]],
      ["rIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "RIP")], [0, 1]],
      ["rID", [nil, XSD::QName.new(NsV100R003C03SPC100, "RID")], [0, 1]],
      ["nRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRID")], [0, 1]],
      ["rND", [nil, XSD::QName.new(NsV100R003C03SPC100, "RND")], [0, 1]],
      ["nRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRND")], [0, 1]],
      ["oIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "OIP")], [0, 1]],
      ["tIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIP")], [0, 1]],
      ["oTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "OTIR")], [0, 1]],
      ["cLIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLIP")], [0, 1]],
      ["rIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "RIO")], [0, 1]],
      ["cNIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CNIP")], [0, 1]],
      ["cLIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLIR")], [0, 1]],
      ["cNIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CNIR")], [0, 1]],
      ["cW", [nil, XSD::QName.new(NsV100R003C03SPC100, "CW")], [0, 1]],
      ["aCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACR")], [0, 1]],
      ["cR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CR")], [0, 1]],
      ["aOC_D", [nil, XSD::QName.new(NsV100R003C03SPC100, "AOC_D")], [0, 1]],
      ["aOC_E", [nil, XSD::QName.new(NsV100R003C03SPC100, "AOC_E")], [0, 1]],
      ["xEXH", [nil, XSD::QName.new(NsV100R003C03SPC100, "XEXH")], [0, 1]],
      ["xEGJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "XEGJ")], [0, 1]],
      ["iIFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "IIFC")], [0, 1]],
      ["cCBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCBS")], [0, 1]],
      ["cCNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCNR")], [0, 1]],
      ["cCBSR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCBSR")], [0, 1]],
      ["cCNRR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCNRR")], [0, 1]],
      ["tPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "TPTY")], [0, 1]],
      ["nPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NPTY")], [0, 1]],
      ["mCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCR")], [0, 1]],
      ["mWI", [nil, XSD::QName.new(NsV100R003C03SPC100, "MWI")], [0, 1]],
      ["dC", [nil, XSD::QName.new(NsV100R003C03SPC100, "DC")], [0, 1]],
      ["hOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "HOLD")], [0, 1]],
      ["eCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ECT")], [0, 1]],
      ["dAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "DAN")], [0, 1]],
      ["sTOP_SECRET", [nil, XSD::QName.new(NsV100R003C03SPC100, "STOP_SECRET")], [0, 1]],
      ["eBO", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBO")], [0, 1]],
      ["iCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICO")], [0, 1]],
      ["oUTG", [nil, XSD::QName.new(NsV100R003C03SPC100, "OUTG")], [0, 1]],
      ["iNQYH", [nil, XSD::QName.new(NsV100R003C03SPC100, "INQYH")], [0, 1]],
      ["sETCFNRTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "SETCFNRTIME")], [0, 1]],
      ["aCRTOVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACRTOVM")], [0, 1]],
      ["sETBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "SETBUSY")], [0, 1]],
      ["pWCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "PWCB")], [0, 1]],
      ["aOC_S", [nil, XSD::QName.new(NsV100R003C03SPC100, "AOC_S")], [0, 1]],
      ["mCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCID")], [0, 1]],
      ["cLIPNOSCREENING", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLIPNOSCREENING")], [0, 1]],
      ["cOLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "COLP")], [0, 1]],
      ["cOLPOVR", [nil, XSD::QName.new(NsV100R003C03SPC100, "COLPOVR")], [0, 1]],
      ["oPRREG", [nil, XSD::QName.new(NsV100R003C03SPC100, "OPRREG")], [0, 1]],
      ["sECSTA", [nil, XSD::QName.new(NsV100R003C03SPC100, "SECSTA")], [0, 1]],
      ["hRCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "HRCN")], [0, 1]],
      ["cCS", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCS")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_COMSSType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_COMSSType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_COMSSTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_COMSSTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_COMSSTables"),
    :schema_element => [
      ["table1", ["DSP_COMSSTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_COMSSTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_COMSSTable1"),
    :schema_element => [
      ["item", ["DSP_COMSSStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_COMSSStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_COMSSStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cFUVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFUVM")]],
      ["cFBVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFBVM")]],
      ["cFNRVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFNRVM")]],
      ["cFNLVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFNLVM")]],
      ["cFNRCVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFNRCVM")]],
      ["cD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CD")]],
      ["cDVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDVM")]],
      ["cIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "CIDCW")]],
      ["rIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "RIP")]],
      ["rID", [nil, XSD::QName.new(NsV100R003C03SPC100, "RID")]],
      ["nRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRID")]],
      ["rND", [nil, XSD::QName.new(NsV100R003C03SPC100, "RND")]],
      ["nRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRND")]],
      ["oIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "OIP")]],
      ["tIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIP")]],
      ["oTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "OTIR")]],
      ["cLIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLIP")]],
      ["rIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "RIO")]],
      ["cNIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CNIP")]],
      ["cLIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLIR")]],
      ["cNIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CNIR")]],
      ["cW", [nil, XSD::QName.new(NsV100R003C03SPC100, "CW")]],
      ["aCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACR")]],
      ["cR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CR")]],
      ["aOC_D", [nil, XSD::QName.new(NsV100R003C03SPC100, "AOC_D")]],
      ["aOC_E", [nil, XSD::QName.new(NsV100R003C03SPC100, "AOC_E")]],
      ["xEXH", [nil, XSD::QName.new(NsV100R003C03SPC100, "XEXH")]],
      ["xEGJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "XEGJ")]],
      ["iIFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "IIFC")]],
      ["cCBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCBS")]],
      ["cCNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCNR")]],
      ["cCBSR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCBSR")]],
      ["cCNRR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCNRR")]],
      ["tPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "TPTY")]],
      ["nPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NPTY")]],
      ["mCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCR")]],
      ["mWI", [nil, XSD::QName.new(NsV100R003C03SPC100, "MWI")]],
      ["dC", [nil, XSD::QName.new(NsV100R003C03SPC100, "DC")]],
      ["hOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "HOLD")]],
      ["eCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ECT")]],
      ["dAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "DAN")]],
      ["sTOP_SECRET", [nil, XSD::QName.new(NsV100R003C03SPC100, "STOP_SECRET")]],
      ["eBO", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBO")]],
      ["iCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICO")]],
      ["oUTG", [nil, XSD::QName.new(NsV100R003C03SPC100, "OUTG")]],
      ["iNQYH", [nil, XSD::QName.new(NsV100R003C03SPC100, "INQYH")]],
      ["sETCFNRTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "SETCFNRTIME")]],
      ["aCRTOVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACRTOVM")]],
      ["sETBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "SETBUSY")]],
      ["pWCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "PWCB")]],
      ["aOC_S", [nil, XSD::QName.new(NsV100R003C03SPC100, "AOC_S")]],
      ["mCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCID")]],
      ["cLIPNOSCREENING", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLIPNOSCREENING")]],
      ["cOLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "COLP")]],
      ["cOLPOVR", [nil, XSD::QName.new(NsV100R003C03SPC100, "COLPOVR")]],
      ["oPRREG", [nil, XSD::QName.new(NsV100R003C03SPC100, "OPRREG")]],
      ["sECSTA", [nil, XSD::QName.new(NsV100R003C03SPC100, "SECSTA")]],
      ["hRCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "HRCN")]],
      ["cCS", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCS")]],
      ["cRBT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CRBT")]]
    ]
  )

  LiteralRegistry.register(
    :class => QRY_SSType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "QRY_SSType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["QRY_SSTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => QRY_SSTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "QRY_SSTables"),
    :schema_element => [
      ["table1", ["QRY_SSTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => QRY_SSTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "QRY_SSTable1"),
    :schema_element => [
      ["item", ["QRY_SSStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => QRY_SSStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "QRY_SSStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "SIC")]],
      ["dSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "DSTR")]],
      ["sB", [nil, XSD::QName.new(NsV100R003C03SPC100, "SB")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFUType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFUType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CFUTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFUTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFUTables"),
    :schema_element => [
      ["table1", ["DSP_CFUTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFUTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFUTable1"),
    :schema_element => [
      ["item", ["DSP_CFUStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFUStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFUStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSV", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSV")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")]],
      ["dIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DIMPU")]],
      ["sUBINF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBINF")]],
      ["nOTIFYCALLER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOTIFYCALLER")]],
      ["pRVTOCER", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRVTOCER")]],
      ["pRVTODES", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRVTODES")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CLIRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CLIRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CLIRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CLIRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CLIRTables"),
    :schema_element => [
      ["table1", ["DSP_CLIRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CLIRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CLIRTable1"),
    :schema_element => [
      ["item", ["DSP_CLIRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CLIRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CLIRStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["gMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "GMODE")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_COLRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_COLRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_COLRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_COLRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_COLRTables"),
    :schema_element => [
      ["table1", ["DSP_COLRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_COLRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_COLRTable1"),
    :schema_element => [
      ["item", ["DSP_COLRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_COLRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_COLRStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["tMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "TMODE")]],
      ["sTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "STYPE")]],
      ["sHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SHOUR")]],
      ["sMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMINUTE")]],
      ["eHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EHOUR")]],
      ["eMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMINUTE")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_WAKE_UPType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_WAKE_UPType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_WAKE_UPTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_WAKE_UPTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_WAKE_UPTables"),
    :schema_element => [
      ["table1", ["DSP_WAKE_UPTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_WAKE_UPTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_WAKE_UPTable1"),
    :schema_element => [
      ["item", ["DSP_WAKE_UPStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_WAKE_UPStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_WAKE_UPStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["wCH", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCH")]],
      ["wCM", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCM")]],
      ["wCLAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCLAN")]],
      ["wCMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCMODE")]],
      ["wCWP", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCWP")]],
      ["wCWTN", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCWTN")]],
      ["wCDTN", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCDTN")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFTBType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFTBType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CFTBTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFTBTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFTBTables"),
    :schema_element => [
      ["table1", ["DSP_CFTBTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFTBTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFTBTable1"),
    :schema_element => [
      ["item", ["DSP_CFTBStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFTBStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFTBStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cFTBSV", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFTBSV")]],
      ["sVT", [nil, XSD::QName.new(NsV100R003C03SPC100, "SVT")]],
      ["cTIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTIMPU")]],
      ["cTSBIF", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTSBIF")]],
      ["pT", [nil, XSD::QName.new(NsV100R003C03SPC100, "PT")]],
      ["rIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "RIDX")]],
      ["sYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SYEAR")]],
      ["sMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMONTH")]],
      ["sDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SDATE")]],
      ["sHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SHOUR")]],
      ["sMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMINUTE")]],
      ["eYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EYEAR")]],
      ["eMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMONTH")]],
      ["eDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EDATE")]],
      ["eHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EHOUR")]],
      ["eMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMINUTE")]],
      ["dINW", [nil, XSD::QName.new(NsV100R003C03SPC100, "DINW")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_UINFOType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_UINFOType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_UINFOTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_UINFOTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_UINFOTables"),
    :schema_element => [
      ["table1", ["DSP_UINFOTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_UINFOTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_UINFOTable1"),
    :schema_element => [
      ["item", ["DSP_UINFOStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_UINFOStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_UINFOStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["iMG", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMG")]],
      ["pCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "PCI")]],
      ["wINFO", [nil, XSD::QName.new(NsV100R003C03SPC100, "WINFO")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SOCType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SOCType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_SOCTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SOCTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SOCTables"),
    :schema_element => [
      ["table1", ["DSP_SOCTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SOCTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SOCTable1"),
    :schema_element => [
      ["item", ["DSP_SOCStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SOCStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SOCStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sOCIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCIDX")]],
      ["sOIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOIMPU")]],
      ["sYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SYEAR")]],
      ["sMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMONTH")]],
      ["sDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SDATE")]],
      ["sHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SHOUR")]],
      ["sMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMINUTE")]],
      ["eYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EYEAR")]],
      ["eMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMONTH")]],
      ["eDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EDATE")]],
      ["eHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EHOUR")]],
      ["eMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMINUTE")]],
      ["sOCPER", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCPER")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_DN_CALL_OUT_ALLOWType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DN_CALL_OUT_ALLOWType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_DN_CALL_OUT_ALLOWTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_DN_CALL_OUT_ALLOWTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DN_CALL_OUT_ALLOWTables"),
    :schema_element => [
      ["table1", ["DSP_DN_CALL_OUT_ALLOWTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_DN_CALL_OUT_ALLOWTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DN_CALL_OUT_ALLOWTable1"),
    :schema_element => [
      ["item", ["DSP_DN_CALL_OUT_ALLOWStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_DN_CALL_OUT_ALLOWStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DN_CALL_OUT_ALLOWStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cOAD", [nil, XSD::QName.new(NsV100R003C03SPC100, "COAD")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_DNDType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DNDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_DNDTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_DNDTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DNDTables"),
    :schema_element => [
      ["table1", ["DSP_DNDTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_DNDTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DNDTable1"),
    :schema_element => [
      ["item", ["DSP_DNDStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_DNDStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DNDStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sG", [nil, XSD::QName.new(NsV100R003C03SPC100, "SG")]],
      ["sYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SYEAR")]],
      ["sMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMONTH")]],
      ["sDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SDATE")]],
      ["sHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SHOUR")]],
      ["sMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMINUTE")]],
      ["eYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EYEAR")]],
      ["eMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMONTH")]],
      ["eDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EDATE")]],
      ["eHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EHOUR")]],
      ["eMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMINUTE")]],
      ["eMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMODE")]],
      ["dNDWP", [nil, XSD::QName.new(NsV100R003C03SPC100, "DNDWP")]],
      ["sETMON", [nil, XSD::QName.new(NsV100R003C03SPC100, "SETMON")]],
      ["sETDAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "SETDAY")]],
      ["tREAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "TREAT")]],
      ["bTREAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "BTREAT")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CBAType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CBAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CBATables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CBATables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CBATables"),
    :schema_element => [
      ["table1", ["DSP_CBATable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CBATable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CBATable1"),
    :schema_element => [
      ["item", ["DSP_CBAStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CBAStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CBAStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cBABLV", [nil, XSD::QName.new(NsV100R003C03SPC100, "CBABLV")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_TMP_LINType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_TMP_LINType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_TMP_LINTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_TMP_LINTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_TMP_LINTables"),
    :schema_element => [
      ["table1", ["DSP_TMP_LINTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_TMP_LINTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_TMP_LINTable1"),
    :schema_element => [
      ["item", ["DSP_TMP_LINStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_TMP_LINStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_TMP_LINStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["yEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "YEAR")]],
      ["mONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "MONTH")]],
      ["dAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "DAY")]],
      ["tLDUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "TLDUR")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CODEC_CNTRLType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CODEC_CNTRLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CODEC_CNTRLTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CODEC_CNTRLTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CODEC_CNTRLTables"),
    :schema_element => [
      ["table1", ["DSP_CODEC_CNTRLTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CODEC_CNTRLTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CODEC_CNTRLTable1"),
    :schema_element => [
      ["item", ["DSP_CODEC_CNTRLStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CODEC_CNTRLStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CODEC_CNTRLStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["g711_64K_A_LAW", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711_64K_A_LAW")]],
      ["g711_64K_U_LAW", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711_64K_U_LAW")]],
      ["g723", [nil, XSD::QName.new(NsV100R003C03SPC100, "G723")]],
      ["g726", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726")]],
      ["g729", [nil, XSD::QName.new(NsV100R003C03SPC100, "G729")]],
      ["aMR", [nil, XSD::QName.new(NsV100R003C03SPC100, "AMR")]],
      ["eVRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "EVRC")]],
      ["eVRCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "EVRCB")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SICType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SICType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_SICTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SICTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SICTables"),
    :schema_element => [
      ["table1", ["DSP_SICTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SICTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SICTable1"),
    :schema_element => [
      ["item", ["DSP_SICStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SICStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SICStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sICIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SICIDX")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]],
      ["sIIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "SIIMPU")]],
      ["sYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SYEAR")]],
      ["sMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMONTH")]],
      ["sDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SDATE")]],
      ["sHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SHOUR")]],
      ["sMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMINUTE")]],
      ["eYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EYEAR")]],
      ["eMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMONTH")]],
      ["eDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EDATE")]],
      ["eHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EHOUR")]],
      ["eMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMINUTE")]],
      ["sICPER", [nil, XSD::QName.new(NsV100R003C03SPC100, "SICPER")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFSType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFSType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CFSTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFSTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFSTables"),
    :schema_element => [
      ["table1", ["DSP_CFSTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFSTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFSTable1"),
    :schema_element => [
      ["item", ["DSP_CFSStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFSStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFSStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["eP", [nil, XSD::QName.new(NsV100R003C03SPC100, "EP")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]],
      ["cSIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSIMPU")]],
      ["sHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SHOUR")]],
      ["sMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMINUTE")]],
      ["eHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EHOUR")]],
      ["eMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMINUTE")]],
      ["oFWEEK", [nil, XSD::QName.new(NsV100R003C03SPC100, "OFWEEK")]],
      ["fTIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "FTIMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_DN_CALL_OUT_BARType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DN_CALL_OUT_BARType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_DN_CALL_OUT_BARTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_DN_CALL_OUT_BARTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DN_CALL_OUT_BARTables"),
    :schema_element => [
      ["table1", ["DSP_DN_CALL_OUT_BARTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_DN_CALL_OUT_BARTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DN_CALL_OUT_BARTable1"),
    :schema_element => [
      ["item", ["DSP_DN_CALL_OUT_BARStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_DN_CALL_OUT_BARStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DN_CALL_OUT_BARStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cOBPNO", [nil, XSD::QName.new(NsV100R003C03SPC100, "COBPNO")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFSBType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFSBType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CFSBTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFSBTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFSBTables"),
    :schema_element => [
      ["table1", ["DSP_CFSBTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFSBTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFSBTable1"),
    :schema_element => [
      ["item", ["DSP_CFSBStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFSBStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFSBStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cSBSVT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSBSVT")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFBType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFBType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CFBTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFBTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFBTables"),
    :schema_element => [
      ["table1", ["DSP_CFBTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFBTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFBTable1"),
    :schema_element => [
      ["item", ["DSP_CFBStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFBStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFBStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSV", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSV")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")]],
      ["dIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DIMPU")]],
      ["sUBINF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBINF")]],
      ["nOTIFYCALLER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOTIFYCALLER")]],
      ["nOTIFYFORWARDER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOTIFYFORWARDER")]],
      ["pRVTOCER", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRVTOCER")]],
      ["pRVTODES", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRVTODES")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFNRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CFNRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFNRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNRTables"),
    :schema_element => [
      ["table1", ["DSP_CFNRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFNRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNRTable1"),
    :schema_element => [
      ["item", ["DSP_CFNRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFNRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNRStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSV", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSV")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")]],
      ["dIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DIMPU")]],
      ["sUBINF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBINF")]],
      ["nOTIFYCALLER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOTIFYCALLER")]],
      ["nOTIFYFORWARDER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOTIFYFORWARDER")]],
      ["pRVTOCER", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRVTOCER")]],
      ["pRVTODES", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRVTODES")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFNLType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CFNLTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFNLTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNLTables"),
    :schema_element => [
      ["table1", ["DSP_CFNLTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFNLTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNLTable1"),
    :schema_element => [
      ["item", ["DSP_CFNLStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFNLStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNLStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSV", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSV")]],
      ["dIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DIMPU")]],
      ["sUBINF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBINF")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFNRCType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNRCType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CFNRCTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFNRCTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNRCTables"),
    :schema_element => [
      ["table1", ["DSP_CFNRCTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFNRCTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNRCTable1"),
    :schema_element => [
      ["item", ["DSP_CFNRCStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFNRCStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNRCStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSV", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSV")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")]],
      ["dIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DIMPU")]],
      ["sUBINF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBINF")]],
      ["nOTIFYCALLER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOTIFYCALLER")]],
      ["nOTIFYFORWARDER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOTIFYFORWARDER")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CWCFNRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CWCFNRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CWCFNRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CWCFNRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CWCFNRTables"),
    :schema_element => [
      ["table1", ["DSP_CWCFNRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CWCFNRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CWCFNRTable1"),
    :schema_element => [
      ["item", ["DSP_CWCFNRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CWCFNRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CWCFNRStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSV", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSV")]],
      ["dIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DIMPU")]],
      ["sUBINF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBINF")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_MRINGMODEType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_MRINGMODEType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_MRINGMODETables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_MRINGMODETables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_MRINGMODETables"),
    :schema_element => [
      ["table1", ["DSP_MRINGMODETable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_MRINGMODETable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_MRINGMODETable1"),
    :schema_element => [
      ["item", ["DSP_MRINGMODEStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_MRINGMODEStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_MRINGMODEStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["mRINGMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MRINGMODE")]],
      ["rELBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "RELBUSY")]],
      ["rELREJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "RELREJ")]],
      ["rINGTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "RINGTIME")]],
      ["cFMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFMODE")]],
      ["iMPU1", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU1")]],
      ["iMPU2", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU2")]],
      ["iMPU3", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU3")]],
      ["iMPU4", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU4")]],
      ["iMPU5", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU5")]],
      ["iMPU6", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU6")]],
      ["iMPU7", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU7")]],
      ["iMPU8", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU8")]],
      ["iMPU9", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU9")]],
      ["iMPU10", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU10")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CISType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CISType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CISTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CISTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CISTables"),
    :schema_element => [
      ["table1", ["DSP_CISTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CISTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CISTable1"),
    :schema_element => [
      ["item", ["DSP_CISStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CISStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CISStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["dUALRING", [nil, XSD::QName.new(NsV100R003C03SPC100, "DUALRING")]],
      ["iMPUPC", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPUPC")]],
      ["rELBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "RELBUSY")]],
      ["rELREJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "RELREJ")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CFDATAType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CFDATAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CFDATATables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CFDATATables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CFDATATables"),
    :schema_element => [
      ["table1", ["LST_CFDATATable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CFDATATable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CFDATATable1"),
    :schema_element => [
      ["item", ["LST_CFDATAStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CFDATAStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CFDATAStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cFR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFR")]],
      ["dIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DIMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NUMCHGType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_NUMCHGType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_NUMCHGTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NUMCHGTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_NUMCHGTables"),
    :schema_element => [
      ["table1", ["LST_NUMCHGTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NUMCHGTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_NUMCHGTable1"),
    :schema_element => [
      ["item", ["LST_NUMCHGStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NUMCHGStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_NUMCHGStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "NIMPU")]],
      ["cMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CMODE")]],
      ["sMFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMFLAG")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_BLKNUMType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_BLKNUMType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_BLKNUMTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_BLKNUMTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_BLKNUMTables"),
    :schema_element => [
      ["table1", ["LST_BLKNUMTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_BLKNUMTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_BLKNUMTable1"),
    :schema_element => [
      ["item", ["LST_BLKNUMStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_BLKNUMStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_BLKNUMStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "BIMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_WTNUMType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WTNUMType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_WTNUMTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_WTNUMTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WTNUMTables"),
    :schema_element => [
      ["table1", ["LST_WTNUMTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_WTNUMTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WTNUMTable1"),
    :schema_element => [
      ["item", ["LST_WTNUMStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_WTNUMStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WTNUMStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["wTIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "WTIMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_OWSBRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_OWSBRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_OWSBRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_OWSBRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_OWSBRTables"),
    :schema_element => [
      ["table1", ["LST_OWSBRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_OWSBRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_OWSBRTable1"),
    :schema_element => [
      ["item", ["LST_OWSBRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_OWSBRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_OWSBRStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["uS", [nil, XSD::QName.new(NsV100R003C03SPC100, "US")]],
      ["lTOS", [nil, XSD::QName.new(NsV100R003C03SPC100, "LTOS")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_STRATEGYType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_STRATEGYType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_STRATEGYTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_STRATEGYTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_STRATEGYTables"),
    :schema_element => [
      ["table1", ["LST_STRATEGYTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_STRATEGYTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_STRATEGYTable1"),
    :schema_element => [
      ["item", ["LST_STRATEGYStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_STRATEGYStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_STRATEGYStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["gREENSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "GREENSTR")]],
      ["rEDSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "REDSTR")]],
      ["oTHSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "OTHSTR")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_GREENNUMType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_GREENNUMType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_GREENNUMTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_GREENNUMTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_GREENNUMTables"),
    :schema_element => [
      ["table1", ["LST_GREENNUMTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_GREENNUMTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_GREENNUMTable1"),
    :schema_element => [
      ["item", ["LST_GREENNUMStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_GREENNUMStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_GREENNUMStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["gIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "GIMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_REDNUMType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_REDNUMType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_REDNUMTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_REDNUMTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_REDNUMTables"),
    :schema_element => [
      ["table1", ["LST_REDNUMTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_REDNUMTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_REDNUMTable1"),
    :schema_element => [
      ["item", ["LST_REDNUMStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_REDNUMStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_REDNUMStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["rIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "RIMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BAOCType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BAOCType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_BAOCTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BAOCTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BAOCTables"),
    :schema_element => [
      ["table1", ["DSP_BAOCTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BAOCTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BAOCTable1"),
    :schema_element => [
      ["item", ["DSP_BAOCStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BAOCStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BAOCStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BOICType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BOICType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_BOICTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BOICTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BOICTables"),
    :schema_element => [
      ["table1", ["DSP_BOICTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BOICTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BOICTable1"),
    :schema_element => [
      ["item", ["DSP_BOICStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BOICStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BOICStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BOICEXHCType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BOICEXHCType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_BOICEXHCTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BOICEXHCTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BOICEXHCTables"),
    :schema_element => [
      ["table1", ["DSP_BOICEXHCTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BOICEXHCTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BOICEXHCTable1"),
    :schema_element => [
      ["item", ["DSP_BOICEXHCStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BOICEXHCStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BOICEXHCStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BAICType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BAICType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_BAICTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BAICTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BAICTables"),
    :schema_element => [
      ["table1", ["DSP_BAICTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BAICTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BAICTable1"),
    :schema_element => [
      ["item", ["DSP_BAICStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BAICStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BAICStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BICROMType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BICROMType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_BICROMTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BICROMTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BICROMTables"),
    :schema_element => [
      ["table1", ["DSP_BICROMTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BICROMTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BICROMTable1"),
    :schema_element => [
      ["item", ["DSP_BICROMStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BICROMStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BICROMStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SPEED_DIALType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SPEED_DIALType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_SPEED_DIALTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SPEED_DIALTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SPEED_DIALTables"),
    :schema_element => [
      ["table1", ["DSP_SPEED_DIALTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SPEED_DIALTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SPEED_DIALTable1"),
    :schema_element => [
      ["item", ["DSP_SPEED_DIALStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SPEED_DIALStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SPEED_DIALStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["aBBRNUMBER", [nil, XSD::QName.new(NsV100R003C03SPC100, "ABBRNUMBER")], [0, 1]],
      ["dESTIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DESTIMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_GRNCALLType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_GRNCALLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_GRNCALLTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_GRNCALLTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_GRNCALLTables"),
    :schema_element => [
      ["table1", ["DSP_GRNCALLTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_GRNCALLTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_GRNCALLTable1"),
    :schema_element => [
      ["item", ["DSP_GRNCALLStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_GRNCALLStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_GRNCALLStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "BIMPU")]],
      ["bMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "BMODE")]],
      ["tHRPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "THRPTY")]],
      ["tHRPTYTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "THRPTYTIME")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_AUTOCONType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_AUTOCONType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_AUTOCONTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_AUTOCONTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_AUTOCONTables"),
    :schema_element => [
      ["table1", ["DSP_AUTOCONTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_AUTOCONTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_AUTOCONTable1"),
    :schema_element => [
      ["item", ["DSP_AUTOCONStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_AUTOCONStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_AUTOCONStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sRVIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "SRVIMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_NIGHTSRVType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_NIGHTSRVType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_NIGHTSRVTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_NIGHTSRVTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_NIGHTSRVTables"),
    :schema_element => [
      ["table1", ["DSP_NIGHTSRVTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_NIGHTSRVTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_NIGHTSRVTable1"),
    :schema_element => [
      ["item", ["DSP_NIGHTSRVStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_NIGHTSRVStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_NIGHTSRVStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sRVIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "SRVIMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BACKNUMType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BACKNUMType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_BACKNUMTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BACKNUMTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BACKNUMTables"),
    :schema_element => [
      ["table1", ["DSP_BACKNUMTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BACKNUMTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BACKNUMTable1"),
    :schema_element => [
      ["item", ["DSP_BACKNUMStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BACKNUMStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_BACKNUMStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sRVIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "SRVIMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ABSENTType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ABSENTType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_ABSENTTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ABSENTTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ABSENTTables"),
    :schema_element => [
      ["table1", ["DSP_ABSENTTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ABSENTTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ABSENTTable1"),
    :schema_element => [
      ["item", ["DSP_ABSENTStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ABSENTStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ABSENTStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["vOICE", [nil, XSD::QName.new(NsV100R003C03SPC100, "VOICE")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ASIType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ASIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_ASITables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ASITables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ASITables"),
    :schema_element => [
      ["table1", ["DSP_ASITable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ASITable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ASITable1"),
    :schema_element => [
      ["item", ["DSP_ASIStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ASIStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ASIStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sTATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "STATE")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_HOTLINEType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_HOTLINEType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_HOTLINETables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_HOTLINETables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_HOTLINETables"),
    :schema_element => [
      ["table1", ["DSP_HOTLINETable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_HOTLINETable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_HOTLINETable1"),
    :schema_element => [
      ["item", ["DSP_HOTLINEStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_HOTLINEStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_HOTLINEStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["hLITYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "HLITYPE")]],
      ["hLIIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "HLIIMPU")]],
      ["hLIDELAYTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "HLIDELAYTIME")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CETMCIDType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CETMCIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CETMCIDTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CETMCIDTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CETMCIDTables"),
    :schema_element => [
      ["table1", ["DSP_CETMCIDTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CETMCIDTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CETMCIDTable1"),
    :schema_element => [
      ["item", ["DSP_CETMCIDStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CETMCIDStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CETMCIDStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["pHASE", [nil, XSD::QName.new(NsV100R003C03SPC100, "PHASE")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_MCNType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_MCNType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_MCNTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_MCNTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_MCNTables"),
    :schema_element => [
      ["table1", ["DSP_MCNTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_MCNTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_MCNTable1"),
    :schema_element => [
      ["item", ["DSP_MCNStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_MCNStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_MCNStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "BIMPU")]],
      ["bNTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "BNTY")]],
      ["nANTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NANTY")]],
      ["nRCNTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRCNTY")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SUBSType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_SUBSType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_SUBSTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SUBSTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_SUBSTables"),
    :schema_element => [
      ["table1", ["LST_SUBSTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SUBSTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_SUBSTable1"),
    :schema_element => [
      ["item", ["LST_SUBSStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SUBSStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_SUBSStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sUBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBS")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ONEKEYType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ONEKEYType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_ONEKEYTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ONEKEYTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ONEKEYTables"),
    :schema_element => [
      ["table1", ["DSP_ONEKEYTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ONEKEYTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ONEKEYTable1"),
    :schema_element => [
      ["item", ["DSP_ONEKEYStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ONEKEYStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ONEKEYStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["dUALRING", [nil, XSD::QName.new(NsV100R003C03SPC100, "DUALRING")]],
      ["iMPUPC", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPUPC")]],
      ["rELBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "RELBUSY")]],
      ["rELREJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "RELREJ")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_IBDSType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_IBDSType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_IBDSTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_IBDSTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_IBDSTables"),
    :schema_element => [
      ["table1", ["DSP_IBDSTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_IBDSTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_IBDSTable1"),
    :schema_element => [
      ["item", ["DSP_IBDSStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_IBDSStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_IBDSStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["vIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU")]],
      ["sUBNETID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID")]]
    ]
  )

  LiteralRegistry.register(
    :class => QRY_IBDSType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "QRY_IBDSType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["QRY_IBDSTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => QRY_IBDSTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "QRY_IBDSTables"),
    :schema_element => [
      ["table1", ["QRY_IBDSTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => QRY_IBDSTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "QRY_IBDSTable1"),
    :schema_element => [
      ["item", ["QRY_IBDSStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => QRY_IBDSStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "QRY_IBDSStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["vIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU")]],
      ["sUBNETID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_OBDSType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_OBDSType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_OBDSTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_OBDSTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_OBDSTables"),
    :schema_element => [
      ["table1", ["DSP_OBDSTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_OBDSTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_OBDSTable1"),
    :schema_element => [
      ["item", ["DSP_OBDSStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_OBDSStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_OBDSStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["vIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU")]],
      ["sUBNETID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NPASType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_NPASType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_NPASTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NPASTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_NPASTables"),
    :schema_element => [
      ["table1", ["LST_NPASTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NPASTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_NPASTable1"),
    :schema_element => [
      ["item", ["LST_NPASStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NPASStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_NPASStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nTN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTN")]],
      ["nSIPN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIPN")]],
      ["pYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "PYEAR")]],
      ["pMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "PMONTH")]],
      ["pDAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "PDAY")]],
      ["pHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "PHOUR")]],
      ["pMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "PMINUTE")]],
      ["aYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "AYEAR")]],
      ["aMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "AMONTH")]],
      ["aDAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "ADAY")]],
      ["aHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "AHOUR")]],
      ["aMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "AMINUTE")]],
      ["eYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EYEAR")]],
      ["eMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMONTH")]],
      ["eDAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "EDAY")]],
      ["pAMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "PAMODE")]],
      ["aAMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "AAMODE")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_GOIRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_GOIRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_GOIRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_GOIRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_GOIRTables"),
    :schema_element => [
      ["table1", ["DSP_GOIRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_GOIRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_GOIRTable1"),
    :schema_element => [
      ["item", ["DSP_GOIRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_GOIRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_GOIRStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["gMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "GMODE")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_MOIRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_MOIRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_MOIRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_MOIRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_MOIRTables"),
    :schema_element => [
      ["table1", ["DSP_MOIRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_MOIRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_MOIRTable1"),
    :schema_element => [
      ["item", ["DSP_MOIRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_MOIRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_MOIRStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["mMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MMODE")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_TIRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_TIRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_TIRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_TIRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_TIRTables"),
    :schema_element => [
      ["table1", ["DSP_TIRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_TIRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_TIRTable1"),
    :schema_element => [
      ["item", ["DSP_TIRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_TIRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_TIRStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["tMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "TMODE")]],
      ["sTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "STYPE")]],
      ["sHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SHOUR")]],
      ["sMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMINUTE")]],
      ["eHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EHOUR")]],
      ["eMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMINUTE")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_DSTRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DSTRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_DSTRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_DSTRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DSTRTables"),
    :schema_element => [
      ["table1", ["DSP_DSTRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_DSTRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DSTRTable1"),
    :schema_element => [
      ["item", ["DSP_DSTRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_DSTRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_DSTRStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["pATTERN", [nil, XSD::QName.new(NsV100R003C03SPC100, "PATTERN")], [0, 1]],
      ["cWPATTERN", [nil, XSD::QName.new(NsV100R003C03SPC100, "CWPATTERN")], [0, 1]],
      ["sIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "SIMPU")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VIMPUType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_VIMPUType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_VIMPUTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VIMPUTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_VIMPUTables"),
    :schema_element => [
      ["table1", ["LST_VIMPUTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VIMPUTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_VIMPUTable1"),
    :schema_element => [
      ["item", ["LST_VIMPUStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VIMPUStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_VIMPUStruct1"),
    :schema_element => [
      ["vIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU")], [0, 1]],
      ["sUBNETID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID")], [0, 1]],
      ["oCPFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "OCPFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IBDVIMPUType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_IBDVIMPUType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_IBDVIMPUTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IBDVIMPUTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_IBDVIMPUTables"),
    :schema_element => [
      ["table1", ["LST_IBDVIMPUTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IBDVIMPUTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_IBDVIMPUTable1"),
    :schema_element => [
      ["item", ["LST_IBDVIMPUStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IBDVIMPUStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_IBDVIMPUStruct1"),
    :schema_element => [
      ["sUBNETID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID")]],
      ["vIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PRKSBRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PRKSBRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_PRKSBRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PRKSBRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PRKSBRTables"),
    :schema_element => [
      ["table1", ["LST_PRKSBRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PRKSBRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PRKSBRTable1"),
    :schema_element => [
      ["item", ["LST_PRKSBRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PRKSBRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PRKSBRStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "STYPE")]],
      ["tREAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "TREAT")]],
      ["rNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "RNUM")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NUMINVAType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_NUMINVAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_NUMINVATables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NUMINVATables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_NUMINVATables"),
    :schema_element => [
      ["table1", ["LST_NUMINVATable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NUMINVATable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_NUMINVATable1"),
    :schema_element => [
      ["item", ["LST_NUMINVAStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NUMINVAStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_NUMINVAStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["dURATION", [nil, XSD::QName.new(NsV100R003C03SPC100, "DURATION")]],
      ["tN", [nil, XSD::QName.new(NsV100R003C03SPC100, "TN")]],
      ["yEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "YEAR")]],
      ["mONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "MONTH")]],
      ["dAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "DAY")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IBDSUBNUMType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_IBDSUBNUMType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_IBDSUBNUMTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IBDSUBNUMTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_IBDSUBNUMTables"),
    :schema_element => [
      ["table1", ["LST_IBDSUBNUMTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IBDSUBNUMTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_IBDSUBNUMTable1"),
    :schema_element => [
      ["item", ["LST_IBDSUBNUMStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IBDSUBNUMStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_IBDSUBNUMStruct1"),
    :schema_element => [
      ["hOMENUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "HOMENUM")]],
      ["sUBID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CALLERIDType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CALLERIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CALLERIDTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CALLERIDTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CALLERIDTables"),
    :schema_element => [
      ["table1", ["DSP_CALLERIDTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CALLERIDTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CALLERIDTable1"),
    :schema_element => [
      ["item", ["DSP_CALLERIDStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CALLERIDStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CALLERIDStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "BIMPU")]],
      ["aCTIVE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTIVE")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_IPTVVCType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_IPTVVCType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_IPTVVCTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_IPTVVCTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_IPTVVCTables"),
    :schema_element => [
      ["table1", ["DSP_IPTVVCTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_IPTVVCTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_IPTVVCTable1"),
    :schema_element => [
      ["item", ["DSP_IPTVVCStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_IPTVVCStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_IPTVVCStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sTBIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "STBIMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_NPType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_NPType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_NPTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_NPTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_NPTables"),
    :schema_element => [
      ["table1", ["DSP_NPTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_NPTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_NPTable1"),
    :schema_element => [
      ["item", ["DSP_NPStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_NPStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_NPStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["pIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "PIMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SECType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SECType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_SECTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SECTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SECTables"),
    :schema_element => [
      ["table1", ["DSP_SECTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SECTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SECTable1"),
    :schema_element => [
      ["item", ["DSP_SECStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SECStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SECStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sECIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "SECIMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SBType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SBType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_SBTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SBTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SBTables"),
    :schema_element => [
      ["table1", ["DSP_SBTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SBTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SBTable1"),
    :schema_element => [
      ["item", ["DSP_SBStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SBStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SBStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["pRIONUM", ["[]", XSD::QName.new(NsV100R003C03SPC100, "PRIONUM")], [1, 25]],
      ["sTARTTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "STARTTIME")]],
      ["sTOPTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "STOPTIME")]],
      ["rECURRENCE", [nil, XSD::QName.new(NsV100R003C03SPC100, "RECURRENCE")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_FILCRITType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_FILCRITType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_FILCRITTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_FILCRITTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_FILCRITTables"),
    :schema_element => [
      ["table1", ["LST_FILCRITTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_FILCRITTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_FILCRITTable1"),
    :schema_element => [
      ["item", ["LST_FILCRITStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_FILCRITStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_FILCRITStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "NAME")], [0, 1]],
      ["cOMBIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "COMBIN")]],
      ["cALLERINFO", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLERINFO")]],
      ["pRESTATUS", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRESTATUS")]],
      ["hOLDGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "HOLDGRP")]],
      ["dATEMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "DATEMODE")]],
      ["mONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "MONTH")]],
      ["oRDER", [nil, XSD::QName.new(NsV100R003C03SPC100, "ORDER")]],
      ["dAYOFWEEK", [nil, XSD::QName.new(NsV100R003C03SPC100, "DAYOFWEEK")]],
      ["sTARTDAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "STARTDAY")]],
      ["eNDDAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "ENDDAY")]],
      ["sTARTDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "STARTDATE")]],
      ["eNDDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ENDDATE")]],
      ["sTARTTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "STARTTIME")]],
      ["eNDTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "ENDTIME")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CALLERINFOType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CALLERINFOType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CALLERINFOTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CALLERINFOTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CALLERINFOTables"),
    :schema_element => [
      ["table1", ["LST_CALLERINFOTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CALLERINFOTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CALLERINFOTable1"),
    :schema_element => [
      ["item", ["LST_CALLERINFOStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CALLERINFOStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CALLERINFOStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cALLERNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLERNUM")], [0, 1]],
      ["cALLERTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLERTYPE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PRESSTUSType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PRESSTUSType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_PRESSTUSTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PRESSTUSTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PRESSTUSTables"),
    :schema_element => [
      ["table1", ["LST_PRESSTUSTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PRESSTUSTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PRESSTUSTable1"),
    :schema_element => [
      ["item", ["LST_PRESSTUSStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PRESSTUSStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PRESSTUSStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["pRESSTUS", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRESSTUS")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ONENUMType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ONENUMType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_ONENUMTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ONENUMTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ONENUMTables"),
    :schema_element => [
      ["table1", ["LST_ONENUMTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ONENUMTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ONENUMTable1"),
    :schema_element => [
      ["item", ["LST_ONENUMStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ONENUMStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ONENUMStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["iDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "IDX")], [0, 1]],
      ["pRIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRIO")], [0, 1]],
      ["sRVTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SRVTYPE")]],
      ["nUMTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NUMTYPE")]],
      ["rELNUMLST", ["[]", XSD::QName.new(NsV100R003C03SPC100, "RELNUMLST")], [1, 3]],
      ["pROMODE302", [nil, XSD::QName.new(NsV100R003C03SPC100, "PROMODE302")]],
      ["rINGTONE", [nil, XSD::QName.new(NsV100R003C03SPC100, "RINGTONE")]],
      ["cWRTONE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CWRTONE")]],
      ["rTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTYPE")]],
      ["cFMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFMODE")]],
      ["fLTCOMB", [nil, XSD::QName.new(NsV100R003C03SPC100, "FLTCOMB")]],
      ["cALLEEDSPNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLEEDSPNUM")]],
      ["aSSIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "ASSIDX")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSLSTType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ASSLSTType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_ASSLSTTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSLSTTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ASSLSTTables"),
    :schema_element => [
      ["table1", ["LST_ASSLSTTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSLSTTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ASSLSTTable1"),
    :schema_element => [
      ["item", ["LST_ASSLSTStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSLSTStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ASSLSTStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["aSSIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "ASSIDX")], [0, 1]],
      ["aSSTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ASSTYPE")], [0, 1]],
      ["aSSDATA", ["LST_ASSLSTStruct1::ASSDATA", XSD::QName.new(NsV100R003C03SPC100, "ASSDATA")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSLSTStruct1::ASSDATA::AND,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "AND"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["aN", [nil, XSD::QName.new(NsV100R003C03SPC100, "AN")]],
      ["uT", [nil, XSD::QName.new(NsV100R003C03SPC100, "UT")]],
      ["nA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NA")]],
      ["nRT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSLSTStruct1::ASSDATA,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ASSDATA"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["aCTED", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTED")]],
      ["dSPNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "DSPNUM")]],
      ["pRMNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRMNUM")]],
      ["mAXNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "MAXNUM")]],
      ["rTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTIME")]],
      ["aND", ["LST_ASSLSTStruct1::ASSDATA::AND[]", XSD::QName.new(NsV100R003C03SPC100, "AND")], [1, 10]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CUGINFOType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CUGINFOType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CUGINFOTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CUGINFOTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CUGINFOTables"),
    :schema_element => [
      ["table1", ["LST_CUGINFOTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CUGINFOTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CUGINFOTable1"),
    :schema_element => [
      ["item", ["LST_CUGINFOStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CUGINFOStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CUGINFOStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nETWORKID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NETWORKID")]],
      ["iNTERLOCKCODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "INTERLOCKCODE")]],
      ["pRIORITY", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRIORITY")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_PINType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_PINType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_PINTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_PINTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_PINTables"),
    :schema_element => [
      ["table1", ["DSP_PINTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_PINTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_PINTable1"),
    :schema_element => [
      ["item", ["DSP_PINStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_PINStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_PINStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sTATUS", [nil, XSD::QName.new(NsV100R003C03SPC100, "STATUS")]],
      ["iNCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "INCNT")]],
      ["lCKTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "LCKTIME")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PINMODEType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PINMODEType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_PINMODETables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PINMODETables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PINMODETables"),
    :schema_element => [
      ["table1", ["LST_PINMODETable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PINMODETable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PINMODETable1"),
    :schema_element => [
      ["item", ["LST_PINMODEStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PINMODEStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PINMODEStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["uPF", [nil, XSD::QName.new(NsV100R003C03SPC100, "UPF")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CDIVBARGRPType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CDIVBARGRPType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CDIVBARGRPTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CDIVBARGRPTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CDIVBARGRPTables"),
    :schema_element => [
      ["table1", ["LST_CDIVBARGRPTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CDIVBARGRPTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CDIVBARGRPTable1"),
    :schema_element => [
      ["item", ["LST_CDIVBARGRPStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CDIVBARGRPStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CDIVBARGRPStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cDIVBARGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDIVBARGRP")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SS_USE_ALLOWEDType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SS_USE_ALLOWEDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_SS_USE_ALLOWEDTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SS_USE_ALLOWEDTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SS_USE_ALLOWEDTables"),
    :schema_element => [
      ["table1", ["DSP_SS_USE_ALLOWEDTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SS_USE_ALLOWEDTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SS_USE_ALLOWEDTable1"),
    :schema_element => [
      ["item", ["DSP_SS_USE_ALLOWEDStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SS_USE_ALLOWEDStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SS_USE_ALLOWEDStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nSCFU", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFU")]],
      ["nSCFUVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFUVM")]],
      ["nSCFB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFB")]],
      ["nSCFBVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFBVM")]],
      ["nSCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNR")]],
      ["nSCFNRVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRVM")]],
      ["nSCFNL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNL")]],
      ["nSCFNLVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNLVM")]],
      ["nSCD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCD")]],
      ["nSCDVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCDVM")]],
      ["nSCFNRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRC")]],
      ["nSCFNRCVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRCVM")]],
      ["nSCIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIDCW")]],
      ["nSRIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIP")]],
      ["nSRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRID")]],
      ["nSNRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRID")]],
      ["nSRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRND")]],
      ["nSNRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRND")]],
      ["nSOIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOIP")]],
      ["nSGOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGOIR")]],
      ["nSMOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMOIR")]],
      ["nSTIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIP")]],
      ["nSTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIR")]],
      ["nSOTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOTIR")]],
      ["nSCLIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIP")]],
      ["nSCLIPNOSCREENING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIPNOSCREENING")]],
      ["nSRIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIO")]],
      ["nSCNIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIP")]],
      ["nSCLIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIR")]],
      ["nSCNIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIR")]],
      ["nSCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCW")]],
      ["nSCCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCW")]],
      ["nSACR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACR")]],
      ["nSCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCR")]],
      ["nSWAKE_UP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSWAKE_UP")]],
      ["nSAOC_D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_D")]],
      ["nSAOC_E", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_E")]],
      ["nSXEXH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEXH")]],
      ["nSXEGJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEGJ")]],
      ["nSCWCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCWCFNR")]],
      ["nSIIFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIIFC")]],
      ["nSDN_CALL_OUT_BAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_BAR")]],
      ["nSCCBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBS")]],
      ["nSCCNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNR")]],
      ["nSCCBSR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBSR")]],
      ["nSCCNRR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNRR")]],
      ["nS3PTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NS3PTY")]],
      ["nSNPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNPTY")]],
      ["nSDND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDND")]],
      ["nSMCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCR")]],
      ["nSCBA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBA")]],
      ["nSTMP_LIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTMP_LIN")]],
      ["nSCODEC_CNTRL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCODEC_CNTRL")]],
      ["nSMWI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMWI")]],
      ["nSDC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDC")]],
      ["nSHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOLD")]],
      ["nSECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSECT")]],
      ["nSCFTB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFTB")]],
      ["nSDAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDAN")]],
      ["nSSTOP_SECRET", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSTOP_SECRET")]],
      ["nSMCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCID")]],
      ["nSEBO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSEBO")]],
      ["nSICO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICO")]],
      ["nSOUTG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTG")]],
      ["nSINQYH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINQYH")]],
      ["nSUINFO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSUINFO")]],
      ["nSDN_CALL_OUT_ALLOW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_ALLOW")]],
      ["nSSIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSIC")]],
      ["nSSOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSOC")]],
      ["nSSETCFNRTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETCFNRTIME")]],
      ["nSCFS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFS")]],
      ["nSCFSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFSB")]],
      ["nSFAX", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFAX")]],
      ["nSABRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABRC")]],
      ["nSACRTOVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACRTOVM")]],
      ["nSPREPAID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPREPAID")]],
      ["nSCRBT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCRBT")]],
      ["nSICB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICB")]],
      ["nSMRINGING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMRINGING")]],
      ["nSCIS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIS")]],
      ["nSCBEG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBEG")]],
      ["nSCOLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLP")]],
      ["nSCOLR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLR")]],
      ["nSCOLPOVR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLPOVR")]],
      ["nSBAOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAOC")]],
      ["nSBOIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOIC")]],
      ["nSBOICEXHC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOICEXHC")]],
      ["nSBAIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAIC")]],
      ["nSBICROM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBICROM")]],
      ["nSSPEED_DIAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSPEED_DIAL")]],
      ["nSSD1D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD1D")]],
      ["nSSD2D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD2D")]],
      ["nSGRNCALL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGRNCALL")]],
      ["nSCPARK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCPARK")]],
      ["nSGAA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGAA")]],
      ["nSQSNS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQSNS")]],
      ["nSMSN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMSN")]],
      ["nSHOTLINE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOTLINE")]],
      ["nSAOC_S", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_S")]],
      ["nSNIGHTSRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNIGHTSRV")]],
      ["nSBACKNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBACKNUM")]],
      ["nSAUTOCON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAUTOCON")]],
      ["nSCAMPON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCAMPON")]],
      ["nSCTD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTD")]],
      ["nSCLICKHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLICKHOLD")]],
      ["nSQUEUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQUEUE")]],
      ["nSSANSWER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSANSWER")]],
      ["nSICENCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICENCF")]],
      ["nSCFGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFGO")]],
      ["nSCECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCECT")]],
      ["nSCTGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTGO")]],
      ["nSCTIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTIO")]],
      ["nSSETBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETBUSY")]],
      ["nSOVERSTEP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOVERSTEP")]],
      ["nSABSENT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABSENT")]],
      ["nSMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMONITOR")]],
      ["nSFMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFMONITOR")]],
      ["nSDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDISCNT")]],
      ["nSFDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFDISCNT")]],
      ["nSINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINSERT")]],
      ["nSFINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFINSERT")]],
      ["nSASI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSASI")]],
      ["nSPWCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPWCB")]],
      ["nSRD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRD")]],
      ["nSLCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSLCPS")]],
      ["nSNCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNCPS")]],
      ["nSICPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICPS")]],
      ["nSHCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHCPS")]],
      ["nSCBCLOCK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBCLOCK")]],
      ["nSMINIBAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMINIBAR")]],
      ["nSMCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCN")]],
      ["nSDSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDSTR")]],
      ["nSOPRREG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOPRREG")]],
      ["nSONEKEY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSONEKEY")]],
      ["nSINBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINBOUND")]],
      ["nSOUTBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTBOUND")]],
      ["nSCALLERID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCALLERID")]],
      ["nSCUN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCUN")]],
      ["nSIPTVVC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIPTVVC")]],
      ["nSNP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNP")]],
      ["nSSEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSEC")]],
      ["nSSECSTA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSECSTA")]],
      ["nSHRCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHRCN")]],
      ["nSSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSB")]],
      ["nSSCCA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSCCA")]],
      ["nSCCS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCS")]],
      ["nSOCCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOCCR")]],
      ["nSIMSMS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIMSMS")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_TPType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_TPType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_TPTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_TPTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_TPTables"),
    :schema_element => [
      ["table1", ["LST_TPTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_TPTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_TPTable1"),
    :schema_element => [
      ["item", ["LST_TPStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_TPStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_TPStruct1"),
    :schema_element => [
      ["tEMPLATEIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "TEMPLATEIDX")]],
      ["tEMPLATENAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "TEMPLATENAME")]],
      ["dSPIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "DSPIDX")]],
      ["lP", [nil, XSD::QName.new(NsV100R003C03SPC100, "LP")]],
      ["cSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSC")]],
      ["uTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "UTYPE")]],
      ["vCCFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "VCCFLAG")]],
      ["vTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "VTFLAG")]],
      ["nSCFU", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFU")]],
      ["nSCFUVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFUVM")]],
      ["nSCFB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFB")]],
      ["nSCFBVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFBVM")]],
      ["nSCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNR")]],
      ["nSCFNRVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRVM")]],
      ["nSCFNL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNL")]],
      ["nSCFNLVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNLVM")]],
      ["nSCD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCD")]],
      ["nSCDVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCDVM")]],
      ["nSCFNRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRC")]],
      ["nSCFNRCVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRCVM")]],
      ["nSCLIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIP")]],
      ["nSCIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIDCW")]],
      ["nSRIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIO")]],
      ["nSCNIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIP")]],
      ["nSCLIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIR")]],
      ["nSRIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIP")]],
      ["nSCNIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIR")]],
      ["nSRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRID")]],
      ["nSNRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRID")]],
      ["nSRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRND")]],
      ["nSNRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRND")]],
      ["nSCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCW")]],
      ["nSCCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCW")]],
      ["nSOIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOIP")]],
      ["nSACRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACRM")]],
      ["nSGOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGOIR")]],
      ["nSMOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMOIR")]],
      ["nSTIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIP")]],
      ["nSTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIR")]],
      ["nSOTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOTIR")]],
      ["nSCLIPNOSCREENING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIPNOSCREENING")]],
      ["nSCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCR")]],
      ["nSWAKE_UP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSWAKE_UP")]],
      ["nSAOC_D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_D")]],
      ["nSAOC_E", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_E")]],
      ["nSXEXH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEXH")]],
      ["nSXEGJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEGJ")]],
      ["nSCWCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCWCFNR")]],
      ["nSIIFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIIFC")]],
      ["nSDN_CALL_OUT_BAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_BAR")]],
      ["nSCCBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBS")]],
      ["nSCCNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNR")]],
      ["nSCCBSR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBSR")]],
      ["nSCCNRR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNRR")]],
      ["nS3PTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NS3PTY")]],
      ["nSNPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNPTY")]],
      ["nSDND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDND")]],
      ["nSMCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCR")]],
      ["nSCBA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBA")]],
      ["nSTMP_LIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTMP_LIN")]],
      ["nSCODEC_CNTRL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCODEC_CNTRL")]],
      ["nSMWI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMWI")]],
      ["nSDC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDC")]],
      ["nSHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOLD")]],
      ["nSECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSECT")]],
      ["nSCFTB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFTB")]],
      ["nSDAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDAN")]],
      ["nSSTOP_SECRET", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSTOP_SECRET")]],
      ["nSMCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCID")]],
      ["nSEBO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSEBO")]],
      ["nSICO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICO")]],
      ["nSOUTG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTG")]],
      ["nSINQYH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINQYH")]],
      ["nSUINFO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSUINFO")]],
      ["nSDN_CALL_OUT_ALLOW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_ALLOW")]],
      ["nSSIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSIC")]],
      ["nSSOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSOC")]],
      ["nSSETCFNRTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETCFNRTIME")]],
      ["nSCFS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFS")]],
      ["nSCFSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFSB")]],
      ["nSFAX", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFAX")]],
      ["nSABRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABRC")]],
      ["nSACRTOVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACRTOVM")]],
      ["nSPREPAID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPREPAID")]],
      ["nSCRBT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCRBT")]],
      ["nSICB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICB")]],
      ["nSMRINGING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMRINGING")]],
      ["nSCIS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIS")]],
      ["nSCBEG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBEG")]],
      ["nSCOLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLP")]],
      ["nSCOLR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLR")]],
      ["nSCOLPOVR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLPOVR")]],
      ["nSBAOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAOC")]],
      ["nSBOIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOIC")]],
      ["nSBOICEXHC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOICEXHC")]],
      ["nSBAIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAIC")]],
      ["nSBICROM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBICROM")]],
      ["nSSPEED_DIAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSPEED_DIAL")]],
      ["nSSD1D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD1D")]],
      ["nSSD2D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD2D")]],
      ["nSGRNCALL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGRNCALL")]],
      ["nSCPARK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCPARK")]],
      ["nSGAA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGAA")]],
      ["nSQSNS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQSNS")]],
      ["nSMSN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMSN")]],
      ["nSHOTLINE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOTLINE")]],
      ["nSAOC_S", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_S")]],
      ["nSNIGHTSRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNIGHTSRV")]],
      ["nSBACKNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBACKNUM")]],
      ["nSAUTOCON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAUTOCON")]],
      ["nSCAMPON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCAMPON")]],
      ["nSCTD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTD")]],
      ["nSCLICKHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLICKHOLD")]],
      ["nSQUEUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQUEUE")]],
      ["nSSANSWER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSANSWER")]],
      ["nSICENCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICENCF")]],
      ["nSCFGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFGO")]],
      ["nSCECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCECT")]],
      ["nSCTGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTGO")]],
      ["nSCTIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTIO")]],
      ["nSSETBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETBUSY")]],
      ["nSOVERSTEP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOVERSTEP")]],
      ["nSABSENT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABSENT")]],
      ["nSMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMONITOR")]],
      ["nSFMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFMONITOR")]],
      ["nSDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDISCNT")]],
      ["nSFDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFDISCNT")]],
      ["nSINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINSERT")]],
      ["nSFINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFINSERT")]],
      ["nSASI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSASI")]],
      ["nSPWCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPWCB")]],
      ["nSRD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRD")]],
      ["nSLCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSLCPS")]],
      ["nSNCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNCPS")]],
      ["nSICPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICPS")]],
      ["nSHCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHCPS")]],
      ["nSCBCLOCK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBCLOCK")]],
      ["nSMINIBAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMINIBAR")]],
      ["nSMCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCN")]],
      ["nSDSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDSTR")]],
      ["nSOPRREG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOPRREG")]],
      ["nSONEKEY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSONEKEY")]],
      ["nSINBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINBOUND")]],
      ["nSOUTBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTBOUND")]],
      ["nSCALLERID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCALLERID")]],
      ["nSCUN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCUN")]],
      ["nSIPTVVC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIPTVVC")]],
      ["nSNP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNP")]],
      ["nSSEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSEC")]],
      ["nSSECSTA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSECSTA")]],
      ["nSHRCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHRCN")]],
      ["nSSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSB")]],
      ["nSSCCA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSCCA")]],
      ["nSCCS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCS")]],
      ["nSOCCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOCCR")]],
      ["nSIMSMS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIMSMS")]],
      ["lCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "LCO")]],
      ["lC", [nil, XSD::QName.new(NsV100R003C03SPC100, "LC")]],
      ["lCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "LCT")]],
      ["nTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTT")]],
      ["iTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ITT")]],
      ["iCTX", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICTX")]],
      ["oCTX", [nil, XSD::QName.new(NsV100R003C03SPC100, "OCTX")]],
      ["iNTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "INTT")]],
      ["iITT", [nil, XSD::QName.new(NsV100R003C03SPC100, "IITT")]],
      ["iCLT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICLT")]],
      ["iCDDD", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICDDD")]],
      ["iCIDD", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICIDD")]],
      ["iOLT", [nil, XSD::QName.new(NsV100R003C03SPC100, "IOLT")]],
      ["cTLCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTLCO")]],
      ["cTLCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTLCT")]],
      ["cTLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTLD")]],
      ["cTINTNANP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTINTNANP")]],
      ["cTINTWORLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTINTWORLD")]],
      ["cTDA", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTDA")]],
      ["cTOSM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTOSM")]],
      ["cTOSP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTOSP")]],
      ["cTOSP1", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTOSP1")]],
      ["cCO1", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO1")]],
      ["cCO2", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO2")]],
      ["cCO3", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO3")]],
      ["cCO4", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO4")]],
      ["cCO5", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO5")]],
      ["cCO6", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO6")]],
      ["cCO7", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO7")]],
      ["cCO8", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO8")]],
      ["cCO9", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO9")]],
      ["cCO10", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO10")]],
      ["cCO11", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO11")]],
      ["cCO12", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO12")]],
      ["cCO13", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO13")]],
      ["cCO14", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO14")]],
      ["cCO15", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO15")]],
      ["cCO16", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO16")]],
      ["cCO17", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO17")]],
      ["cCO18", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO18")]],
      ["cCO19", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO19")]],
      ["cCO20", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO20")]],
      ["cCO21", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO21")]],
      ["cCO22", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO22")]],
      ["cCO23", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO23")]],
      ["cCO24", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO24")]],
      ["cCO25", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO25")]],
      ["cCO26", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO26")]],
      ["cCO27", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO27")]],
      ["cCO28", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO28")]],
      ["cCO29", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO29")]],
      ["cCO30", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO30")]],
      ["cCO31", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO31")]],
      ["cCO32", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO32")]],
      ["hIGHENTCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "HIGHENTCO")]],
      ["oPERATOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "OPERATOR")]],
      ["sUPYSRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUPYSRV")]],
      ["iDDCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "IDDCI")]],
      ["nTCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTCI")]],
      ["lTCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "LTCI")]],
      ["rSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "RSC")]],
      ["cIG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CIG")]],
      ["oUTRST", [nil, XSD::QName.new(NsV100R003C03SPC100, "OUTRST")]],
      ["iNRST", [nil, XSD::QName.new(NsV100R003C03SPC100, "INRST")]],
      ["nOAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOAT")]],
      ["rINGCOUNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "RINGCOUNT")]],
      ["vMAIND", [nil, XSD::QName.new(NsV100R003C03SPC100, "VMAIND")]],
      ["vDMAIND", [nil, XSD::QName.new(NsV100R003C03SPC100, "VDMAIND")]],
      ["tGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "TGRP")]],
      ["tIDHLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIDHLD")]],
      ["tIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIDCW")]],
      ["sCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SCF")]],
      ["lMTGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "LMTGRP")]],
      ["fLBGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "FLBGRP")]],
      ["sLBGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "SLBGRP")]],
      ["cOP", [nil, XSD::QName.new(NsV100R003C03SPC100, "COP")]],
      ["g711_64K_A_LAW", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711_64K_A_LAW")]],
      ["g711_64K_U_LAW", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711_64K_U_LAW")]],
      ["g722", [nil, XSD::QName.new(NsV100R003C03SPC100, "G722")]],
      ["g723", [nil, XSD::QName.new(NsV100R003C03SPC100, "G723")]],
      ["g726", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726")]],
      ["g728", [nil, XSD::QName.new(NsV100R003C03SPC100, "G728")]],
      ["g729", [nil, XSD::QName.new(NsV100R003C03SPC100, "G729")]],
      ["cODEC_MP4A", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC_MP4A")]],
      ["cODEC2833", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC2833")]],
      ["cODEC2198", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC2198")]],
      ["g726_40", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_40")]],
      ["g726_32", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_32")]],
      ["g726_24", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_24")]],
      ["g726_16", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_16")]],
      ["aMR", [nil, XSD::QName.new(NsV100R003C03SPC100, "AMR")]],
      ["cLEARMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLEARMODE")]],
      ["iLBC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ILBC")]],
      ["sPEEX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SPEEX")]],
      ["g729EV", [nil, XSD::QName.new(NsV100R003C03SPC100, "G729EV")]],
      ["eVRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "EVRC")]],
      ["eVRCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "EVRCB")]],
      ["h261", [nil, XSD::QName.new(NsV100R003C03SPC100, "H261")]],
      ["h263", [nil, XSD::QName.new(NsV100R003C03SPC100, "H263")]],
      ["cODEC_MP4V", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC_MP4V")]],
      ["h264", [nil, XSD::QName.new(NsV100R003C03SPC100, "H264")]],
      ["t38", [nil, XSD::QName.new(NsV100R003C03SPC100, "T38")]],
      ["t120", [nil, XSD::QName.new(NsV100R003C03SPC100, "T120")]],
      ["g711A_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711A_VBD")]],
      ["g711U_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711U_VBD")]],
      ["g726_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_VBD")]],
      ["g726_40_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_40_VBD")]],
      ["g726_32_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_32_VBD")]],
      ["g726_24_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_24_VBD")]],
      ["g726_16_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_16_VBD")]],
      ["wIND_BAND_AMR", [nil, XSD::QName.new(NsV100R003C03SPC100, "WIND_BAND_AMR")]],
      ["gSM610", [nil, XSD::QName.new(NsV100R003C03SPC100, "GSM610")]],
      ["h263_2000", [nil, XSD::QName.new(NsV100R003C03SPC100, "H263_2000")]],
      ["bROADVOICE_32", [nil, XSD::QName.new(NsV100R003C03SPC100, "BROADVOICE_32")]],
      ["uNKNOWN_CODEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "UNKNOWN_CODEC")]],
      ["aCODEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACODEC")]],
      ["vCODEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "VCODEC")]],
      ["pOLIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "POLIDX")]],
      ["nCPI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NCPI")]],
      ["iCPI", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICPI")]],
      ["hCPI", [nil, XSD::QName.new(NsV100R003C03SPC100, "HCPI")]],
      ["eBOCL", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBOCL")]],
      ["eBOPL", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBOPL")]],
      ["eBOIT", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBOIT")]],
      ["rM", [nil, XSD::QName.new(NsV100R003C03SPC100, "RM")]],
      ["cPC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CPC")]],
      ["pCHG", [nil, XSD::QName.new(NsV100R003C03SPC100, "PCHG")]],
      ["tFPT", [nil, XSD::QName.new(NsV100R003C03SPC100, "TFPT")]],
      ["cHT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHT")]],
      ["mCIDMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCIDMODE")]],
      ["mCIDCMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCIDCMODE")]],
      ["mCIDAMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCIDAMODE")]],
      ["pREPAIDIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "PREPAIDIDX")]],
      ["cRBTID", [nil, XSD::QName.new(NsV100R003C03SPC100, "CRBTID")]],
      ["oDBBICTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBICTYPE")]],
      ["oDBBOCTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBOCTYPE")]],
      ["oDBBARTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBARTYPE")]],
      ["oDBSS", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBSS")]],
      ["oDBBRCFTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBRCFTYPE")]],
      ["oDBINFORM", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBINFORM")]],
      ["oDBENTAIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBENTAIN")]],
      ["oDBPLMNBAR1", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR1")]],
      ["oDBPLMNBAR2", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR2")]],
      ["oDBPLMNBAR3", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR3")]],
      ["oDBPLMNBAR4", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR4")]],
      ["pNOTI", [nil, XSD::QName.new(NsV100R003C03SPC100, "PNOTI")]],
      ["mAXPARACALL", [nil, XSD::QName.new(NsV100R003C03SPC100, "MAXPARACALL")]],
      ["aTSDTMBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "ATSDTMBUSY")]],
      ["cALLCOUNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLCOUNT")]],
      ["cDNOTICALLER", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDNOTICALLER")]],
      ["iSCHGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "ISCHGFLAG")]],
      ["cHC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHC")]],
      ["cUSER", [nil, XSD::QName.new(NsV100R003C03SPC100, "CUSER")]],
      ["cGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CGRP")]],
      ["cUSERGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CUSERGRP")]],
      ["sTCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "STCF")]],
      ["cHARSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHARSC")]],
      ["rEGUIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGUIDX")]],
      ["sOCBFUNC", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCBFUNC")]],
      ["sOCBPTONEIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCBPTONEIDX")]],
      ["aDMINCBA", [nil, XSD::QName.new(NsV100R003C03SPC100, "ADMINCBA")]],
      ["aDCONTROL_DIVERSION", [nil, XSD::QName.new(NsV100R003C03SPC100, "ADCONTROL_DIVERSION")]],
      ["dPR", [nil, XSD::QName.new(NsV100R003C03SPC100, "DPR")]],
      ["pRON", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRON")]],
      ["cPCRUS", [nil, XSD::QName.new(NsV100R003C03SPC100, "CPCRUS")]],
      ["cUSCAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CUSCAT")]],
      ["sPT100REL", [nil, XSD::QName.new(NsV100R003C03SPC100, "SPT100REL")]],
      ["aNALYSISMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ANALYSISMODE")]],
      ["gRPIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPIDX")]],
      ["sCADDRIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SCADDRIDX")]],
      ["cDNOCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDNOCB")]],
      ["kVALUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "KVALUE")]],
      ["iNPFIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "INPFIDX")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXSBRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSBRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CXSBRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXSBRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSBRTables"),
    :schema_element => [
      ["table1", ["LST_CXSBRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXSBRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSBRTable1"),
    :schema_element => [
      ["item", ["LST_CXSBRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXSBRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSBRStruct1"),
    :schema_element => [
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["cXSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSG")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")], [0, 1]],
      ["cXD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXD")], [0, 1]],
      ["pBXFG", [nil, XSD::QName.new(NsV100R003C03SPC100, "PBXFG")]],
      ["pKUPID", [nil, XSD::QName.new(NsV100R003C03SPC100, "PKUPID")]],
      ["gRPICO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPICO")]],
      ["gRPWCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPWCO")]],
      ["gRPCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPCO")]],
      ["gRPICI", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPICI")]],
      ["gRPWCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPWCI")]],
      ["gRPINCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPINCO")]],
      ["aUTOCON", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOCON")]],
      ["oDSPMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODSPMODE")]],
      ["cONFLG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CONFLG")]],
      ["rESERVED", [nil, XSD::QName.new(NsV100R003C03SPC100, "RESERVED")]],
      ["iMPU1", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU1")]],
      ["iMPU2", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU2")]],
      ["iMPU3", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU3")]],
      ["iMPU4", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU4")]],
      ["iMPU5", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU5")]],
      ["iMPU6", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU6")]],
      ["iMPU7", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU7")]],
      ["iMPU8", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU8")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXGRPType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXGRPType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CXGRPTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXGRPTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXGRPTables"),
    :schema_element => [
      ["table1", ["LST_CXGRPTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXGRPTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXGRPTable1"),
    :schema_element => [
      ["item", ["LST_CXGRPStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXGRPStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXGRPStruct1"),
    :schema_element => [
      ["cGN", [nil, XSD::QName.new(NsV100R003C03SPC100, "CGN")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["mAXM", [nil, XSD::QName.new(NsV100R003C03SPC100, "MAXM")]],
      ["oGC", [nil, XSD::QName.new(NsV100R003C03SPC100, "OGC")]],
      ["cXCFTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXCFTR")]],
      ["fOUTOCXPFX", [nil, XSD::QName.new(NsV100R003C03SPC100, "FOUTOCXPFX")]],
      ["mOUTOCXPFX", [nil, XSD::QName.new(NsV100R003C03SPC100, "MOUTOCXPFX")]],
      ["gPFALG", [nil, XSD::QName.new(NsV100R003C03SPC100, "GPFALG")]],
      ["fONNET", [nil, XSD::QName.new(NsV100R003C03SPC100, "FONNET")]],
      ["sPDT", [nil, XSD::QName.new(NsV100R003C03SPC100, "SPDT")]],
      ["oUTCHGPAI", [nil, XSD::QName.new(NsV100R003C03SPC100, "OUTCHGPAI")]],
      ["mTCHGPAI", [nil, XSD::QName.new(NsV100R003C03SPC100, "MTCHGPAI")]],
      ["mTDPAI", [nil, XSD::QName.new(NsV100R003C03SPC100, "MTDPAI")]],
      ["iGRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "IGRM")]],
      ["oGRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "OGRM")]],
      ["wACRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "WACRM")]],
      ["eCRBTF", [nil, XSD::QName.new(NsV100R003C03SPC100, "ECRBTF")]],
      ["eCRBTTID", [nil, XSD::QName.new(NsV100R003C03SPC100, "ECRBTTID")]],
      ["oNNETOUTBAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "ONNETOUTBAL")]],
      ["oNNETINBAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "ONNETINBAL")]],
      ["wACOUTBAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "WACOUTBAL")]],
      ["wACINBAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "WACINBAL")]],
      ["oVPNF", [nil, XSD::QName.new(NsV100R003C03SPC100, "OVPNF")]],
      ["bALRULEIND", [nil, XSD::QName.new(NsV100R003C03SPC100, "BALRULEIND")]],
      ["oVPNPF", [nil, XSD::QName.new(NsV100R003C03SPC100, "OVPNPF")]],
      ["rESERVED", [nil, XSD::QName.new(NsV100R003C03SPC100, "RESERVED")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXSUBGRPType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSUBGRPType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CXSUBGRPTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXSUBGRPTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSUBGRPTables"),
    :schema_element => [
      ["table1", ["LST_CXSUBGRPTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXSUBGRPTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSUBGRPTable1"),
    :schema_element => [
      ["item", ["LST_CXSUBGRPStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXSUBGRPStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSUBGRPStruct1"),
    :schema_element => [
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["cGN", [nil, XSD::QName.new(NsV100R003C03SPC100, "CGN")], [0, 1]],
      ["cXSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSG")], [0, 1]],
      ["cXSGN", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSGN")], [0, 1]],
      ["bSFG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSFG")], [0, 1]],
      ["bALRULEIND", [nil, XSD::QName.new(NsV100R003C03SPC100, "BALRULEIND")]],
      ["cXD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXD")]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["tOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "TOC")]],
      ["iDDFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "IDDFC")]],
      ["oDDFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODDFC")]],
      ["iRFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "IRFC")]],
      ["oRFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ORFC")]],
      ["iRBB", [nil, XSD::QName.new(NsV100R003C03SPC100, "IRBB")]],
      ["oRBB", [nil, XSD::QName.new(NsV100R003C03SPC100, "ORBB")]],
      ["nRCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRCI")]],
      ["nRFCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRFCO")]],
      ["cCTI", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCTI")]],
      ["cCTO", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCTO")]],
      ["cDM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDM")]],
      ["iDM", [nil, XSD::QName.new(NsV100R003C03SPC100, "IDM")]],
      ["fDM", [nil, XSD::QName.new(NsV100R003C03SPC100, "FDM")]],
      ["cFUCSI", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFUCSI")]],
      ["cFUCSO", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFUCSO")]],
      ["iNDO", [nil, XSD::QName.new(NsV100R003C03SPC100, "INDO")]],
      ["bILLFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BILLFLAG")]],
      ["kINDVOICE", [nil, XSD::QName.new(NsV100R003C03SPC100, "KINDVOICE")]],
      ["cLICKTRANSRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLICKTRANSRM")]],
      ["cALLINQUEUERM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLINQUEUERM")]],
      ["cALLHOLDRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLHOLDRM")]],
      ["wAKEUPRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "WAKEUPRM")]],
      ["cXCFNRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXCFNRC")]],
      ["cHGTOFLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHGTOFLD")]],
      ["cXCFNRCNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXCFNRCNUM")]],
      ["pRIPHXFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRIPHXFLAG")]],
      ["pUBPHXFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "PUBPHXFLAG")]],
      ["aCC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACC")]],
      ["fTOSTA", [nil, XSD::QName.new(NsV100R003C03SPC100, "FTOSTA")]],
      ["rESERVED", [nil, XSD::QName.new(NsV100R003C03SPC100, "RESERVED")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_OCXPFXType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_OCXPFXType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_OCXPFXTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_OCXPFXTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_OCXPFXTables"),
    :schema_element => [
      ["table1", ["LST_OCXPFXTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_OCXPFXTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_OCXPFXTable1"),
    :schema_element => [
      ["item", ["LST_OCXPFXStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_OCXPFXStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_OCXPFXStruct1"),
    :schema_element => [
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["oGP", [nil, XSD::QName.new(NsV100R003C03SPC100, "OGP")], [0, 1]],
      ["oCSA", [nil, XSD::QName.new(NsV100R003C03SPC100, "OCSA")]],
      ["dLEN", [nil, XSD::QName.new(NsV100R003C03SPC100, "DLEN")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ICXPFXType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ICXPFXType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_ICXPFXTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ICXPFXTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ICXPFXTables"),
    :schema_element => [
      ["table1", ["LST_ICXPFXTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ICXPFXTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ICXPFXTable1"),
    :schema_element => [
      ["item", ["LST_ICXPFXStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ICXPFXStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ICXPFXStruct1"),
    :schema_element => [
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["cLRLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLRLP")], [0, 1]],
      ["pFX", [nil, XSD::QName.new(NsV100R003C03SPC100, "PFX")], [0, 1]],
      ["cSA", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSA")], [0, 1]],
      ["mINL", [nil, XSD::QName.new(NsV100R003C03SPC100, "MINL")]],
      ["mAXL", [nil, XSD::QName.new(NsV100R003C03SPC100, "MAXL")]],
      ["rESERVED", [nil, XSD::QName.new(NsV100R003C03SPC100, "RESERVED")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_WACCTLType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WACCTLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_WACCTLTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_WACCTLTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WACCTLTables"),
    :schema_element => [
      ["table1", ["LST_WACCTLTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_WACCTLTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WACCTLTable1"),
    :schema_element => [
      ["item", ["LST_WACCTLStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_WACCTLStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WACCTLStruct1"),
    :schema_element => [
      ["wACCXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "WACCXG")], [0, 1]],
      ["wAC", [nil, XSD::QName.new(NsV100R003C03SPC100, "WAC")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_WCXPFXType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WCXPFXType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_WCXPFXTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_WCXPFXTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WCXPFXTables"),
    :schema_element => [
      ["table1", ["LST_WCXPFXTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_WCXPFXTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WCXPFXTable1"),
    :schema_element => [
      ["item", ["LST_WCXPFXStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_WCXPFXStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WCXPFXStruct1"),
    :schema_element => [
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["wAC", [nil, XSD::QName.new(NsV100R003C03SPC100, "WAC")], [0, 1]],
      ["wACCXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "WACCXG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PBXType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PBXType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_PBXTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PBXTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PBXTables"),
    :schema_element => [
      ["table1", ["LST_PBXTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PBXTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PBXTable1"),
    :schema_element => [
      ["item", ["LST_PBXStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PBXStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PBXStruct1"),
    :schema_element => [
      ["gDN", [nil, XSD::QName.new(NsV100R003C03SPC100, "GDN")], [0, 1]],
      ["sVCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SVCID")]],
      ["qUL", [nil, XSD::QName.new(NsV100R003C03SPC100, "QUL")]],
      ["sGM", [nil, XSD::QName.new(NsV100R003C03SPC100, "SGM")]],
      ["mDF", [nil, XSD::QName.new(NsV100R003C03SPC100, "MDF")]],
      ["pAC", [nil, XSD::QName.new(NsV100R003C03SPC100, "PAC")]],
      ["sNDP", [nil, XSD::QName.new(NsV100R003C03SPC100, "SNDP")]],
      ["iADDR", [nil, XSD::QName.new(NsV100R003C03SPC100, "IADDR")]],
      ["cHT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHT")]],
      ["rSF", [nil, XSD::QName.new(NsV100R003C03SPC100, "RSF")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PBXSBRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PBXSBRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_PBXSBRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PBXSBRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PBXSBRTables"),
    :schema_element => [
      ["table1", ["LST_PBXSBRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PBXSBRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PBXSBRTable1"),
    :schema_element => [
      ["item", ["LST_PBXSBRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PBXSBRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_PBXSBRStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")], [0, 1]],
      ["gDN", [nil, XSD::QName.new(NsV100R003C03SPC100, "GDN")]],
      ["pSN", [nil, XSD::QName.new(NsV100R003C03SPC100, "PSN")]],
      ["tIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIP")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXSDType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CXSDTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXSDTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSDTables"),
    :schema_element => [
      ["table1", ["LST_CXSDTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXSDTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSDTable1"),
    :schema_element => [
      ["item", ["LST_CXSDStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXSDStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSDStruct1"),
    :schema_element => [
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["cXSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSG")], [0, 1]],
      ["sDSN", [nil, XSD::QName.new(NsV100R003C03SPC100, "SDSN")], [0, 1]],
      ["sDFN", [nil, XSD::QName.new(NsV100R003C03SPC100, "SDFN")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXUNUMType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXUNUMType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CXUNUMTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXUNUMTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXUNUMTables"),
    :schema_element => [
      ["table1", ["LST_CXUNUMTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXUNUMTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXUNUMTable1"),
    :schema_element => [
      ["item", ["LST_CXUNUMStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXUNUMStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXUNUMStruct1"),
    :schema_element => [
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["mAXU", [nil, XSD::QName.new(NsV100R003C03SPC100, "MAXU")]],
      ["aCTUALU", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTUALU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_WCIMPUType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WCIMPUType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_WCIMPUTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_WCIMPUTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WCIMPUTables"),
    :schema_element => [
      ["table1", ["LST_WCIMPUTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_WCIMPUTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WCIMPUTable1"),
    :schema_element => [
      ["item", ["LST_WCIMPUStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_WCIMPUStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_WCIMPUStruct1"),
    :schema_element => [
      ["wCIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCIDX")], [0, 1]],
      ["pIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "PIMPU")], [0, 1]],
      ["wCIMPU1", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCIMPU1")], [0, 1]],
      ["wCIMPU2", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCIMPU2")], [0, 1]],
      ["rESERVED", [nil, XSD::QName.new(NsV100R003C03SPC100, "RESERVED")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXOCRType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXOCRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CXOCRTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXOCRTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXOCRTables"),
    :schema_element => [
      ["table1", ["LST_CXOCRTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXOCRTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXOCRTable1"),
    :schema_element => [
      ["item", ["LST_CXOCRStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXOCRStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXOCRStruct1"),
    :schema_element => [
      ["cTXGRPID", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTXGRPID")], [0, 1]],
      ["kVALUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "KVALUE")], [0, 1]],
      ["cALLOUTRIGHT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLOUTRIGHT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXPFXPROType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXPFXPROType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CXPFXPROTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXPFXPROTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXPFXPROTables"),
    :schema_element => [
      ["table1", ["LST_CXPFXPROTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXPFXPROTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXPFXPROTable1"),
    :schema_element => [
      ["item", ["LST_CXPFXPROStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXPFXPROStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXPFXPROStruct1"),
    :schema_element => [
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["pFX", [nil, XSD::QName.new(NsV100R003C03SPC100, "PFX")], [0, 1]],
      ["cSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSC")], [0, 1]],
      ["dDC", [nil, XSD::QName.new(NsV100R003C03SPC100, "DDC")]],
      ["rDC", [nil, XSD::QName.new(NsV100R003C03SPC100, "RDC")]],
      ["sTP", [nil, XSD::QName.new(NsV100R003C03SPC100, "STP")]],
      ["fPF", [nil, XSD::QName.new(NsV100R003C03SPC100, "FPF")]],
      ["nPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NPS")]],
      ["nLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NLP")]],
      ["dDCX", [nil, XSD::QName.new(NsV100R003C03SPC100, "DDCX")]],
      ["rDCX", [nil, XSD::QName.new(NsV100R003C03SPC100, "RDCX")]],
      ["rAF", [nil, XSD::QName.new(NsV100R003C03SPC100, "RAF")]],
      ["tT", [nil, XSD::QName.new(NsV100R003C03SPC100, "TT")]],
      ["fCC", [nil, XSD::QName.new(NsV100R003C03SPC100, "FCC")]],
      ["rESERVED", [nil, XSD::QName.new(NsV100R003C03SPC100, "RESERVED")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXACTType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXACTType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CXACTTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXACTTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXACTTables"),
    :schema_element => [
      ["table1", ["LST_CXACTTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXACTTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXACTTable1"),
    :schema_element => [
      ["item", ["LST_CXACTStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXACTStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXACTStruct1"),
    :schema_element => [
      ["aCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACT")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CXACTType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CXACTType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CXACTTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CXACTTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CXACTTables"),
    :schema_element => [
      ["table1", ["DSP_CXACTTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CXACTTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CXACTTable1"),
    :schema_element => [
      ["item", ["DSP_CXACTStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CXACTStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CXACTStruct1"),
    :schema_element => [
      ["aCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACT")]],
      ["rOLEID", [nil, XSD::QName.new(NsV100R003C03SPC100, "ROLEID")]],
      ["rTLIST", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTLIST")]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "NAME")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CONType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CONType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_CONTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CONTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CONTables"),
    :schema_element => [
      ["table1", ["DSP_CONTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CONTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CONTable1"),
    :schema_element => [
      ["item", ["DSP_CONStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CONStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_CONStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["pDMN", [nil, XSD::QName.new(NsV100R003C03SPC100, "PDMN")]],
      ["pADDR", [nil, XSD::QName.new(NsV100R003C03SPC100, "PADDR")]],
      ["pPORT", [nil, XSD::QName.new(NsV100R003C03SPC100, "PPORT")]],
      ["cONTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CONTYPE")]],
      ["sMSNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMSNUM")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CONType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CONType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CONTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CONTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CONTables"),
    :schema_element => [
      ["table1", ["LST_CONTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CONTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CONTable1"),
    :schema_element => [
      ["item", ["LST_CONStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CONStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CONStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ROLEType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ROLEType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_ROLETables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ROLETables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ROLETables"),
    :schema_element => [
      ["table1", ["LST_ROLETable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ROLETable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ROLETable1"),
    :schema_element => [
      ["item", ["LST_ROLEStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ROLEStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ROLEStruct1"),
    :schema_element => [
      ["rOLEID", [nil, XSD::QName.new(NsV100R003C03SPC100, "ROLEID")], [0, 1]],
      ["rOLENAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "ROLENAME")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ROLEType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ROLEType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_ROLETables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ROLETables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ROLETables"),
    :schema_element => [
      ["table1", ["DSP_ROLETable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ROLETable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ROLETable1"),
    :schema_element => [
      ["item", ["DSP_ROLEStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ROLEStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ROLEStruct1"),
    :schema_element => [
      ["rOLEID", [nil, XSD::QName.new(NsV100R003C03SPC100, "ROLEID")]],
      ["rOLENAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "ROLENAME")]],
      ["rTLIST", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTLIST")]],
      ["dESC", [nil, XSD::QName.new(NsV100R003C03SPC100, "DESC")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ACTRTType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ACTRTType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_ACTRTTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ACTRTTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ACTRTTables"),
    :schema_element => [
      ["table1", ["LST_ACTRTTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ACTRTTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ACTRTTable1"),
    :schema_element => [
      ["item", ["LST_ACTRTStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ACTRTStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_ACTRTStruct1"),
    :schema_element => [
      ["rTID", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTID")], [0, 1]],
      ["rTNAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTNAME")], [0, 1]],
      ["rTDESC", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTDESC")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ACTRTType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ACTRTType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_ACTRTTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ACTRTTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ACTRTTables"),
    :schema_element => [
      ["table1", ["DSP_ACTRTTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ACTRTTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ACTRTTable1"),
    :schema_element => [
      ["item", ["DSP_ACTRTStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ACTRTStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_ACTRTStruct1"),
    :schema_element => [
      ["rTID", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTID")]],
      ["rTNAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTNAME")]],
      ["rTDESC", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTDESC")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SBGLANType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SBGLANType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["DSP_SBGLANTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SBGLANTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SBGLANTables"),
    :schema_element => [
      ["table1", ["DSP_SBGLANTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SBGLANTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SBGLANTable1"),
    :schema_element => [
      ["item", ["DSP_SBGLANStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SBGLANStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "DSP_SBGLANStruct1"),
    :schema_element => [
      ["lANID", [nil, XSD::QName.new(NsV100R003C03SPC100, "LANID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_LANType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_LANType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_LANTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_LANTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_LANTables"),
    :schema_element => [
      ["table1", ["LST_LANTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_LANTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_LANTable1"),
    :schema_element => [
      ["item", ["LST_LANStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_LANStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_LANStruct1"),
    :schema_element => [
      ["lANID", [nil, XSD::QName.new(NsV100R003C03SPC100, "LANID")], [0, 1]],
      ["lANNAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "LANNAME")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXSBRCONType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSBRCONType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]],
      ["resultData", ["LST_CXSBRCONTables", XSD::QName.new(NsV100R003C03SPC100, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXSBRCONTables,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSBRCONTables"),
    :schema_element => [
      ["table1", ["LST_CXSBRCONTable1", XSD::QName.new(NsV100R003C03SPC100, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXSBRCONTable1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSBRCONTable1"),
    :schema_element => [
      ["item", ["LST_CXSBRCONStruct1[]", XSD::QName.new(NsV100R003C03SPC100, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXSBRCONStruct1,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSBRCONStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["lCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "LCO")]],
      ["lC", [nil, XSD::QName.new(NsV100R003C03SPC100, "LC")]],
      ["lCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "LCT")]],
      ["nTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTT")]],
      ["iTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ITT")]],
      ["iNTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "INTT")]],
      ["iITT", [nil, XSD::QName.new(NsV100R003C03SPC100, "IITT")]],
      ["iOLT", [nil, XSD::QName.new(NsV100R003C03SPC100, "IOLT")]],
      ["gRPICO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPICO")]],
      ["gRPCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPCO")]],
      ["iDDCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "IDDCI")]],
      ["nTCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTCI")]],
      ["lTCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "LTCI")]],
      ["gRPICI", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPICI")]],
      ["gRPINCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPINCO")]],
      ["nSCFU", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFU")]],
      ["nSCFB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFB")]],
      ["nSCFBVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFBVM")]],
      ["nSCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNR")]],
      ["nSCFNRVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRVM")]],
      ["nSCFNL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNL")]],
      ["nSCD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCD")]],
      ["nSCIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIDCW")]],
      ["nSRIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIP")]],
      ["nSRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRID")]],
      ["nSNRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRID")]],
      ["nSCLIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIP")]],
      ["nSRIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIO")]],
      ["nSCLIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIR")]],
      ["nSCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCW")]],
      ["nSWAKE_UP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSWAKE_UP")]],
      ["nSCCBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBS")]],
      ["nS3PTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NS3PTY")]],
      ["nSNPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNPTY")]],
      ["nSDND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDND")]],
      ["nSHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOLD")]],
      ["nSCFTB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFTB")]],
      ["nSDAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDAN")]],
      ["nSMCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCID")]],
      ["nSDN_CALL_OUT_ALLOW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_ALLOW")]],
      ["nSSPEED_DIAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSPEED_DIAL")]],
      ["nSGAA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGAA")]],
      ["nSHOTLINE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOTLINE")]],
      ["nSICENCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICENCF")]],
      ["nSABSENT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABSENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => OperationFault,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "OperationFault"),
    :schema_element => [
      ["faultReason", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ResultType,
    :schema_type => XSD::QName.new(NsV100R003C03SPC100, "ResultType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "ResultDesc")]]
    ]
  )

  LiteralRegistry.register(
    :class => RequestCommonInfoType,
    :schema_name => XSD::QName.new(NsATSV100R003C03SPC100, "RequestCommonInfo"),
    :schema_element => [
      ["sessionID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "SessionID")]],
      ["mEID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "MEID")]],
      ["sourceMEID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "SourceMEID")]],
      ["serialID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "SerialID")]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsATSV100R003C03SPC100, "UserName")]],
      ["sync", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "Sync")]],
      ["reserve", ["SOAP::SOAPString", XSD::QName.new(NsATSV100R003C03SPC100, "Reserve")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ResponseCommonInfoType,
    :schema_name => XSD::QName.new(NsATSV100R003C03SPC100, "ResponseCommonInfo"),
    :schema_element => [
      ["commandName", ["SOAP::SOAPString", XSD::QName.new(NsATSV100R003C03SPC100, "CommandName")]],
      ["sessionID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "SessionID")]],
      ["requestID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "RequestID")]],
      ["mEID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "MEID")]],
      ["sourceMEID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "SourceMEID")]],
      ["serialID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsATSV100R003C03SPC100, "SerialID")]],
      ["timeStamp", ["SOAP::SOAPString", XSD::QName.new(NsATSV100R003C03SPC100, "TimeStamp")]],
      ["svrType", ["SOAP::SOAPString", XSD::QName.new(NsATSV100R003C03SPC100, "SvrType")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_SBR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_SBR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["tEMPLATEIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "TEMPLATEIDX")], [0, 1]],
      ["dSPIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "DSPIDX")], [0, 1]],
      ["lP", [nil, XSD::QName.new(NsV100R003C03SPC100, "LP")], [0, 1]],
      ["cSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSC")], [0, 1]],
      ["uNAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "UNAME")], [0, 1]],
      ["uTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "UTYPE")], [0, 1]],
      ["vCCFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "VCCFLAG")], [0, 1]],
      ["vTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "VTFLAG")], [0, 1]],
      ["nSCFU", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFU")], [0, 1]],
      ["nSCFUVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFUVM")], [0, 1]],
      ["nSCFB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFB")], [0, 1]],
      ["nSCFBVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFBVM")], [0, 1]],
      ["nSCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNR")], [0, 1]],
      ["nSCFNRVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRVM")], [0, 1]],
      ["nSCFNL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNL")], [0, 1]],
      ["nSCFNLVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNLVM")], [0, 1]],
      ["nSCD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCD")], [0, 1]],
      ["nSCDVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCDVM")], [0, 1]],
      ["nSCFNRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRC")], [0, 1]],
      ["nSCFNRCVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRCVM")], [0, 1]],
      ["nSCLIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIP")], [0, 1]],
      ["nSCIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIDCW")], [0, 1]],
      ["nSRIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIO")], [0, 1]],
      ["nSCNIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIP")], [0, 1]],
      ["nSCLIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIR")], [0, 1]],
      ["nSRIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIP")], [0, 1]],
      ["nSCNIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIR")], [0, 1]],
      ["nSRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRID")], [0, 1]],
      ["nSNRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRID")], [0, 1]],
      ["nSRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRND")], [0, 1]],
      ["nSNRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRND")], [0, 1]],
      ["nSCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCW")], [0, 1]],
      ["nSCCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCW")], [0, 1]],
      ["nSOIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOIP")], [0, 1]],
      ["nSACRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACRM")], [0, 1]],
      ["nSGOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGOIR")], [0, 1]],
      ["nSMOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMOIR")], [0, 1]],
      ["nSTIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIP")], [0, 1]],
      ["nSTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIR")], [0, 1]],
      ["nSOTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOTIR")], [0, 1]],
      ["nSCLIPNOSCREENING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIPNOSCREENING")], [0, 1]],
      ["nSCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCR")], [0, 1]],
      ["nSWAKE_UP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSWAKE_UP")], [0, 1]],
      ["nSAOC_D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_D")], [0, 1]],
      ["nSAOC_E", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_E")], [0, 1]],
      ["nSXEXH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEXH")], [0, 1]],
      ["nSXEGJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEGJ")], [0, 1]],
      ["nSCWCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCWCFNR")], [0, 1]],
      ["nSIIFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIIFC")], [0, 1]],
      ["nSDN_CALL_OUT_BAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_BAR")], [0, 1]],
      ["nSCCBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBS")], [0, 1]],
      ["nSCCNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNR")], [0, 1]],
      ["nSCCBSR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBSR")], [0, 1]],
      ["nSCCNRR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNRR")], [0, 1]],
      ["nS3PTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NS3PTY")], [0, 1]],
      ["nSNPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNPTY")], [0, 1]],
      ["nSDND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDND")], [0, 1]],
      ["nSMCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCR")], [0, 1]],
      ["nSCBA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBA")], [0, 1]],
      ["nSTMP_LIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTMP_LIN")], [0, 1]],
      ["nSCODEC_CNTRL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCODEC_CNTRL")], [0, 1]],
      ["nSMWI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMWI")], [0, 1]],
      ["nSDC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDC")], [0, 1]],
      ["nSHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOLD")], [0, 1]],
      ["nSECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSECT")], [0, 1]],
      ["nSCFTB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFTB")], [0, 1]],
      ["nSDAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDAN")], [0, 1]],
      ["nSSTOP_SECRET", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSTOP_SECRET")], [0, 1]],
      ["nSMCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCID")], [0, 1]],
      ["nSEBO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSEBO")], [0, 1]],
      ["nSICO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICO")], [0, 1]],
      ["nSOUTG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTG")], [0, 1]],
      ["nSINQYH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINQYH")], [0, 1]],
      ["nSUINFO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSUINFO")], [0, 1]],
      ["nSDN_CALL_OUT_ALLOW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_ALLOW")], [0, 1]],
      ["nSSIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSIC")], [0, 1]],
      ["nSSOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSOC")], [0, 1]],
      ["nSSETCFNRTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETCFNRTIME")], [0, 1]],
      ["nSCFS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFS")], [0, 1]],
      ["nSCFSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFSB")], [0, 1]],
      ["nSFAX", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFAX")], [0, 1]],
      ["nSABRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABRC")], [0, 1]],
      ["nSACRTOVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACRTOVM")], [0, 1]],
      ["nSPREPAID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPREPAID")], [0, 1]],
      ["nSCRBT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCRBT")], [0, 1]],
      ["nSICB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICB")], [0, 1]],
      ["nSMRINGING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMRINGING")], [0, 1]],
      ["nSCIS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIS")], [0, 1]],
      ["nSCBEG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBEG")], [0, 1]],
      ["nSCOLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLP")], [0, 1]],
      ["nSCOLR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLR")], [0, 1]],
      ["nSCOLPOVR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLPOVR")], [0, 1]],
      ["nSBAOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAOC")], [0, 1]],
      ["nSBOIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOIC")], [0, 1]],
      ["nSBOICEXHC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOICEXHC")], [0, 1]],
      ["nSBAIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAIC")], [0, 1]],
      ["nSBICROM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBICROM")], [0, 1]],
      ["nSSPEED_DIAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSPEED_DIAL")], [0, 1]],
      ["nSSD1D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD1D")], [0, 1]],
      ["nSSD2D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD2D")], [0, 1]],
      ["nSGRNCALL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGRNCALL")], [0, 1]],
      ["nSCPARK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCPARK")], [0, 1]],
      ["nSGAA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGAA")], [0, 1]],
      ["nSQSNS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQSNS")], [0, 1]],
      ["nSMSN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMSN")], [0, 1]],
      ["nSHOTLINE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOTLINE")], [0, 1]],
      ["nSAOC_S", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_S")], [0, 1]],
      ["nSNIGHTSRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNIGHTSRV")], [0, 1]],
      ["nSBACKNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBACKNUM")], [0, 1]],
      ["nSAUTOCON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAUTOCON")], [0, 1]],
      ["nSCAMPON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCAMPON")], [0, 1]],
      ["nSCTD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTD")], [0, 1]],
      ["nSCLICKHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLICKHOLD")], [0, 1]],
      ["nSQUEUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQUEUE")], [0, 1]],
      ["nSSANSWER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSANSWER")], [0, 1]],
      ["nSICENCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICENCF")], [0, 1]],
      ["nSCFGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFGO")], [0, 1]],
      ["nSCECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCECT")], [0, 1]],
      ["nSCTGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTGO")], [0, 1]],
      ["nSCTIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTIO")], [0, 1]],
      ["nSSETBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETBUSY")], [0, 1]],
      ["nSOVERSTEP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOVERSTEP")], [0, 1]],
      ["nSABSENT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABSENT")], [0, 1]],
      ["nSMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMONITOR")], [0, 1]],
      ["nSFMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFMONITOR")], [0, 1]],
      ["nSDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDISCNT")], [0, 1]],
      ["nSFDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFDISCNT")], [0, 1]],
      ["nSINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINSERT")], [0, 1]],
      ["nSFINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFINSERT")], [0, 1]],
      ["nSASI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSASI")], [0, 1]],
      ["nSPWCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPWCB")], [0, 1]],
      ["nSRD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRD")], [0, 1]],
      ["nSLCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSLCPS")], [0, 1]],
      ["nSNCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNCPS")], [0, 1]],
      ["nSICPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICPS")], [0, 1]],
      ["nSHCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHCPS")], [0, 1]],
      ["nSCBCLOCK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBCLOCK")], [0, 1]],
      ["nSMINIBAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMINIBAR")], [0, 1]],
      ["nSMCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCN")], [0, 1]],
      ["nSDSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDSTR")], [0, 1]],
      ["nSOPRREG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOPRREG")], [0, 1]],
      ["nSONEKEY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSONEKEY")], [0, 1]],
      ["nSINBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINBOUND")], [0, 1]],
      ["nSOUTBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTBOUND")], [0, 1]],
      ["nSCALLERID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCALLERID")], [0, 1]],
      ["nSCUN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCUN")], [0, 1]],
      ["nSIPTVVC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIPTVVC")], [0, 1]],
      ["nSNP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNP")], [0, 1]],
      ["nSSEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSEC")], [0, 1]],
      ["nSSECSTA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSECSTA")], [0, 1]],
      ["nSHRCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHRCN")], [0, 1]],
      ["nSSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSB")], [0, 1]],
      ["nSSCCA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSCCA")], [0, 1]],
      ["nSCCS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCS")], [0, 1]],
      ["nSOCCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOCCR")], [0, 1]],
      ["nSIMSMS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIMSMS")], [0, 1]],
      ["lCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "LCO")], [0, 1]],
      ["lC", [nil, XSD::QName.new(NsV100R003C03SPC100, "LC")], [0, 1]],
      ["lCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "LCT")], [0, 1]],
      ["nTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTT")], [0, 1]],
      ["iTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ITT")], [0, 1]],
      ["iCTX", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICTX")], [0, 1]],
      ["oCTX", [nil, XSD::QName.new(NsV100R003C03SPC100, "OCTX")], [0, 1]],
      ["iNTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "INTT")], [0, 1]],
      ["iITT", [nil, XSD::QName.new(NsV100R003C03SPC100, "IITT")], [0, 1]],
      ["iCLT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICLT")], [0, 1]],
      ["iCDDD", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICDDD")], [0, 1]],
      ["iCIDD", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICIDD")], [0, 1]],
      ["iOLT", [nil, XSD::QName.new(NsV100R003C03SPC100, "IOLT")], [0, 1]],
      ["cTLCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTLCO")], [0, 1]],
      ["cTLCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTLCT")], [0, 1]],
      ["cTLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTLD")], [0, 1]],
      ["cTINTNANP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTINTNANP")], [0, 1]],
      ["cTINTWORLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTINTWORLD")], [0, 1]],
      ["cTDA", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTDA")], [0, 1]],
      ["cTOSM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTOSM")], [0, 1]],
      ["cTOSP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTOSP")], [0, 1]],
      ["cTOSP1", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTOSP1")], [0, 1]],
      ["cCO1", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO1")], [0, 1]],
      ["cCO2", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO2")], [0, 1]],
      ["cCO3", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO3")], [0, 1]],
      ["cCO4", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO4")], [0, 1]],
      ["cCO5", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO5")], [0, 1]],
      ["cCO6", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO6")], [0, 1]],
      ["cCO7", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO7")], [0, 1]],
      ["cCO8", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO8")], [0, 1]],
      ["cCO9", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO9")], [0, 1]],
      ["cCO10", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO10")], [0, 1]],
      ["cCO11", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO11")], [0, 1]],
      ["cCO12", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO12")], [0, 1]],
      ["cCO13", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO13")], [0, 1]],
      ["cCO14", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO14")], [0, 1]],
      ["cCO15", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO15")], [0, 1]],
      ["cCO16", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO16")], [0, 1]],
      ["cCO17", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO17")], [0, 1]],
      ["cCO18", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO18")], [0, 1]],
      ["cCO19", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO19")], [0, 1]],
      ["cCO20", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO20")], [0, 1]],
      ["cCO21", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO21")], [0, 1]],
      ["cCO22", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO22")], [0, 1]],
      ["cCO23", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO23")], [0, 1]],
      ["cCO24", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO24")], [0, 1]],
      ["cCO25", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO25")], [0, 1]],
      ["cCO26", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO26")], [0, 1]],
      ["cCO27", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO27")], [0, 1]],
      ["cCO28", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO28")], [0, 1]],
      ["cCO29", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO29")], [0, 1]],
      ["cCO30", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO30")], [0, 1]],
      ["cCO31", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO31")], [0, 1]],
      ["cCO32", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO32")], [0, 1]],
      ["hIGHENTCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "HIGHENTCO")], [0, 1]],
      ["oPERATOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "OPERATOR")], [0, 1]],
      ["sUPYSRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUPYSRV")], [0, 1]],
      ["iDDCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "IDDCI")], [0, 1]],
      ["nTCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTCI")], [0, 1]],
      ["lTCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "LTCI")], [0, 1]],
      ["rSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "RSC")], [0, 1]],
      ["cIG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CIG")], [0, 1]],
      ["oUTRST", [nil, XSD::QName.new(NsV100R003C03SPC100, "OUTRST")], [0, 1]],
      ["iNRST", [nil, XSD::QName.new(NsV100R003C03SPC100, "INRST")], [0, 1]],
      ["nOAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOAT")], [0, 1]],
      ["rINGCOUNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "RINGCOUNT")], [0, 1]],
      ["vMAIND", [nil, XSD::QName.new(NsV100R003C03SPC100, "VMAIND")], [0, 1]],
      ["vDMAIND", [nil, XSD::QName.new(NsV100R003C03SPC100, "VDMAIND")], [0, 1]],
      ["tGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "TGRP")], [0, 1]],
      ["tIDHLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIDHLD")], [0, 1]],
      ["tIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIDCW")], [0, 1]],
      ["sCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SCF")], [0, 1]],
      ["lMTGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "LMTGRP")], [0, 1]],
      ["fLBGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "FLBGRP")], [0, 1]],
      ["sLBGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "SLBGRP")], [0, 1]],
      ["cOP", [nil, XSD::QName.new(NsV100R003C03SPC100, "COP")], [0, 1]],
      ["g711_64K_A_LAW", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711_64K_A_LAW")], [0, 1]],
      ["g711_64K_U_LAW", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711_64K_U_LAW")], [0, 1]],
      ["g722", [nil, XSD::QName.new(NsV100R003C03SPC100, "G722")], [0, 1]],
      ["g723", [nil, XSD::QName.new(NsV100R003C03SPC100, "G723")], [0, 1]],
      ["g726", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726")], [0, 1]],
      ["g728", [nil, XSD::QName.new(NsV100R003C03SPC100, "G728")], [0, 1]],
      ["g729", [nil, XSD::QName.new(NsV100R003C03SPC100, "G729")], [0, 1]],
      ["cODEC_MP4A", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC_MP4A")], [0, 1]],
      ["cODEC2833", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC2833")], [0, 1]],
      ["cODEC2198", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC2198")], [0, 1]],
      ["g726_40", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_40")], [0, 1]],
      ["g726_32", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_32")], [0, 1]],
      ["g726_24", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_24")], [0, 1]],
      ["g726_16", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_16")], [0, 1]],
      ["aMR", [nil, XSD::QName.new(NsV100R003C03SPC100, "AMR")], [0, 1]],
      ["cLEARMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLEARMODE")], [0, 1]],
      ["iLBC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ILBC")], [0, 1]],
      ["sPEEX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SPEEX")], [0, 1]],
      ["g729EV", [nil, XSD::QName.new(NsV100R003C03SPC100, "G729EV")], [0, 1]],
      ["eVRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "EVRC")], [0, 1]],
      ["eVRCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "EVRCB")], [0, 1]],
      ["h261", [nil, XSD::QName.new(NsV100R003C03SPC100, "H261")], [0, 1]],
      ["h263", [nil, XSD::QName.new(NsV100R003C03SPC100, "H263")], [0, 1]],
      ["cODEC_MP4V", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC_MP4V")], [0, 1]],
      ["h264", [nil, XSD::QName.new(NsV100R003C03SPC100, "H264")], [0, 1]],
      ["t38", [nil, XSD::QName.new(NsV100R003C03SPC100, "T38")], [0, 1]],
      ["t120", [nil, XSD::QName.new(NsV100R003C03SPC100, "T120")], [0, 1]],
      ["g711A_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711A_VBD")], [0, 1]],
      ["g711U_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711U_VBD")], [0, 1]],
      ["g726_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_VBD")], [0, 1]],
      ["g726_40_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_40_VBD")], [0, 1]],
      ["g726_32_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_32_VBD")], [0, 1]],
      ["g726_24_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_24_VBD")], [0, 1]],
      ["g726_16_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_16_VBD")], [0, 1]],
      ["wIND_BAND_AMR", [nil, XSD::QName.new(NsV100R003C03SPC100, "WIND_BAND_AMR")], [0, 1]],
      ["gSM610", [nil, XSD::QName.new(NsV100R003C03SPC100, "GSM610")], [0, 1]],
      ["h263_2000", [nil, XSD::QName.new(NsV100R003C03SPC100, "H263_2000")], [0, 1]],
      ["bROADVOICE_32", [nil, XSD::QName.new(NsV100R003C03SPC100, "BROADVOICE_32")], [0, 1]],
      ["uNKNOWN_CODEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "UNKNOWN_CODEC")], [0, 1]],
      ["aCODEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACODEC")], [0, 1]],
      ["vCODEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "VCODEC")], [0, 1]],
      ["pOLIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "POLIDX")], [0, 1]],
      ["nCPI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NCPI")], [0, 1]],
      ["iCPI", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICPI")], [0, 1]],
      ["hCPI", [nil, XSD::QName.new(NsV100R003C03SPC100, "HCPI")], [0, 1]],
      ["eBOCL", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBOCL")], [0, 1]],
      ["eBOPL", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBOPL")], [0, 1]],
      ["eBOIT", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBOIT")], [0, 1]],
      ["rM", [nil, XSD::QName.new(NsV100R003C03SPC100, "RM")], [0, 1]],
      ["cPC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CPC")], [0, 1]],
      ["pCHG", [nil, XSD::QName.new(NsV100R003C03SPC100, "PCHG")], [0, 1]],
      ["tFPT", [nil, XSD::QName.new(NsV100R003C03SPC100, "TFPT")], [0, 1]],
      ["cHT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHT")], [0, 1]],
      ["mCIDMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCIDMODE")], [0, 1]],
      ["mCIDCMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCIDCMODE")], [0, 1]],
      ["mCIDAMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCIDAMODE")], [0, 1]],
      ["pREPAIDIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "PREPAIDIDX")], [0, 1]],
      ["cRBTID", [nil, XSD::QName.new(NsV100R003C03SPC100, "CRBTID")], [0, 1]],
      ["oDBBICTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBICTYPE")], [0, 1]],
      ["oDBBOCTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBOCTYPE")], [0, 1]],
      ["oDBBARTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBARTYPE")], [0, 1]],
      ["oDBSS", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBSS")], [0, 1]],
      ["oDBBRCFTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBRCFTYPE")], [0, 1]],
      ["oDBINFORM", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBINFORM")], [0, 1]],
      ["oDBENTAIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBENTAIN")], [0, 1]],
      ["oDBPLMNBAR1", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR1")], [0, 1]],
      ["oDBPLMNBAR2", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR2")], [0, 1]],
      ["oDBPLMNBAR3", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR3")], [0, 1]],
      ["oDBPLMNBAR4", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR4")], [0, 1]],
      ["pNOTI", [nil, XSD::QName.new(NsV100R003C03SPC100, "PNOTI")], [0, 1]],
      ["mAXPARACALL", [nil, XSD::QName.new(NsV100R003C03SPC100, "MAXPARACALL")], [0, 1]],
      ["aTSDTMBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "ATSDTMBUSY")], [0, 1]],
      ["cALLCOUNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLCOUNT")], [0, 1]],
      ["cDNOTICALLER", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDNOTICALLER")], [0, 1]],
      ["iSCHGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "ISCHGFLAG")], [0, 1]],
      ["cHC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHC")], [0, 1]],
      ["cUSER", [nil, XSD::QName.new(NsV100R003C03SPC100, "CUSER")], [0, 1]],
      ["cGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CGRP")], [0, 1]],
      ["cUSERGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CUSERGRP")], [0, 1]],
      ["sTCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "STCF")], [0, 1]],
      ["cHARSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHARSC")], [0, 1]],
      ["rEGUIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGUIDX")], [0, 1]],
      ["sOCBFUNC", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCBFUNC")], [0, 1]],
      ["sOCBPTONEIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCBPTONEIDX")], [0, 1]],
      ["aDMINCBA", [nil, XSD::QName.new(NsV100R003C03SPC100, "ADMINCBA")], [0, 1]],
      ["aDCONTROL_DIVERSION", [nil, XSD::QName.new(NsV100R003C03SPC100, "ADCONTROL_DIVERSION")], [0, 1]],
      ["dPR", [nil, XSD::QName.new(NsV100R003C03SPC100, "DPR")], [0, 1]],
      ["pRON", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRON")], [0, 1]],
      ["cPCRUS", [nil, XSD::QName.new(NsV100R003C03SPC100, "CPCRUS")], [0, 1]],
      ["cUSCAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CUSCAT")], [0, 1]],
      ["sPT100REL", [nil, XSD::QName.new(NsV100R003C03SPC100, "SPT100REL")], [0, 1]],
      ["aNALYSISMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ANALYSISMODE")], [0, 1]],
      ["gRPIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPIDX")], [0, 1]],
      ["sCADDRIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SCADDRIDX")], [0, 1]],
      ["cDNOCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDNOCB")], [0, 1]],
      ["pBTSBR", ["ADD_SBR::PBTSBR", XSD::QName.new(NsV100R003C03SPC100, "PBTSBR")], [0, 1]],
      ["kVALUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "KVALUE")], [0, 1]],
      ["iNPFIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "INPFIDX")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_SBR::PBTSBR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "PBTSBR"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["pBXID", [nil, XSD::QName.new(NsV100R003C03SPC100, "PBXID")], [0, 1]],
      ["iSPILOT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ISPILOT")], [0, 1]],
      ["iSSHARESRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "ISSHARESRV")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_SBRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_SBRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_SBR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_SBR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["tEMPLATEIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "TEMPLATEIDX")], [0, 1]],
      ["dSPIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "DSPIDX")], [0, 1]],
      ["lP", [nil, XSD::QName.new(NsV100R003C03SPC100, "LP")], [0, 1]],
      ["cSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSC")], [0, 1]],
      ["uNAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "UNAME")], [0, 1]],
      ["uTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "UTYPE")], [0, 1]],
      ["vCCFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "VCCFLAG")], [0, 1]],
      ["vTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "VTFLAG")], [0, 1]],
      ["nSCFU", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFU")], [0, 1]],
      ["nSCFUVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFUVM")], [0, 1]],
      ["nSCFB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFB")], [0, 1]],
      ["nSCFBVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFBVM")], [0, 1]],
      ["nSCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNR")], [0, 1]],
      ["nSCFNRVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRVM")], [0, 1]],
      ["nSCFNL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNL")], [0, 1]],
      ["nSCFNLVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNLVM")], [0, 1]],
      ["nSCD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCD")], [0, 1]],
      ["nSCDVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCDVM")], [0, 1]],
      ["nSCFNRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRC")], [0, 1]],
      ["nSCFNRCVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRCVM")], [0, 1]],
      ["nSCLIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIP")], [0, 1]],
      ["nSCIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIDCW")], [0, 1]],
      ["nSRIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIO")], [0, 1]],
      ["nSCNIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIP")], [0, 1]],
      ["nSCLIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIR")], [0, 1]],
      ["nSRIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIP")], [0, 1]],
      ["nSCNIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIR")], [0, 1]],
      ["nSRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRID")], [0, 1]],
      ["nSNRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRID")], [0, 1]],
      ["nSRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRND")], [0, 1]],
      ["nSNRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRND")], [0, 1]],
      ["nSCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCW")], [0, 1]],
      ["nSCCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCW")], [0, 1]],
      ["nSOIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOIP")], [0, 1]],
      ["nSACRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACRM")], [0, 1]],
      ["nSGOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGOIR")], [0, 1]],
      ["nSMOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMOIR")], [0, 1]],
      ["nSTIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIP")], [0, 1]],
      ["nSTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIR")], [0, 1]],
      ["nSOTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOTIR")], [0, 1]],
      ["nSCLIPNOSCREENING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIPNOSCREENING")], [0, 1]],
      ["nSCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCR")], [0, 1]],
      ["nSWAKE_UP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSWAKE_UP")], [0, 1]],
      ["nSAOC_D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_D")], [0, 1]],
      ["nSAOC_E", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_E")], [0, 1]],
      ["nSXEXH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEXH")], [0, 1]],
      ["nSXEGJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEGJ")], [0, 1]],
      ["nSCWCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCWCFNR")], [0, 1]],
      ["nSIIFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIIFC")], [0, 1]],
      ["nSDN_CALL_OUT_BAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_BAR")], [0, 1]],
      ["nSCCBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBS")], [0, 1]],
      ["nSCCNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNR")], [0, 1]],
      ["nSCCBSR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBSR")], [0, 1]],
      ["nSCCNRR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNRR")], [0, 1]],
      ["nS3PTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NS3PTY")], [0, 1]],
      ["nSNPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNPTY")], [0, 1]],
      ["nSDND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDND")], [0, 1]],
      ["nSMCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCR")], [0, 1]],
      ["nSCBA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBA")], [0, 1]],
      ["nSTMP_LIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTMP_LIN")], [0, 1]],
      ["nSCODEC_CNTRL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCODEC_CNTRL")], [0, 1]],
      ["nSMWI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMWI")], [0, 1]],
      ["nSDC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDC")], [0, 1]],
      ["nSHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOLD")], [0, 1]],
      ["nSECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSECT")], [0, 1]],
      ["nSCFTB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFTB")], [0, 1]],
      ["nSDAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDAN")], [0, 1]],
      ["nSSTOP_SECRET", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSTOP_SECRET")], [0, 1]],
      ["nSMCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCID")], [0, 1]],
      ["nSEBO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSEBO")], [0, 1]],
      ["nSICO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICO")], [0, 1]],
      ["nSOUTG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTG")], [0, 1]],
      ["nSINQYH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINQYH")], [0, 1]],
      ["nSUINFO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSUINFO")], [0, 1]],
      ["nSDN_CALL_OUT_ALLOW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_ALLOW")], [0, 1]],
      ["nSSIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSIC")], [0, 1]],
      ["nSSOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSOC")], [0, 1]],
      ["nSSETCFNRTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETCFNRTIME")], [0, 1]],
      ["nSCFS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFS")], [0, 1]],
      ["nSCFSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFSB")], [0, 1]],
      ["nSFAX", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFAX")], [0, 1]],
      ["nSABRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABRC")], [0, 1]],
      ["nSACRTOVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACRTOVM")], [0, 1]],
      ["nSPREPAID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPREPAID")], [0, 1]],
      ["nSCRBT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCRBT")], [0, 1]],
      ["nSICB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICB")], [0, 1]],
      ["nSMRINGING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMRINGING")], [0, 1]],
      ["nSCIS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIS")], [0, 1]],
      ["nSCBEG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBEG")], [0, 1]],
      ["nSCOLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLP")], [0, 1]],
      ["nSCOLR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLR")], [0, 1]],
      ["nSCOLPOVR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLPOVR")], [0, 1]],
      ["nSBAOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAOC")], [0, 1]],
      ["nSBOIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOIC")], [0, 1]],
      ["nSBOICEXHC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOICEXHC")], [0, 1]],
      ["nSBAIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAIC")], [0, 1]],
      ["nSBICROM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBICROM")], [0, 1]],
      ["nSSPEED_DIAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSPEED_DIAL")], [0, 1]],
      ["nSSD1D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD1D")], [0, 1]],
      ["nSSD2D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD2D")], [0, 1]],
      ["nSGRNCALL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGRNCALL")], [0, 1]],
      ["nSCPARK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCPARK")], [0, 1]],
      ["nSGAA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGAA")], [0, 1]],
      ["nSQSNS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQSNS")], [0, 1]],
      ["nSMSN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMSN")], [0, 1]],
      ["nSHOTLINE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOTLINE")], [0, 1]],
      ["nSAOC_S", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_S")], [0, 1]],
      ["nSNIGHTSRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNIGHTSRV")], [0, 1]],
      ["nSBACKNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBACKNUM")], [0, 1]],
      ["nSAUTOCON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAUTOCON")], [0, 1]],
      ["nSCAMPON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCAMPON")], [0, 1]],
      ["nSCTD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTD")], [0, 1]],
      ["nSCLICKHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLICKHOLD")], [0, 1]],
      ["nSQUEUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQUEUE")], [0, 1]],
      ["nSSANSWER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSANSWER")], [0, 1]],
      ["nSICENCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICENCF")], [0, 1]],
      ["nSCFGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFGO")], [0, 1]],
      ["nSCECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCECT")], [0, 1]],
      ["nSCTGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTGO")], [0, 1]],
      ["nSCTIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTIO")], [0, 1]],
      ["nSSETBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETBUSY")], [0, 1]],
      ["nSOVERSTEP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOVERSTEP")], [0, 1]],
      ["nSABSENT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABSENT")], [0, 1]],
      ["nSMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMONITOR")], [0, 1]],
      ["nSFMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFMONITOR")], [0, 1]],
      ["nSDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDISCNT")], [0, 1]],
      ["nSFDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFDISCNT")], [0, 1]],
      ["nSINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINSERT")], [0, 1]],
      ["nSFINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFINSERT")], [0, 1]],
      ["nSASI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSASI")], [0, 1]],
      ["nSPWCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPWCB")], [0, 1]],
      ["nSRD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRD")], [0, 1]],
      ["nSLCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSLCPS")], [0, 1]],
      ["nSNCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNCPS")], [0, 1]],
      ["nSICPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICPS")], [0, 1]],
      ["nSHCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHCPS")], [0, 1]],
      ["nSCBCLOCK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBCLOCK")], [0, 1]],
      ["nSMINIBAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMINIBAR")], [0, 1]],
      ["nSMCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCN")], [0, 1]],
      ["nSDSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDSTR")], [0, 1]],
      ["nSOPRREG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOPRREG")], [0, 1]],
      ["nSONEKEY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSONEKEY")], [0, 1]],
      ["nSINBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINBOUND")], [0, 1]],
      ["nSOUTBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTBOUND")], [0, 1]],
      ["nSCALLERID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCALLERID")], [0, 1]],
      ["nSCUN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCUN")], [0, 1]],
      ["nSIPTVVC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIPTVVC")], [0, 1]],
      ["nSNP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNP")], [0, 1]],
      ["nSSEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSEC")], [0, 1]],
      ["nSSECSTA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSECSTA")], [0, 1]],
      ["nSHRCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHRCN")], [0, 1]],
      ["nSSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSB")], [0, 1]],
      ["nSSCCA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSCCA")], [0, 1]],
      ["nSCCS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCS")], [0, 1]],
      ["nSOCCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOCCR")], [0, 1]],
      ["nSIMSMS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIMSMS")], [0, 1]],
      ["lCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "LCO")], [0, 1]],
      ["lC", [nil, XSD::QName.new(NsV100R003C03SPC100, "LC")], [0, 1]],
      ["lCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "LCT")], [0, 1]],
      ["nTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTT")], [0, 1]],
      ["iTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ITT")], [0, 1]],
      ["iCTX", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICTX")], [0, 1]],
      ["oCTX", [nil, XSD::QName.new(NsV100R003C03SPC100, "OCTX")], [0, 1]],
      ["iNTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "INTT")], [0, 1]],
      ["iITT", [nil, XSD::QName.new(NsV100R003C03SPC100, "IITT")], [0, 1]],
      ["iCLT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICLT")], [0, 1]],
      ["iCDDD", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICDDD")], [0, 1]],
      ["iCIDD", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICIDD")], [0, 1]],
      ["iOLT", [nil, XSD::QName.new(NsV100R003C03SPC100, "IOLT")], [0, 1]],
      ["cTLCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTLCO")], [0, 1]],
      ["cTLCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTLCT")], [0, 1]],
      ["cTLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTLD")], [0, 1]],
      ["cTINTNANP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTINTNANP")], [0, 1]],
      ["cTINTWORLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTINTWORLD")], [0, 1]],
      ["cTDA", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTDA")], [0, 1]],
      ["cTOSM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTOSM")], [0, 1]],
      ["cTOSP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTOSP")], [0, 1]],
      ["cTOSP1", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTOSP1")], [0, 1]],
      ["cCO1", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO1")], [0, 1]],
      ["cCO2", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO2")], [0, 1]],
      ["cCO3", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO3")], [0, 1]],
      ["cCO4", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO4")], [0, 1]],
      ["cCO5", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO5")], [0, 1]],
      ["cCO6", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO6")], [0, 1]],
      ["cCO7", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO7")], [0, 1]],
      ["cCO8", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO8")], [0, 1]],
      ["cCO9", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO9")], [0, 1]],
      ["cCO10", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO10")], [0, 1]],
      ["cCO11", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO11")], [0, 1]],
      ["cCO12", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO12")], [0, 1]],
      ["cCO13", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO13")], [0, 1]],
      ["cCO14", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO14")], [0, 1]],
      ["cCO15", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO15")], [0, 1]],
      ["cCO16", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO16")], [0, 1]],
      ["cCO17", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO17")], [0, 1]],
      ["cCO18", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO18")], [0, 1]],
      ["cCO19", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO19")], [0, 1]],
      ["cCO20", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO20")], [0, 1]],
      ["cCO21", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO21")], [0, 1]],
      ["cCO22", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO22")], [0, 1]],
      ["cCO23", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO23")], [0, 1]],
      ["cCO24", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO24")], [0, 1]],
      ["cCO25", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO25")], [0, 1]],
      ["cCO26", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO26")], [0, 1]],
      ["cCO27", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO27")], [0, 1]],
      ["cCO28", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO28")], [0, 1]],
      ["cCO29", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO29")], [0, 1]],
      ["cCO30", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO30")], [0, 1]],
      ["cCO31", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO31")], [0, 1]],
      ["cCO32", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO32")], [0, 1]],
      ["hIGHENTCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "HIGHENTCO")], [0, 1]],
      ["oPERATOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "OPERATOR")], [0, 1]],
      ["sUPYSRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUPYSRV")], [0, 1]],
      ["iDDCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "IDDCI")], [0, 1]],
      ["nTCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTCI")], [0, 1]],
      ["lTCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "LTCI")], [0, 1]],
      ["rSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "RSC")], [0, 1]],
      ["cIG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CIG")], [0, 1]],
      ["oUTRST", [nil, XSD::QName.new(NsV100R003C03SPC100, "OUTRST")], [0, 1]],
      ["iNRST", [nil, XSD::QName.new(NsV100R003C03SPC100, "INRST")], [0, 1]],
      ["nOAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOAT")], [0, 1]],
      ["rINGCOUNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "RINGCOUNT")], [0, 1]],
      ["vMAIND", [nil, XSD::QName.new(NsV100R003C03SPC100, "VMAIND")], [0, 1]],
      ["vDMAIND", [nil, XSD::QName.new(NsV100R003C03SPC100, "VDMAIND")], [0, 1]],
      ["tGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "TGRP")], [0, 1]],
      ["tIDHLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIDHLD")], [0, 1]],
      ["tIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIDCW")], [0, 1]],
      ["sCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SCF")], [0, 1]],
      ["lMTGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "LMTGRP")], [0, 1]],
      ["fLBGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "FLBGRP")], [0, 1]],
      ["sLBGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "SLBGRP")], [0, 1]],
      ["cOP", [nil, XSD::QName.new(NsV100R003C03SPC100, "COP")], [0, 1]],
      ["g711_64K_A_LAW", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711_64K_A_LAW")], [0, 1]],
      ["g711_64K_U_LAW", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711_64K_U_LAW")], [0, 1]],
      ["g722", [nil, XSD::QName.new(NsV100R003C03SPC100, "G722")], [0, 1]],
      ["g723", [nil, XSD::QName.new(NsV100R003C03SPC100, "G723")], [0, 1]],
      ["g726", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726")], [0, 1]],
      ["g728", [nil, XSD::QName.new(NsV100R003C03SPC100, "G728")], [0, 1]],
      ["g729", [nil, XSD::QName.new(NsV100R003C03SPC100, "G729")], [0, 1]],
      ["cODEC_MP4A", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC_MP4A")], [0, 1]],
      ["cODEC2833", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC2833")], [0, 1]],
      ["cODEC2198", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC2198")], [0, 1]],
      ["g726_40", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_40")], [0, 1]],
      ["g726_32", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_32")], [0, 1]],
      ["g726_24", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_24")], [0, 1]],
      ["g726_16", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_16")], [0, 1]],
      ["aMR", [nil, XSD::QName.new(NsV100R003C03SPC100, "AMR")], [0, 1]],
      ["cLEARMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLEARMODE")], [0, 1]],
      ["iLBC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ILBC")], [0, 1]],
      ["sPEEX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SPEEX")], [0, 1]],
      ["g729EV", [nil, XSD::QName.new(NsV100R003C03SPC100, "G729EV")], [0, 1]],
      ["eVRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "EVRC")], [0, 1]],
      ["eVRCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "EVRCB")], [0, 1]],
      ["h261", [nil, XSD::QName.new(NsV100R003C03SPC100, "H261")], [0, 1]],
      ["h263", [nil, XSD::QName.new(NsV100R003C03SPC100, "H263")], [0, 1]],
      ["cODEC_MP4V", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC_MP4V")], [0, 1]],
      ["h264", [nil, XSD::QName.new(NsV100R003C03SPC100, "H264")], [0, 1]],
      ["t38", [nil, XSD::QName.new(NsV100R003C03SPC100, "T38")], [0, 1]],
      ["t120", [nil, XSD::QName.new(NsV100R003C03SPC100, "T120")], [0, 1]],
      ["g711A_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711A_VBD")], [0, 1]],
      ["g711U_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711U_VBD")], [0, 1]],
      ["g726_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_VBD")], [0, 1]],
      ["g726_40_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_40_VBD")], [0, 1]],
      ["g726_32_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_32_VBD")], [0, 1]],
      ["g726_24_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_24_VBD")], [0, 1]],
      ["g726_16_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_16_VBD")], [0, 1]],
      ["wIND_BAND_AMR", [nil, XSD::QName.new(NsV100R003C03SPC100, "WIND_BAND_AMR")], [0, 1]],
      ["gSM610", [nil, XSD::QName.new(NsV100R003C03SPC100, "GSM610")], [0, 1]],
      ["h263_2000", [nil, XSD::QName.new(NsV100R003C03SPC100, "H263_2000")], [0, 1]],
      ["bROADVOICE_32", [nil, XSD::QName.new(NsV100R003C03SPC100, "BROADVOICE_32")], [0, 1]],
      ["uNKNOWN_CODEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "UNKNOWN_CODEC")], [0, 1]],
      ["aCODEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACODEC")], [0, 1]],
      ["vCODEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "VCODEC")], [0, 1]],
      ["pOLIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "POLIDX")], [0, 1]],
      ["nCPI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NCPI")], [0, 1]],
      ["iCPI", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICPI")], [0, 1]],
      ["hCPI", [nil, XSD::QName.new(NsV100R003C03SPC100, "HCPI")], [0, 1]],
      ["eBOCL", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBOCL")], [0, 1]],
      ["eBOPL", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBOPL")], [0, 1]],
      ["eBOIT", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBOIT")], [0, 1]],
      ["rM", [nil, XSD::QName.new(NsV100R003C03SPC100, "RM")], [0, 1]],
      ["cPC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CPC")], [0, 1]],
      ["pCHG", [nil, XSD::QName.new(NsV100R003C03SPC100, "PCHG")], [0, 1]],
      ["tFPT", [nil, XSD::QName.new(NsV100R003C03SPC100, "TFPT")], [0, 1]],
      ["cHT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHT")], [0, 1]],
      ["mCIDMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCIDMODE")], [0, 1]],
      ["mCIDCMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCIDCMODE")], [0, 1]],
      ["mCIDAMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCIDAMODE")], [0, 1]],
      ["pREPAIDIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "PREPAIDIDX")], [0, 1]],
      ["cRBTID", [nil, XSD::QName.new(NsV100R003C03SPC100, "CRBTID")], [0, 1]],
      ["oDBBICTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBICTYPE")], [0, 1]],
      ["oDBBOCTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBOCTYPE")], [0, 1]],
      ["oDBBARTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBARTYPE")], [0, 1]],
      ["oDBSS", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBSS")], [0, 1]],
      ["oDBBRCFTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBRCFTYPE")], [0, 1]],
      ["oDBINFORM", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBINFORM")], [0, 1]],
      ["oDBENTAIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBENTAIN")], [0, 1]],
      ["oDBPLMNBAR1", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR1")], [0, 1]],
      ["oDBPLMNBAR2", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR2")], [0, 1]],
      ["oDBPLMNBAR3", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR3")], [0, 1]],
      ["oDBPLMNBAR4", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR4")], [0, 1]],
      ["pNOTI", [nil, XSD::QName.new(NsV100R003C03SPC100, "PNOTI")], [0, 1]],
      ["mAXPARACALL", [nil, XSD::QName.new(NsV100R003C03SPC100, "MAXPARACALL")], [0, 1]],
      ["aTSDTMBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "ATSDTMBUSY")], [0, 1]],
      ["cALLCOUNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLCOUNT")], [0, 1]],
      ["cDNOTICALLER", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDNOTICALLER")], [0, 1]],
      ["iSCHGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "ISCHGFLAG")], [0, 1]],
      ["cHC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHC")], [0, 1]],
      ["cUSER", [nil, XSD::QName.new(NsV100R003C03SPC100, "CUSER")], [0, 1]],
      ["cGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CGRP")], [0, 1]],
      ["cUSERGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CUSERGRP")], [0, 1]],
      ["sTCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "STCF")], [0, 1]],
      ["cHARSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHARSC")], [0, 1]],
      ["rEGUIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGUIDX")], [0, 1]],
      ["sOCBFUNC", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCBFUNC")], [0, 1]],
      ["sOCBPTONEIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCBPTONEIDX")], [0, 1]],
      ["aDMINCBA", [nil, XSD::QName.new(NsV100R003C03SPC100, "ADMINCBA")], [0, 1]],
      ["aDCONTROL_DIVERSION", [nil, XSD::QName.new(NsV100R003C03SPC100, "ADCONTROL_DIVERSION")], [0, 1]],
      ["dPR", [nil, XSD::QName.new(NsV100R003C03SPC100, "DPR")], [0, 1]],
      ["pRON", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRON")], [0, 1]],
      ["cPCRUS", [nil, XSD::QName.new(NsV100R003C03SPC100, "CPCRUS")], [0, 1]],
      ["cUSCAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CUSCAT")], [0, 1]],
      ["sPT100REL", [nil, XSD::QName.new(NsV100R003C03SPC100, "SPT100REL")], [0, 1]],
      ["aNALYSISMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ANALYSISMODE")], [0, 1]],
      ["gRPIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPIDX")], [0, 1]],
      ["sCADDRIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SCADDRIDX")], [0, 1]],
      ["cDNOCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDNOCB")], [0, 1]],
      ["pBTSBR", ["MOD_SBR::PBTSBR", XSD::QName.new(NsV100R003C03SPC100, "PBTSBR")], [0, 1]],
      ["kVALUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "KVALUE")], [0, 1]],
      ["iNPFIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "INPFIDX")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_SBR::PBTSBR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "PBTSBR"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["pBXID", [nil, XSD::QName.new(NsV100R003C03SPC100, "PBXID")], [0, 1]],
      ["iSSHARESRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "ISSHARESRV")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_SBRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_SBRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_SBR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_SBR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_SBRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_SBRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SBR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_SBR"),
    :schema_element => [
      ["responseComplexType", [nil, XSD::QName.new(NsV100R003C03SPC100, "ResponseComplexType")]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["dSPMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "DSPMODE")], [0, 1]],
      ["dSPOPTIMIZE", [nil, XSD::QName.new(NsV100R003C03SPC100, "DSPOPTIMIZE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SBRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_SBRResponse"),
    :schema_element => [
      ["result", ["LST_SBRType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_SS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_SS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nSCFU", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFU")], [0, 1]],
      ["nSCFUVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFUVM")], [0, 1]],
      ["nSCFB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFB")], [0, 1]],
      ["nSCFBVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFBVM")], [0, 1]],
      ["nSCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNR")], [0, 1]],
      ["nSCFNRVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRVM")], [0, 1]],
      ["nSCFNL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNL")], [0, 1]],
      ["nSCFNLVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNLVM")], [0, 1]],
      ["nSCD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCD")], [0, 1]],
      ["nSCDVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCDVM")], [0, 1]],
      ["nSCFNRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRC")], [0, 1]],
      ["nSCFNRCVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRCVM")], [0, 1]],
      ["nSCIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIDCW")], [0, 1]],
      ["nSRIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIP")], [0, 1]],
      ["nSRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRID")], [0, 1]],
      ["nSNRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRID")], [0, 1]],
      ["nSRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRND")], [0, 1]],
      ["nSNRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRND")], [0, 1]],
      ["nSOIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOIP")], [0, 1]],
      ["nSGOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGOIR")], [0, 1]],
      ["nSMOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMOIR")], [0, 1]],
      ["nSTIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIP")], [0, 1]],
      ["nSTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIR")], [0, 1]],
      ["nSOTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOTIR")], [0, 1]],
      ["nSCLIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIP")], [0, 1]],
      ["nSCLIPNOSCREENING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIPNOSCREENING")], [0, 1]],
      ["nSRIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIO")], [0, 1]],
      ["nSCNIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIP")], [0, 1]],
      ["nSCLIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIR")], [0, 1]],
      ["nSCNIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIR")], [0, 1]],
      ["nSCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCW")], [0, 1]],
      ["nSCCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCW")], [0, 1]],
      ["nSACRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACRM")], [0, 1]],
      ["nSCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCR")], [0, 1]],
      ["nSWAKE_UP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSWAKE_UP")], [0, 1]],
      ["nSAOC_D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_D")], [0, 1]],
      ["nSAOC_E", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_E")], [0, 1]],
      ["nSXEXH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEXH")], [0, 1]],
      ["nSXEGJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEGJ")], [0, 1]],
      ["nSCWCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCWCFNR")], [0, 1]],
      ["nSIIFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIIFC")], [0, 1]],
      ["nSDN_CALL_OUT_BAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_BAR")], [0, 1]],
      ["nSCCBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBS")], [0, 1]],
      ["nSCCNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNR")], [0, 1]],
      ["nSCCBSR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBSR")], [0, 1]],
      ["nSCCNRR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNRR")], [0, 1]],
      ["nS3PTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NS3PTY")], [0, 1]],
      ["nSNPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNPTY")], [0, 1]],
      ["nSDND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDND")], [0, 1]],
      ["nSMCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCR")], [0, 1]],
      ["nSCBA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBA")], [0, 1]],
      ["nSTMP_LIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTMP_LIN")], [0, 1]],
      ["nSCODEC_CNTRL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCODEC_CNTRL")], [0, 1]],
      ["nSMWI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMWI")], [0, 1]],
      ["nSDC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDC")], [0, 1]],
      ["nSHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOLD")], [0, 1]],
      ["nSECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSECT")], [0, 1]],
      ["nSCFTB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFTB")], [0, 1]],
      ["nSDAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDAN")], [0, 1]],
      ["nSSTOP_SECRET", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSTOP_SECRET")], [0, 1]],
      ["nSMCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCID")], [0, 1]],
      ["nSEBO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSEBO")], [0, 1]],
      ["nSICO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICO")], [0, 1]],
      ["nSOUTG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTG")], [0, 1]],
      ["nSINQYH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINQYH")], [0, 1]],
      ["nSUINFO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSUINFO")], [0, 1]],
      ["nSDN_CALL_OUT_ALLOW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_ALLOW")], [0, 1]],
      ["nSSIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSIC")], [0, 1]],
      ["nSSOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSOC")], [0, 1]],
      ["nSSETCFNRTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETCFNRTIME")], [0, 1]],
      ["nSCFS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFS")], [0, 1]],
      ["nSCFSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFSB")], [0, 1]],
      ["nSFAX", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFAX")], [0, 1]],
      ["nSABRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABRC")], [0, 1]],
      ["nSACRTOVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACRTOVM")], [0, 1]],
      ["nSPREPAID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPREPAID")], [0, 1]],
      ["nSCRBT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCRBT")], [0, 1]],
      ["nSICB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICB")], [0, 1]],
      ["nSMRINGING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMRINGING")], [0, 1]],
      ["nSCIS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIS")], [0, 1]],
      ["nSCBEG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBEG")], [0, 1]],
      ["nSCOLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLP")], [0, 1]],
      ["nSCOLR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLR")], [0, 1]],
      ["nSCOLPOVR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLPOVR")], [0, 1]],
      ["nSBAOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAOC")], [0, 1]],
      ["nSBOIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOIC")], [0, 1]],
      ["nSBOICEXHC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOICEXHC")], [0, 1]],
      ["nSBAIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAIC")], [0, 1]],
      ["nSBICROM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBICROM")], [0, 1]],
      ["nSSPEED_DIAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSPEED_DIAL")], [0, 1]],
      ["nSSD1D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD1D")], [0, 1]],
      ["nSSD2D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD2D")], [0, 1]],
      ["nSGRNCALL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGRNCALL")], [0, 1]],
      ["nSCPARK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCPARK")], [0, 1]],
      ["nSGAA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGAA")], [0, 1]],
      ["nSQSNS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQSNS")], [0, 1]],
      ["nSMSN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMSN")], [0, 1]],
      ["nSHOTLINE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOTLINE")], [0, 1]],
      ["nSAOC_S", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_S")], [0, 1]],
      ["nSNIGHTSRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNIGHTSRV")], [0, 1]],
      ["nSBACKNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBACKNUM")], [0, 1]],
      ["nSAUTOCON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAUTOCON")], [0, 1]],
      ["nSCAMPON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCAMPON")], [0, 1]],
      ["nSCTD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTD")], [0, 1]],
      ["nSCLICKHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLICKHOLD")], [0, 1]],
      ["nSQUEUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQUEUE")], [0, 1]],
      ["nSSANSWER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSANSWER")], [0, 1]],
      ["nSICENCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICENCF")], [0, 1]],
      ["nSCFGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFGO")], [0, 1]],
      ["nSCECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCECT")], [0, 1]],
      ["nSCTGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTGO")], [0, 1]],
      ["nSCTIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTIO")], [0, 1]],
      ["nSSETBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETBUSY")], [0, 1]],
      ["nSOVERSTEP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOVERSTEP")], [0, 1]],
      ["nSABSENT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABSENT")], [0, 1]],
      ["nSMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMONITOR")], [0, 1]],
      ["nSFMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFMONITOR")], [0, 1]],
      ["nSDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDISCNT")], [0, 1]],
      ["nSFDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFDISCNT")], [0, 1]],
      ["nSINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINSERT")], [0, 1]],
      ["nSFINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFINSERT")], [0, 1]],
      ["nSASI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSASI")], [0, 1]],
      ["nSPWCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPWCB")], [0, 1]],
      ["nSRD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRD")], [0, 1]],
      ["nSLCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSLCPS")], [0, 1]],
      ["nSNCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNCPS")], [0, 1]],
      ["nSICPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICPS")], [0, 1]],
      ["nSHCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHCPS")], [0, 1]],
      ["nSCBCLOCK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBCLOCK")], [0, 1]],
      ["nSMINIBAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMINIBAR")], [0, 1]],
      ["nSMCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCN")], [0, 1]],
      ["nSDSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDSTR")], [0, 1]],
      ["nSOPRREG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOPRREG")], [0, 1]],
      ["nSONEKEY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSONEKEY")], [0, 1]],
      ["nSINBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINBOUND")], [0, 1]],
      ["nSOUTBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTBOUND")], [0, 1]],
      ["nSCALLERID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCALLERID")], [0, 1]],
      ["nSCUN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCUN")], [0, 1]],
      ["nSIPTVVC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIPTVVC")], [0, 1]],
      ["nSNP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNP")], [0, 1]],
      ["nSSEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSEC")], [0, 1]],
      ["nSSECSTA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSECSTA")], [0, 1]],
      ["nSHRCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHRCN")], [0, 1]],
      ["nSSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSB")], [0, 1]],
      ["nSSCCA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSCCA")], [0, 1]],
      ["nSCCS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCS")], [0, 1]],
      ["nSOCCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOCCR")], [0, 1]],
      ["nSIMSMS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIMSMS")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_SSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_SSResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_SS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["dSPOPTIMIZE", [nil, XSD::QName.new(NsV100R003C03SPC100, "DSPOPTIMIZE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_SSResponse"),
    :schema_element => [
      ["result", ["LST_SSType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_COMSS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_COMSS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]],
      ["cFUVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFUVM")], [0, 1]],
      ["cFBVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFBVM")], [0, 1]],
      ["cFNRVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFNRVM")], [0, 1]],
      ["cFNLVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFNLVM")], [0, 1]],
      ["cFNRCVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFNRCVM")], [0, 1]],
      ["cD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CD")], [0, 1]],
      ["cDVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDVM")], [0, 1]],
      ["cIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "CIDCW")], [0, 1]],
      ["rIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "RIP")], [0, 1]],
      ["rID", [nil, XSD::QName.new(NsV100R003C03SPC100, "RID")], [0, 1]],
      ["nRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRID")], [0, 1]],
      ["rND", [nil, XSD::QName.new(NsV100R003C03SPC100, "RND")], [0, 1]],
      ["nRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRND")], [0, 1]],
      ["oIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "OIP")], [0, 1]],
      ["tIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIP")], [0, 1]],
      ["oTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "OTIR")], [0, 1]],
      ["cLIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLIP")], [0, 1]],
      ["rIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "RIO")], [0, 1]],
      ["cNIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CNIP")], [0, 1]],
      ["cLIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLIR")], [0, 1]],
      ["cNIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CNIR")], [0, 1]],
      ["cW", [nil, XSD::QName.new(NsV100R003C03SPC100, "CW")], [0, 1]],
      ["aCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACR")], [0, 1]],
      ["cR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CR")], [0, 1]],
      ["aOC_D", [nil, XSD::QName.new(NsV100R003C03SPC100, "AOC_D")], [0, 1]],
      ["aOC_E", [nil, XSD::QName.new(NsV100R003C03SPC100, "AOC_E")], [0, 1]],
      ["xEXH", [nil, XSD::QName.new(NsV100R003C03SPC100, "XEXH")], [0, 1]],
      ["xEGJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "XEGJ")], [0, 1]],
      ["iIFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "IIFC")], [0, 1]],
      ["cCBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCBS")], [0, 1]],
      ["cCNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCNR")], [0, 1]],
      ["cCBSR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCBSR")], [0, 1]],
      ["cCNRR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCNRR")], [0, 1]],
      ["tPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "TPTY")], [0, 1]],
      ["nPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NPTY")], [0, 1]],
      ["mCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCR")], [0, 1]],
      ["mWI", [nil, XSD::QName.new(NsV100R003C03SPC100, "MWI")], [0, 1]],
      ["dC", [nil, XSD::QName.new(NsV100R003C03SPC100, "DC")], [0, 1]],
      ["hOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "HOLD")], [0, 1]],
      ["eCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ECT")], [0, 1]],
      ["dAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "DAN")], [0, 1]],
      ["sTOP_SECRET", [nil, XSD::QName.new(NsV100R003C03SPC100, "STOP_SECRET")], [0, 1]],
      ["eBO", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBO")], [0, 1]],
      ["iCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICO")], [0, 1]],
      ["oUTG", [nil, XSD::QName.new(NsV100R003C03SPC100, "OUTG")], [0, 1]],
      ["iNQYH", [nil, XSD::QName.new(NsV100R003C03SPC100, "INQYH")], [0, 1]],
      ["sETCFNRTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "SETCFNRTIME")], [0, 1]],
      ["aCRTOVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACRTOVM")], [0, 1]],
      ["sETBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "SETBUSY")], [0, 1]],
      ["pWCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "PWCB")], [0, 1]],
      ["aOC_S", [nil, XSD::QName.new(NsV100R003C03SPC100, "AOC_S")], [0, 1]],
      ["mCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCID")], [0, 1]],
      ["cLIPNOSCREENING", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLIPNOSCREENING")], [0, 1]],
      ["cOLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "COLP")], [0, 1]],
      ["cOLPOVR", [nil, XSD::QName.new(NsV100R003C03SPC100, "COLPOVR")], [0, 1]],
      ["oPRREG", [nil, XSD::QName.new(NsV100R003C03SPC100, "OPRREG")], [0, 1]],
      ["sECSTA", [nil, XSD::QName.new(NsV100R003C03SPC100, "SECSTA")], [0, 1]],
      ["hRCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "HRCN")], [0, 1]],
      ["cCS", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCS")], [0, 1]],
      ["cRBT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CRBT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_COMSSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_COMSSResponse"),
    :schema_element => [
      ["result", ["REG_COMSSType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_COMSS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_COMSS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_COMSSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_COMSSResponse"),
    :schema_element => [
      ["result", ["DSP_COMSSType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_SS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_SS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cFUVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFUVM")], [0, 1]],
      ["cFBVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFBVM")], [0, 1]],
      ["cFNRVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFNRVM")], [0, 1]],
      ["cFNLVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFNLVM")], [0, 1]],
      ["cD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CD")], [0, 1]],
      ["cDVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDVM")], [0, 1]],
      ["cFNRCVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFNRCVM")], [0, 1]],
      ["cIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "CIDCW")], [0, 1]],
      ["rIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "RIP")], [0, 1]],
      ["rID", [nil, XSD::QName.new(NsV100R003C03SPC100, "RID")], [0, 1]],
      ["nRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRID")], [0, 1]],
      ["rND", [nil, XSD::QName.new(NsV100R003C03SPC100, "RND")], [0, 1]],
      ["nRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRND")], [0, 1]],
      ["oIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "OIP")], [0, 1]],
      ["tIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIP")], [0, 1]],
      ["oTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "OTIR")], [0, 1]],
      ["gOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "GOIR")], [0, 1]],
      ["mOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "MOIR")], [0, 1]],
      ["tIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIR")], [0, 1]],
      ["cLIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLIP")], [0, 1]],
      ["rIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "RIO")], [0, 1]],
      ["cNIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CNIP")], [0, 1]],
      ["cLIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLIR")], [0, 1]],
      ["cNIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CNIR")], [0, 1]],
      ["cW", [nil, XSD::QName.new(NsV100R003C03SPC100, "CW")], [0, 1]],
      ["aCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACR")], [0, 1]],
      ["cR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CR")], [0, 1]],
      ["aOC_D", [nil, XSD::QName.new(NsV100R003C03SPC100, "AOC_D")], [0, 1]],
      ["aOC_E", [nil, XSD::QName.new(NsV100R003C03SPC100, "AOC_E")], [0, 1]],
      ["xEXH", [nil, XSD::QName.new(NsV100R003C03SPC100, "XEXH")], [0, 1]],
      ["xEGJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "XEGJ")], [0, 1]],
      ["iIFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "IIFC")], [0, 1]],
      ["cCBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCBS")], [0, 1]],
      ["cCNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCNR")], [0, 1]],
      ["cCBSR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCBSR")], [0, 1]],
      ["cCNRR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCNRR")], [0, 1]],
      ["tPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "TPTY")], [0, 1]],
      ["nPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NPTY")], [0, 1]],
      ["mCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCR")], [0, 1]],
      ["mWI", [nil, XSD::QName.new(NsV100R003C03SPC100, "MWI")], [0, 1]],
      ["dC", [nil, XSD::QName.new(NsV100R003C03SPC100, "DC")], [0, 1]],
      ["hOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "HOLD")], [0, 1]],
      ["eCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ECT")], [0, 1]],
      ["dAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "DAN")], [0, 1]],
      ["sTOP_SECRET", [nil, XSD::QName.new(NsV100R003C03SPC100, "STOP_SECRET")], [0, 1]],
      ["mCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCID")], [0, 1]],
      ["eBO", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBO")], [0, 1]],
      ["iCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICO")], [0, 1]],
      ["oUTG", [nil, XSD::QName.new(NsV100R003C03SPC100, "OUTG")], [0, 1]],
      ["iNQYH", [nil, XSD::QName.new(NsV100R003C03SPC100, "INQYH")], [0, 1]],
      ["sETCFNRTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "SETCFNRTIME")], [0, 1]],
      ["aCRTOVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACRTOVM")], [0, 1]],
      ["cFU", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFU")], [0, 1]],
      ["wAKE_UP", [nil, XSD::QName.new(NsV100R003C03SPC100, "WAKE_UP")], [0, 1]],
      ["cFTB", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFTB")], [0, 1]],
      ["uINFO", [nil, XSD::QName.new(NsV100R003C03SPC100, "UINFO")], [0, 1]],
      ["sOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOC")], [0, 1]],
      ["dN_CALL_OUT_ALLOW", [nil, XSD::QName.new(NsV100R003C03SPC100, "DN_CALL_OUT_ALLOW")], [0, 1]],
      ["dND", [nil, XSD::QName.new(NsV100R003C03SPC100, "DND")], [0, 1]],
      ["cBA", [nil, XSD::QName.new(NsV100R003C03SPC100, "CBA")], [0, 1]],
      ["tMP_LIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "TMP_LIN")], [0, 1]],
      ["cODEC_CNTRL", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC_CNTRL")], [0, 1]],
      ["sIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "SIC")], [0, 1]],
      ["cFS", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFS")], [0, 1]],
      ["dN_CALL_OUT_BAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "DN_CALL_OUT_BAR")], [0, 1]],
      ["cFSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFSB")], [0, 1]],
      ["cFB", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFB")], [0, 1]],
      ["cFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFNR")], [0, 1]],
      ["cFNL", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFNL")], [0, 1]],
      ["cFNRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFNRC")], [0, 1]],
      ["cWCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CWCFNR")], [0, 1]],
      ["mRINGMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MRINGMODE")], [0, 1]],
      ["cIS", [nil, XSD::QName.new(NsV100R003C03SPC100, "CIS")], [0, 1]],
      ["sPEED_DIAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "SPEED_DIAL")], [0, 1]],
      ["gRNCALL", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRNCALL")], [0, 1]],
      ["sETBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "SETBUSY")], [0, 1]],
      ["aBSENT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ABSENT")], [0, 1]],
      ["pWCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "PWCB")], [0, 1]],
      ["aOC_S", [nil, XSD::QName.new(NsV100R003C03SPC100, "AOC_S")], [0, 1]],
      ["hOTLINE", [nil, XSD::QName.new(NsV100R003C03SPC100, "HOTLINE")], [0, 1]],
      ["cETMCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "CETMCID")], [0, 1]],
      ["mCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCN")], [0, 1]],
      ["dSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "DSTR")], [0, 1]],
      ["iNBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "INBOUND")], [0, 1]],
      ["oUTBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "OUTBOUND")], [0, 1]],
      ["cLIPNOSCREENING", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLIPNOSCREENING")], [0, 1]],
      ["cOLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "COLP")], [0, 1]],
      ["cOLPOVR", [nil, XSD::QName.new(NsV100R003C03SPC100, "COLPOVR")], [0, 1]],
      ["oPRREG", [nil, XSD::QName.new(NsV100R003C03SPC100, "OPRREG")], [0, 1]],
      ["oNEKEY", [nil, XSD::QName.new(NsV100R003C03SPC100, "ONEKEY")], [0, 1]],
      ["cALLERID", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLERID")], [0, 1]],
      ["sEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "SEC")], [0, 1]],
      ["sECSTA", [nil, XSD::QName.new(NsV100R003C03SPC100, "SECSTA")], [0, 1]],
      ["hRCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "HRCN")], [0, 1]],
      ["sB", [nil, XSD::QName.new(NsV100R003C03SPC100, "SB")], [0, 1]],
      ["cCS", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCS")], [0, 1]],
      ["cRBT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CRBT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_SSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_SSResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ACT_SS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ACT_SS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "SIC")], [0, 1]],
      ["dSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "DSTR")], [0, 1]],
      ["sB", [nil, XSD::QName.new(NsV100R003C03SPC100, "SB")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ACT_SSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ACT_SSResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DEA_SS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DEA_SS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "SIC")], [0, 1]],
      ["dSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "DSTR")], [0, 1]],
      ["sB", [nil, XSD::QName.new(NsV100R003C03SPC100, "SB")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DEA_SSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DEA_SSResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => QRY_SS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "QRY_SS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => QRY_SSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "QRY_SSResponse"),
    :schema_element => [
      ["result", ["QRY_SSType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CFU,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CFU"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSV", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSV")], [0, 1]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]],
      ["dIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DIMPU")]],
      ["sUBINF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBINF")], [0, 1]],
      ["nOTIFYCALLER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOTIFYCALLER")], [0, 1]],
      ["pRVTOCER", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRVTOCER")], [0, 1]],
      ["pRVTODES", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRVTODES")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CFUResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CFUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CFU,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CFU"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CFUResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CFUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFU,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFU"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFUResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFUResponse"),
    :schema_element => [
      ["result", ["DSP_CFUType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ACT_CFU,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ACT_CFU"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ACT_CFUResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ACT_CFUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DEA_CFU,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DEA_CFU"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DEA_CFUResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DEA_CFUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CLIR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CLIR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["gMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "GMODE")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CLIRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CLIRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CLIR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CLIR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CLIRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CLIRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CLIR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CLIR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CLIRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CLIRResponse"),
    :schema_element => [
      ["result", ["DSP_CLIRType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_COLR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_COLR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["tMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "TMODE")], [0, 1]],
      ["sTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "STYPE")], [0, 1]],
      ["sHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SHOUR")], [0, 1]],
      ["sMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMINUTE")], [0, 1]],
      ["eHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EHOUR")], [0, 1]],
      ["eMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMINUTE")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_COLRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_COLRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_COLR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_COLR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_COLRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_COLRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_COLR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_COLR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_COLRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_COLRResponse"),
    :schema_element => [
      ["result", ["DSP_COLRType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_WAKE_UP,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_WAKE_UP"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["wCH", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCH")], [0, 1]],
      ["wCM", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCM")], [0, 1]],
      ["wCLAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCLAN")], [0, 1]],
      ["wCMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCMODE")], [0, 1]],
      ["wCWP", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCWP")], [0, 1]],
      ["wCWTN", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCWTN")], [0, 1]],
      ["wCDTN", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCDTN")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_WAKE_UPResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_WAKE_UPResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_WAKE_UP,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_WAKE_UP"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["hOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "HOUR")], [0, 1]],
      ["mINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MINUTE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_WAKE_UPResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_WAKE_UPResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_WAKE_UP,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_WAKE_UP"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_WAKE_UPResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_WAKE_UPResponse"),
    :schema_element => [
      ["result", ["DSP_WAKE_UPType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CFTB,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CFTB"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cFTBSV", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFTBSV")], [0, 1]],
      ["sVT", [nil, XSD::QName.new(NsV100R003C03SPC100, "SVT")], [0, 1]],
      ["cTIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTIMPU")], [0, 1]],
      ["cTSBIF", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTSBIF")], [0, 1]],
      ["pT", [nil, XSD::QName.new(NsV100R003C03SPC100, "PT")], [0, 1]],
      ["rIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "RIDX")], [0, 1]],
      ["cFTBSD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFTBSD")], [0, 1]],
      ["sYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SYEAR")], [0, 1]],
      ["sMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMONTH")], [0, 1]],
      ["sDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SDATE")], [0, 1]],
      ["cFTBST", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFTBST")], [0, 1]],
      ["sHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SHOUR")], [0, 1]],
      ["sMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMINUTE")], [0, 1]],
      ["cFTBED", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFTBED")], [0, 1]],
      ["eYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EYEAR")], [0, 1]],
      ["eMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMONTH")], [0, 1]],
      ["eDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EDATE")], [0, 1]],
      ["cFTBET", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFTBET")], [0, 1]],
      ["eHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EHOUR")], [0, 1]],
      ["eMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMINUTE")], [0, 1]],
      ["dINW", [nil, XSD::QName.new(NsV100R003C03SPC100, "DINW")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CFTBResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CFTBResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CFTB,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CFTB"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["rIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "RIDX")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CFTBResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CFTBResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFTB,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFTB"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFTBResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFTBResponse"),
    :schema_element => [
      ["result", ["DSP_CFTBType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_UINFO,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_UINFO"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["iMG", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMG")], [0, 1]],
      ["pCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "PCI")], [0, 1]],
      ["wINFO", [nil, XSD::QName.new(NsV100R003C03SPC100, "WINFO")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_UINFOResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_UINFOResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_UINFO,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_UINFO"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_UINFOResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_UINFOResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_UINFO,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_UINFO"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_UINFOResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_UINFOResponse"),
    :schema_element => [
      ["result", ["DSP_UINFOType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_SOC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_SOC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sOCIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCIDX")], [0, 1]],
      ["sOIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOIMPU")], [0, 1]],
      ["sOCBT", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCBT")], [0, 1]],
      ["sYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SYEAR")], [0, 1]],
      ["sMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMONTH")], [0, 1]],
      ["sDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SDATE")], [0, 1]],
      ["sHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SHOUR")], [0, 1]],
      ["sMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMINUTE")], [0, 1]],
      ["sOCET", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCET")], [0, 1]],
      ["eYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EYEAR")], [0, 1]],
      ["eMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMONTH")], [0, 1]],
      ["eDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EDATE")], [0, 1]],
      ["eHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EHOUR")], [0, 1]],
      ["eMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMINUTE")], [0, 1]],
      ["sOCPER", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCPER")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_SOCResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_SOCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_SOC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_SOC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sOCIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCIDX")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_SOCResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_SOCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SOC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_SOC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SOCResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_SOCResponse"),
    :schema_element => [
      ["result", ["DSP_SOCType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_DN_CALL_OUT_ALLOW,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_DN_CALL_OUT_ALLOW"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cOAD", [nil, XSD::QName.new(NsV100R003C03SPC100, "COAD")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_DN_CALL_OUT_ALLOWResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_DN_CALL_OUT_ALLOWResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_DN_CALL_OUT_ALLOW,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_DN_CALL_OUT_ALLOW"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cOAD", [nil, XSD::QName.new(NsV100R003C03SPC100, "COAD")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_DN_CALL_OUT_ALLOWResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_DN_CALL_OUT_ALLOWResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_DN_CALL_OUT_ALLOW,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_DN_CALL_OUT_ALLOW"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_DN_CALL_OUT_ALLOWResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_DN_CALL_OUT_ALLOWResponse"),
    :schema_element => [
      ["result", ["DSP_DN_CALL_OUT_ALLOWType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_DND,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_DND"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sG", [nil, XSD::QName.new(NsV100R003C03SPC100, "SG")], [0, 1]],
      ["sTARTDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "STARTDATE")], [0, 1]],
      ["sYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SYEAR")], [0, 1]],
      ["sMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMONTH")], [0, 1]],
      ["sDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SDATE")], [0, 1]],
      ["sTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "STIME")], [0, 1]],
      ["sHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SHOUR")], [0, 1]],
      ["sMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMINUTE")], [0, 1]],
      ["eNDDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ENDDATE")], [0, 1]],
      ["eYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EYEAR")], [0, 1]],
      ["eMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMONTH")], [0, 1]],
      ["eDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EDATE")], [0, 1]],
      ["eTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "ETIME")], [0, 1]],
      ["eHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EHOUR")], [0, 1]],
      ["eMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMINUTE")], [0, 1]],
      ["dURATION", [nil, XSD::QName.new(NsV100R003C03SPC100, "DURATION")], [0, 1]],
      ["eMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMODE")]],
      ["dNDWP", [nil, XSD::QName.new(NsV100R003C03SPC100, "DNDWP")], [0, 1]],
      ["sETMON", [nil, XSD::QName.new(NsV100R003C03SPC100, "SETMON")], [0, 1]],
      ["sETDAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "SETDAY")], [0, 1]],
      ["tREAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "TREAT")], [0, 1]],
      ["bTREAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "BTREAT")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_DNDResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_DNDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_DND,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_DND"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sG", [nil, XSD::QName.new(NsV100R003C03SPC100, "SG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_DNDResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_DNDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_DND,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_DND"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_DNDResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_DNDResponse"),
    :schema_element => [
      ["result", ["DSP_DNDType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CBA,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CBA"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cBABLV", [nil, XSD::QName.new(NsV100R003C03SPC100, "CBABLV")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CBAResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CBAResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CBA,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CBA"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cBABLV", [nil, XSD::QName.new(NsV100R003C03SPC100, "CBABLV")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CBAResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CBAResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CBA,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CBA"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CBAResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CBAResponse"),
    :schema_element => [
      ["result", ["DSP_CBAType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_TMP_LIN,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_TMP_LIN"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["tLDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "TLDATE")]],
      ["yEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "YEAR")], [0, 1]],
      ["mONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "MONTH")], [0, 1]],
      ["dAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "DAY")], [0, 1]],
      ["tLDUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "TLDUR")]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_TMP_LINResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_TMP_LINResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_TMP_LIN,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_TMP_LIN"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_TMP_LINResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_TMP_LINResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_TMP_LIN,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_TMP_LIN"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_TMP_LINResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_TMP_LINResponse"),
    :schema_element => [
      ["result", ["DSP_TMP_LINType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CODEC_CNTRL,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CODEC_CNTRL"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["g711_64K_A_LAW", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711_64K_A_LAW")], [0, 1]],
      ["g711_64K_U_LAW", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711_64K_U_LAW")], [0, 1]],
      ["g723", [nil, XSD::QName.new(NsV100R003C03SPC100, "G723")], [0, 1]],
      ["g726", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726")], [0, 1]],
      ["g729", [nil, XSD::QName.new(NsV100R003C03SPC100, "G729")], [0, 1]],
      ["aMR", [nil, XSD::QName.new(NsV100R003C03SPC100, "AMR")], [0, 1]],
      ["eVRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "EVRC")], [0, 1]],
      ["eVRCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "EVRCB")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CODEC_CNTRLResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CODEC_CNTRLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CODEC_CNTRL,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CODEC_CNTRL"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CODEC_CNTRLResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CODEC_CNTRLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CODEC_CNTRL,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CODEC_CNTRL"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CODEC_CNTRLResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CODEC_CNTRLResponse"),
    :schema_element => [
      ["result", ["DSP_CODEC_CNTRLType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_SIC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_SIC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sICIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SICIDX")], [0, 1]],
      ["sIIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "SIIMPU")], [0, 1]],
      ["sICBT", [nil, XSD::QName.new(NsV100R003C03SPC100, "SICBT")], [0, 1]],
      ["sYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SYEAR")], [0, 1]],
      ["sMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMONTH")], [0, 1]],
      ["sDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SDATE")], [0, 1]],
      ["sHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SHOUR")], [0, 1]],
      ["sMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMINUTE")], [0, 1]],
      ["sICET", [nil, XSD::QName.new(NsV100R003C03SPC100, "SICET")], [0, 1]],
      ["eYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EYEAR")], [0, 1]],
      ["eMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMONTH")], [0, 1]],
      ["eDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EDATE")], [0, 1]],
      ["eHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EHOUR")], [0, 1]],
      ["eMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMINUTE")], [0, 1]],
      ["sICPER", [nil, XSD::QName.new(NsV100R003C03SPC100, "SICPER")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_SICResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_SICResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_SIC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_SIC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sICIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SICIDX")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_SICResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_SICResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SIC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_SIC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SICResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_SICResponse"),
    :schema_element => [
      ["result", ["DSP_SICType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CFS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CFS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["eP", [nil, XSD::QName.new(NsV100R003C03SPC100, "EP")], [0, 1]],
      ["cSIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSIMPU")], [0, 1]],
      ["cFSBT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFSBT")], [0, 1]],
      ["sHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SHOUR")], [0, 1]],
      ["sMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMINUTE")], [0, 1]],
      ["cFSET", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFSET")], [0, 1]],
      ["eHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EHOUR")], [0, 1]],
      ["eMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMINUTE")], [0, 1]],
      ["oFWEEK", [nil, XSD::QName.new(NsV100R003C03SPC100, "OFWEEK")], [0, 1]],
      ["fTIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "FTIMPU")]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CFSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CFSResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ACT_CFS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ACT_CFS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["eP", [nil, XSD::QName.new(NsV100R003C03SPC100, "EP")], [0, 1]],
      ["fTIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "FTIMPU")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ACT_CFSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ACT_CFSResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DEA_CFS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DEA_CFS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["eP", [nil, XSD::QName.new(NsV100R003C03SPC100, "EP")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DEA_CFSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DEA_CFSResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CFS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CFS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["eP", [nil, XSD::QName.new(NsV100R003C03SPC100, "EP")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CFSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CFSResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFSResponse"),
    :schema_element => [
      ["result", ["DSP_CFSType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_DN_CALL_OUT_BAR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_DN_CALL_OUT_BAR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cOBPNO", [nil, XSD::QName.new(NsV100R003C03SPC100, "COBPNO")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_DN_CALL_OUT_BARResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_DN_CALL_OUT_BARResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_DN_CALL_OUT_BAR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_DN_CALL_OUT_BAR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cOBPNO", [nil, XSD::QName.new(NsV100R003C03SPC100, "COBPNO")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_DN_CALL_OUT_BARResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_DN_CALL_OUT_BARResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_DN_CALL_OUT_BAR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_DN_CALL_OUT_BAR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_DN_CALL_OUT_BARResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_DN_CALL_OUT_BARResponse"),
    :schema_element => [
      ["result", ["DSP_DN_CALL_OUT_BARType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CFSB,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CFSB"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cSBSVT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSBSVT")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CFSBResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CFSBResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CFSB,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CFSB"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CFSBResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CFSBResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFSB,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFSB"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFSBResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFSBResponse"),
    :schema_element => [
      ["result", ["DSP_CFSBType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CFB,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CFB"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSV", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSV")], [0, 1]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]],
      ["dIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DIMPU")]],
      ["sUBINF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBINF")], [0, 1]],
      ["nOTIFYCALLER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOTIFYCALLER")], [0, 1]],
      ["nOTIFYFORWARDER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOTIFYFORWARDER")], [0, 1]],
      ["pRVTOCER", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRVTOCER")], [0, 1]],
      ["pRVTODES", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRVTODES")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CFBResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CFBResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CFB,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CFB"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CFBResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CFBResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFB,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFB"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFBResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFBResponse"),
    :schema_element => [
      ["result", ["DSP_CFBType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ACT_CFB,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ACT_CFB"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ACT_CFBResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ACT_CFBResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DEA_CFB,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DEA_CFB"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DEA_CFBResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DEA_CFBResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CFNR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CFNR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSV", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSV")], [0, 1]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]],
      ["dIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DIMPU")]],
      ["sUBINF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBINF")], [0, 1]],
      ["nOTIFYCALLER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOTIFYCALLER")], [0, 1]],
      ["nOTIFYFORWARDER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOTIFYFORWARDER")], [0, 1]],
      ["pRVTOCER", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRVTOCER")], [0, 1]],
      ["pRVTODES", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRVTODES")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CFNRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CFNRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CFNR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CFNR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CFNRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CFNRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFNR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFNRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNRResponse"),
    :schema_element => [
      ["result", ["DSP_CFNRType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ACT_CFNR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ACT_CFNR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ACT_CFNRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ACT_CFNRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DEA_CFNR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DEA_CFNR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DEA_CFNRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DEA_CFNRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CFNL,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CFNL"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSV", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSV")], [0, 1]],
      ["dIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DIMPU")]],
      ["sUBINF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBINF")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CFNLResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CFNLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CFNL,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CFNL"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CFNLResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CFNLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFNL,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNL"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFNLResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNLResponse"),
    :schema_element => [
      ["result", ["DSP_CFNLType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CFNRC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CFNRC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSV", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSV")], [0, 1]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]],
      ["dIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DIMPU")]],
      ["sUBINF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBINF")], [0, 1]],
      ["nOTIFYCALLER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOTIFYCALLER")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CFNRCResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CFNRCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CFNRC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CFNRC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CFNRCResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CFNRCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFNRC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNRC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CFNRCResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CFNRCResponse"),
    :schema_element => [
      ["result", ["DSP_CFNRCType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ACT_CFNRC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ACT_CFNRC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ACT_CFNRCResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ACT_CFNRCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DEA_CFNRC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DEA_CFNRC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DEA_CFNRCResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DEA_CFNRCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CWCFNR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CWCFNR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSV", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSV")], [0, 1]],
      ["dIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DIMPU")]],
      ["sUBINF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBINF")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CWCFNRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CWCFNRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CWCFNR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CWCFNR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CWCFNRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CWCFNRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CWCFNR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CWCFNR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CWCFNRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CWCFNRResponse"),
    :schema_element => [
      ["result", ["DSP_CWCFNRType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_MRINGMODE,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_MRINGMODE"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["mRINGMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MRINGMODE")]],
      ["rELBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "RELBUSY")], [0, 1]],
      ["rELREJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "RELREJ")], [0, 1]],
      ["rINGTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "RINGTIME")], [0, 1]],
      ["cFMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFMODE")], [0, 1]],
      ["iMPU1", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU1")], [0, 1]],
      ["iMPU2", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU2")], [0, 1]],
      ["iMPU3", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU3")], [0, 1]],
      ["iMPU4", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU4")], [0, 1]],
      ["iMPU5", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU5")], [0, 1]],
      ["iMPU6", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU6")], [0, 1]],
      ["iMPU7", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU7")], [0, 1]],
      ["iMPU8", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU8")], [0, 1]],
      ["iMPU9", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU9")], [0, 1]],
      ["iMPU10", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU10")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_MRINGMODEResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_MRINGMODEResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_MRINGMODE,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_MRINGMODE"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_MRINGMODEResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_MRINGMODEResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_MRINGMODE,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_MRINGMODE"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_MRINGMODEResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_MRINGMODEResponse"),
    :schema_element => [
      ["result", ["DSP_MRINGMODEType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CIS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CIS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["dUALRING", [nil, XSD::QName.new(NsV100R003C03SPC100, "DUALRING")], [0, 1]],
      ["iMPUPC", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPUPC")], [0, 1]],
      ["rELBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "RELBUSY")], [0, 1]],
      ["rELREJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "RELREJ")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CISResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CISResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CIS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CIS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CISResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CISResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CIS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CIS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CISResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CISResponse"),
    :schema_element => [
      ["result", ["DSP_CISType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CFDATA,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_CFDATA"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cFR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFR")], [0, 1]],
      ["dIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DIMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CFDATAResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_CFDATAResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CFDATA,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_CFDATA"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cFR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFR")], [0, 1]],
      ["dIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DIMPU")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CFDATAResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_CFDATAResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CFDATA,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CFDATA"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CFDATAResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CFDATAResponse"),
    :schema_element => [
      ["result", ["LST_CFDATAType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_NUMCHG,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_NUMCHG"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "NIMPU")]],
      ["cMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CMODE")], [0, 1]],
      ["sMFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_NUMCHGResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_NUMCHGResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_NUMCHG,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_NUMCHG"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "NIMPU")]],
      ["cMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CMODE")], [0, 1]],
      ["sMFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_NUMCHGResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_NUMCHGResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_NUMCHG,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_NUMCHG"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_NUMCHGResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_NUMCHGResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NUMCHG,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_NUMCHG"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NUMCHGResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_NUMCHGResponse"),
    :schema_element => [
      ["result", ["LST_NUMCHGType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_BLKNUM,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_BLKNUM"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "BIMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_BLKNUMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_BLKNUMResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_BLKNUM,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_BLKNUM"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "BIMPU")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_BLKNUMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_BLKNUMResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_BLKNUM,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_BLKNUM"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_BLKNUMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_BLKNUMResponse"),
    :schema_element => [
      ["result", ["LST_BLKNUMType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_WTNUM,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_WTNUM"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["wTIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "WTIMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_WTNUMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_WTNUMResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_WTNUM,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_WTNUM"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["wTIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "WTIMPU")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_WTNUMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_WTNUMResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_WTNUM,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_WTNUM"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_WTNUMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_WTNUMResponse"),
    :schema_element => [
      ["result", ["LST_WTNUMType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_OWSBR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "SET_OWSBR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["uS", [nil, XSD::QName.new(NsV100R003C03SPC100, "US")], [0, 1]],
      ["lTOS", [nil, XSD::QName.new(NsV100R003C03SPC100, "LTOS")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_OWSBRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "SET_OWSBRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_OWSBR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_OWSBR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_OWSBRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_OWSBRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_OWSBR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_OWSBR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_OWSBRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_OWSBRResponse"),
    :schema_element => [
      ["result", ["LST_OWSBRType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => PRK_OWSBR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "PRK_OWSBR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["iCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICR")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PRK_OWSBRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "PRK_OWSBRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RES_OWSBR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RES_OWSBR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RES_OWSBRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RES_OWSBRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_STRATEGY,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_STRATEGY"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["gREENSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "GREENSTR")], [0, 1]],
      ["rEDSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "REDSTR")], [0, 1]],
      ["oTHSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "OTHSTR")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_STRATEGYResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_STRATEGYResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_STRATEGY,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_STRATEGY"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["gREENSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "GREENSTR")], [0, 1]],
      ["rEDSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "REDSTR")], [0, 1]],
      ["oTHSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "OTHSTR")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_STRATEGYResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_STRATEGYResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_STRATEGY,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_STRATEGY"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_STRATEGYResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_STRATEGYResponse"),
    :schema_element => [
      ["result", ["LST_STRATEGYType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_STRATEGY,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_STRATEGY"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_STRATEGYResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_STRATEGYResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_GREENNUM,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_GREENNUM"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["gIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "GIMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_GREENNUMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_GREENNUMResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_GREENNUM,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_GREENNUM"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["gIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "GIMPU")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_GREENNUMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_GREENNUMResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_GREENNUM,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_GREENNUM"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_GREENNUMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_GREENNUMResponse"),
    :schema_element => [
      ["result", ["LST_GREENNUMType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_REDNUM,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_REDNUM"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["rIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "RIMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_REDNUMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_REDNUMResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_REDNUM,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_REDNUM"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["rIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "RIMPU")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_REDNUMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_REDNUMResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_REDNUM,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_REDNUM"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_REDNUMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_REDNUMResponse"),
    :schema_element => [
      ["result", ["LST_REDNUMType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ACT_BAOC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ACT_BAOC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ACT_BAOCResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ACT_BAOCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BAOC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_BAOC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BAOCResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_BAOCResponse"),
    :schema_element => [
      ["result", ["DSP_BAOCType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DEA_BAOC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DEA_BAOC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DEA_BAOCResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DEA_BAOCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ACT_BOIC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ACT_BOIC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ACT_BOICResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ACT_BOICResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BOIC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_BOIC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BOICResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_BOICResponse"),
    :schema_element => [
      ["result", ["DSP_BOICType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DEA_BOIC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DEA_BOIC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DEA_BOICResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DEA_BOICResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ACT_BOICEXHC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ACT_BOICEXHC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ACT_BOICEXHCResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ACT_BOICEXHCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BOICEXHC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_BOICEXHC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BOICEXHCResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_BOICEXHCResponse"),
    :schema_element => [
      ["result", ["DSP_BOICEXHCType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DEA_BOICEXHC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DEA_BOICEXHC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DEA_BOICEXHCResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DEA_BOICEXHCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ACT_BAIC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ACT_BAIC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ACT_BAICResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ACT_BAICResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BAIC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_BAIC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BAICResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_BAICResponse"),
    :schema_element => [
      ["result", ["DSP_BAICType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DEA_BAIC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DEA_BAIC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DEA_BAICResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DEA_BAICResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ACT_BICROM,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ACT_BICROM"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ACT_BICROMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ACT_BICROMResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BICROM,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_BICROM"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BICROMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_BICROMResponse"),
    :schema_element => [
      ["result", ["DSP_BICROMType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DEA_BICROM,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DEA_BICROM"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DEA_BICROMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DEA_BICROMResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_SPEED_DIAL,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_SPEED_DIAL"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["aBBRNUMBER", [nil, XSD::QName.new(NsV100R003C03SPC100, "ABBRNUMBER")]],
      ["dESTIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DESTIMPU")]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_SPEED_DIALResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_SPEED_DIALResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_SPEED_DIAL,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_SPEED_DIAL"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["aBBRNUMBER", [nil, XSD::QName.new(NsV100R003C03SPC100, "ABBRNUMBER")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_SPEED_DIALResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_SPEED_DIALResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SPEED_DIAL,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_SPEED_DIAL"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["aBBRNUMBER", [nil, XSD::QName.new(NsV100R003C03SPC100, "ABBRNUMBER")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SPEED_DIALResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_SPEED_DIALResponse"),
    :schema_element => [
      ["result", ["DSP_SPEED_DIALType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_GRNCALL,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_GRNCALL"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "BIMPU")], [0, 1]],
      ["bMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "BMODE")], [0, 1]],
      ["tHRPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "THRPTY")], [0, 1]],
      ["tHRPTYTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "THRPTYTIME")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_GRNCALLResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_GRNCALLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_GRNCALL,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_GRNCALL"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_GRNCALLResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_GRNCALLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_GRNCALL,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_GRNCALL"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_GRNCALLResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_GRNCALLResponse"),
    :schema_element => [
      ["result", ["DSP_GRNCALLType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_UPGRADE,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "SET_UPGRADE"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CMODE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_UPGRADEResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "SET_UPGRADEResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_AUTOCON,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_AUTOCON"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sRVIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "SRVIMPU")]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_AUTOCONResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_AUTOCONResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_AUTOCON,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_AUTOCON"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_AUTOCONResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_AUTOCONResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_AUTOCON,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_AUTOCON"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_AUTOCONResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_AUTOCONResponse"),
    :schema_element => [
      ["result", ["DSP_AUTOCONType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_NIGHTSRV,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_NIGHTSRV"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sRVIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "SRVIMPU")]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_NIGHTSRVResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_NIGHTSRVResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_NIGHTSRV,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_NIGHTSRV"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_NIGHTSRVResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_NIGHTSRVResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_NIGHTSRV,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_NIGHTSRV"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_NIGHTSRVResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_NIGHTSRVResponse"),
    :schema_element => [
      ["result", ["DSP_NIGHTSRVType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_BACKNUM,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_BACKNUM"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sRVIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "SRVIMPU")]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_BACKNUMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_BACKNUMResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_BACKNUM,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_BACKNUM"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_BACKNUMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_BACKNUMResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BACKNUM,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_BACKNUM"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_BACKNUMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_BACKNUMResponse"),
    :schema_element => [
      ["result", ["DSP_BACKNUMType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_ABSENT,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_ABSENT"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["vOICE", [nil, XSD::QName.new(NsV100R003C03SPC100, "VOICE")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_ABSENTResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_ABSENTResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_ABSENT,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_ABSENT"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_ABSENTResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_ABSENTResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ABSENT,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_ABSENT"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ABSENTResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_ABSENTResponse"),
    :schema_element => [
      ["result", ["DSP_ABSENTType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_ASI,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_ASI"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sTATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "STATE")]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_ASIResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_ASIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_ASI,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_ASI"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_ASIResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_ASIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ASI,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_ASI"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ASIResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_ASIResponse"),
    :schema_element => [
      ["result", ["DSP_ASIType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_HOTLINE,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_HOTLINE"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["hLITYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "HLITYPE")]],
      ["hLIIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "HLIIMPU")]],
      ["hLIDELAYTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "HLIDELAYTIME")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_HOTLINEResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_HOTLINEResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_HOTLINE,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_HOTLINE"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_HOTLINEResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_HOTLINEResponse"),
    :schema_element => [
      ["result", ["DSP_HOTLINEType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_HOTLINE,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_HOTLINE"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_HOTLINEResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_HOTLINEResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CETMCID,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CETMCID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["pHASE", [nil, XSD::QName.new(NsV100R003C03SPC100, "PHASE")]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CETMCIDResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CETMCIDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CETMCID,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CETMCID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CETMCIDResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CETMCIDResponse"),
    :schema_element => [
      ["result", ["DSP_CETMCIDType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CETMCID,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CETMCID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CETMCIDResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CETMCIDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_MCN,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_MCN"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "BIMPU")]],
      ["bNTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "BNTY")], [0, 1]],
      ["nANTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NANTY")], [0, 1]],
      ["nRCNTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRCNTY")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_MCNResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_MCNResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_MCN,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_MCN"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_MCNResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_MCNResponse"),
    :schema_element => [
      ["result", ["DSP_MCNType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_MCN,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_MCN"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_MCNResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_MCNResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_SUBS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "SET_SUBS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sUBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBS")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_SUBSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "SET_SUBSResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SUBS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_SUBS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SUBSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_SUBSResponse"),
    :schema_element => [
      ["result", ["LST_SUBSType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_ONEKEY,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_ONEKEY"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["dUALRING", [nil, XSD::QName.new(NsV100R003C03SPC100, "DUALRING")], [0, 1]],
      ["iMPUPC", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPUPC")], [0, 1]],
      ["rELBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "RELBUSY")], [0, 1]],
      ["rELREJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "RELREJ")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_ONEKEYResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_ONEKEYResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_ONEKEY,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_ONEKEY"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_ONEKEYResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_ONEKEYResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ONEKEY,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_ONEKEY"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ONEKEYResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_ONEKEYResponse"),
    :schema_element => [
      ["result", ["DSP_ONEKEYType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_IBDS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_IBDS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["vIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU")]],
      ["sUBNETID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID")]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_IBDSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_IBDSResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_IBDS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_IBDS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_IBDSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_IBDSResponse"),
    :schema_element => [
      ["result", ["DSP_IBDSType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_IBDS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_IBDS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_IBDSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_IBDSResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => QRY_IBDS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "QRY_IBDS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => QRY_IBDSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "QRY_IBDSResponse"),
    :schema_element => [
      ["result", ["QRY_IBDSType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_OBDS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_OBDS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["vIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU")]],
      ["sUBNETID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_OBDSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_OBDSResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_OBDS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_OBDS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_OBDSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_OBDSResponse"),
    :schema_element => [
      ["result", ["DSP_OBDSType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_OBDS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_OBDS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["vIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_OBDSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_OBDSResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_NPAS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_NPAS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nTN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTN")]],
      ["nSIPN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIPN")], [0, 1]],
      ["pYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "PYEAR")]],
      ["pMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "PMONTH")]],
      ["pDAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "PDAY")]],
      ["pHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "PHOUR")]],
      ["pMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "PMINUTE")]],
      ["aYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "AYEAR")]],
      ["aMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "AMONTH")]],
      ["aDAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "ADAY")]],
      ["aHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "AHOUR")]],
      ["aMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "AMINUTE")]],
      ["eYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EYEAR")]],
      ["eMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMONTH")]],
      ["eDAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "EDAY")]],
      ["pAMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "PAMODE")], [0, 1]],
      ["aAMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "AAMODE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_NPASResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_NPASResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_NPAS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_NPAS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["pYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "PYEAR")], [0, 1]],
      ["pMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "PMONTH")], [0, 1]],
      ["pDAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "PDAY")], [0, 1]],
      ["pHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "PHOUR")], [0, 1]],
      ["pMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "PMINUTE")], [0, 1]],
      ["aYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "AYEAR")], [0, 1]],
      ["aMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "AMONTH")], [0, 1]],
      ["aDAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "ADAY")], [0, 1]],
      ["aHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "AHOUR")], [0, 1]],
      ["aMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "AMINUTE")], [0, 1]],
      ["eYEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EYEAR")], [0, 1]],
      ["eMONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMONTH")], [0, 1]],
      ["eDAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "EDAY")], [0, 1]],
      ["pAMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "PAMODE")], [0, 1]],
      ["aAMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "AAMODE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_NPASResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_NPASResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_NPAS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_NPAS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_NPASResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_NPASResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NPAS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_NPAS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NPASResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_NPASResponse"),
    :schema_element => [
      ["result", ["LST_NPASType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_ALLCFX,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_ALLCFX"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSV", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSV")], [0, 1]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]],
      ["dIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DIMPU")]],
      ["sUBINF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBINF")], [0, 1]],
      ["nOTIFYCALLER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOTIFYCALLER")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_ALLCFXResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_ALLCFXResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_ALLCFX,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_ALLCFX"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_ALLCFXResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_ALLCFXResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CONCFX,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CONCFX"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bSV", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSV")], [0, 1]],
      ["bSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSG")], [0, 1]],
      ["dIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "DIMPU")]],
      ["sUBINF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBINF")], [0, 1]],
      ["nOTIFYCALLER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOTIFYCALLER")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CONCFXResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CONCFXResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CONCFX,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CONCFX"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CONCFXResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CONCFXResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_GOIR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_GOIR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["gMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "GMODE")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_GOIRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_GOIRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_GOIR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_GOIR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_GOIRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_GOIRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_GOIR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_GOIR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_GOIRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_GOIRResponse"),
    :schema_element => [
      ["result", ["DSP_GOIRType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_MOIR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_MOIR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["mMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MMODE")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_MOIRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_MOIRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_MOIR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_MOIR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_MOIRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_MOIRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_MOIR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_MOIR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_MOIRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_MOIRResponse"),
    :schema_element => [
      ["result", ["DSP_MOIRType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_TIR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_TIR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["tMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "TMODE")], [0, 1]],
      ["sTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "STYPE")], [0, 1]],
      ["sHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "SHOUR")], [0, 1]],
      ["sMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMINUTE")], [0, 1]],
      ["eHOUR", [nil, XSD::QName.new(NsV100R003C03SPC100, "EHOUR")], [0, 1]],
      ["eMINUTE", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMINUTE")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_TIRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_TIRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_TIR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_TIR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_TIRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_TIRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_TIR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_TIR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_TIRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_TIRResponse"),
    :schema_element => [
      ["result", ["DSP_TIRType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_DSTR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_DSTR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["pATTERN", [nil, XSD::QName.new(NsV100R003C03SPC100, "PATTERN")], [0, 1]],
      ["cWPATTERN", [nil, XSD::QName.new(NsV100R003C03SPC100, "CWPATTERN")], [0, 1]],
      ["sIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "SIMPU")]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_DSTRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_DSTRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_DSTR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_DSTR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["pATTERN", [nil, XSD::QName.new(NsV100R003C03SPC100, "PATTERN")], [0, 1]],
      ["cWPATTERN", [nil, XSD::QName.new(NsV100R003C03SPC100, "CWPATTERN")], [0, 1]],
      ["sIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "SIMPU")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_DSTRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_DSTRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_DSTR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_DSTR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["pATTERN", [nil, XSD::QName.new(NsV100R003C03SPC100, "PATTERN")], [0, 1]],
      ["cWPATTERN", [nil, XSD::QName.new(NsV100R003C03SPC100, "CWPATTERN")], [0, 1]],
      ["sIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "SIMPU")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_DSTRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_DSTRResponse"),
    :schema_element => [
      ["result", ["DSP_DSTRType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_VIMPURequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_VIMPURequest"),
    :schema_element => [
      ["vIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU")]],
      ["sUBNETID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID")]],
      ["oCPFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "OCPFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_VIMPUResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_VIMPUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_VIMPURequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_VIMPURequest"),
    :schema_element => [
      ["vIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU")]],
      ["sUBNETID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID")], [0, 1]],
      ["mANDRMV", [nil, XSD::QName.new(NsV100R003C03SPC100, "MANDRMV")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_VIMPUResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_VIMPUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_VIMPURequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_VIMPURequest"),
    :schema_element => [
      ["vIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU")]],
      ["sUBNETID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID")], [0, 1]],
      ["oCPFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "OCPFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_VIMPUResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_VIMPUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VIMPURequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_VIMPURequest"),
    :schema_element => [
      ["vIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU")], [0, 1]],
      ["sUBNETID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID")], [0, 1]],
      ["oCPFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "OCPFLAG")], [0, 1]],
      ["qRYPOS", [nil, XSD::QName.new(NsV100R003C03SPC100, "QRYPOS")], [0, 1]],
      ["qRYAMOUNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "QRYAMOUNT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VIMPUResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_VIMPUResponse"),
    :schema_element => [
      ["result", ["LST_VIMPUType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IBDVIMPURequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_IBDVIMPURequest"),
    :schema_element => [
      ["sUBNETID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IBDVIMPUResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_IBDVIMPUResponse"),
    :schema_element => [
      ["result", ["LST_IBDVIMPUType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => PRK_SBR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "PRK_SBR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "STYPE")], [0, 1]],
      ["tREAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "TREAT")], [0, 1]],
      ["rNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "RNUM")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PRK_SBRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "PRK_SBRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PRKSBR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_PRKSBR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PRKSBRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_PRKSBRResponse"),
    :schema_element => [
      ["result", ["LST_PRKSBRType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RES_PRKSBR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RES_PRKSBR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RES_PRKSBRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RES_PRKSBRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_NUMINVA,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_NUMINVA"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["dURATION", [nil, XSD::QName.new(NsV100R003C03SPC100, "DURATION")]],
      ["tN", [nil, XSD::QName.new(NsV100R003C03SPC100, "TN")], [0, 1]],
      ["yEAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "YEAR")], [0, 1]],
      ["mONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "MONTH")], [0, 1]],
      ["dAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "DAY")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_NUMINVAResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_NUMINVAResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_NUMINVA,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_NUMINVA"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["dURATION", [nil, XSD::QName.new(NsV100R003C03SPC100, "DURATION")], [0, 1]],
      ["tN", [nil, XSD::QName.new(NsV100R003C03SPC100, "TN")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_NUMINVAResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_NUMINVAResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_NUMINVA,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_NUMINVA"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_NUMINVAResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_NUMINVAResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NUMINVA,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_NUMINVA"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NUMINVAResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_NUMINVAResponse"),
    :schema_element => [
      ["result", ["LST_NUMINVAType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_OUTBOUNDUSER,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_OUTBOUNDUSER"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sUBNETID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID")]],
      ["vIMPU1", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU1")]],
      ["sUBNETID1", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID1")]],
      ["vIMPU2", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU2")], [0, 1]],
      ["sUBNETID2", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID2")], [0, 1]],
      ["vIMPU3", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU3")], [0, 1]],
      ["sUBNETID3", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID3")], [0, 1]],
      ["vIMPU4", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU4")], [0, 1]],
      ["sUBNETID4", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID4")], [0, 1]],
      ["vIMPU5", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU5")], [0, 1]],
      ["sUBNETID5", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID5")], [0, 1]],
      ["vIMPU6", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU6")], [0, 1]],
      ["sUBNETID6", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID6")], [0, 1]],
      ["vIMPU7", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU7")], [0, 1]],
      ["sUBNETID7", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID7")], [0, 1]],
      ["vIMPU8", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU8")], [0, 1]],
      ["sUBNETID8", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID8")], [0, 1]],
      ["vIMPU9", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU9")], [0, 1]],
      ["sUBNETID9", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID9")], [0, 1]],
      ["vIMPU10", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU10")], [0, 1]],
      ["sUBNETID10", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID10")], [0, 1]],
      ["vIMPU11", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU11")], [0, 1]],
      ["sUBNETID11", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID11")], [0, 1]],
      ["vIMPU12", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU12")], [0, 1]],
      ["sUBNETID12", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID12")], [0, 1]],
      ["vIMPU13", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU13")], [0, 1]],
      ["sUBNETID13", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID13")], [0, 1]],
      ["vIMPU14", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU14")], [0, 1]],
      ["sUBNETID14", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID14")], [0, 1]],
      ["vIMPU15", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU15")], [0, 1]],
      ["sUBNETID15", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID15")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_OUTBOUNDUSERResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_OUTBOUNDUSERResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_OUTBOUNDUSER,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_OUTBOUNDUSER"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["vIMPU1", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU1")], [0, 1]],
      ["vIMPU2", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU2")], [0, 1]],
      ["vIMPU3", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU3")], [0, 1]],
      ["vIMPU4", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU4")], [0, 1]],
      ["vIMPU5", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU5")], [0, 1]],
      ["vIMPU6", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU6")], [0, 1]],
      ["vIMPU7", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU7")], [0, 1]],
      ["vIMPU8", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU8")], [0, 1]],
      ["vIMPU9", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU9")], [0, 1]],
      ["vIMPU10", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU10")], [0, 1]],
      ["vIMPU11", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU11")], [0, 1]],
      ["vIMPU12", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU12")], [0, 1]],
      ["vIMPU13", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU13")], [0, 1]],
      ["vIMPU14", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU14")], [0, 1]],
      ["vIMPU15", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU15")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_OUTBOUNDUSERResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_OUTBOUNDUSERResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_OUTBOUNDVIMPU,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_OUTBOUNDVIMPU"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["vIMPU1", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU1")]],
      ["sUBNETID1", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID1")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_OUTBOUNDVIMPUResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_OUTBOUNDVIMPUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_OUTBOUNDVIMPU,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_OUTBOUNDVIMPU"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["vIMPU1", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU1")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_OUTBOUNDVIMPUResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_OUTBOUNDVIMPUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => APPLY_PRVSNSBR,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "APPLY_PRVSNSBR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sUBNETID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID")]],
      ["vIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU")], [0, 1]],
      ["cBNUMBER", [nil, XSD::QName.new(NsV100R003C03SPC100, "CBNUMBER")], [0, 1]],
      ["dOMAIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "DOMAIN")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => APPLY_PRVSNSBRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "APPLY_PRVSNSBRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_IBDSUBNUM,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_IBDSUBNUM"),
    :schema_element => [
      ["hOMENUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "HOMENUM")]],
      ["sUBID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBID")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_IBDSUBNUMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_IBDSUBNUMResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IBDSUBNUM,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_IBDSUBNUM"),
    :schema_element => [
      ["hOMENUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "HOMENUM")]],
      ["sUBID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IBDSUBNUMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_IBDSUBNUMResponse"),
    :schema_element => [
      ["result", ["LST_IBDSUBNUMType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => AddSubUsr,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "AddSubUsr"),
    :schema_element => [
      ["vIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU")]],
      ["sUBNETID", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUBNETID")]]
    ]
  )

  LiteralRegistry.register(
    :class => AddSubUsrResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "AddSubUsrResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CancelSubUsr,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "CancelSubUsr"),
    :schema_element => [
      ["vIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => CancelSubUsrResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "CancelSubUsrResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RmvSubUsr,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RmvSubUsr"),
    :schema_element => [
      ["vIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "VIMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RmvSubUsrResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RmvSubUsrResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CALLERID,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CALLERID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["bIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "BIMPU")]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CALLERIDResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CALLERIDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CALLERID,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CALLERID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CALLERIDResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CALLERIDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CALLERID,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CALLERID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CALLERIDResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CALLERIDResponse"),
    :schema_element => [
      ["result", ["DSP_CALLERIDType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ACT_CALLERID,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ACT_CALLERID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => ACT_CALLERIDResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ACT_CALLERIDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DEA_CALLERID,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DEA_CALLERID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DEA_CALLERIDResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DEA_CALLERIDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_IPTVVC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_IPTVVC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sTBIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "STBIMPU")]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_IPTVVCResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_IPTVVCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_IPTVVC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_IPTVVC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_IPTVVCResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_IPTVVCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_IPTVVC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_IPTVVC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_IPTVVCResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_IPTVVCResponse"),
    :schema_element => [
      ["result", ["DSP_IPTVVCType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_NP,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_NP"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["pIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "PIMPU")]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_NPResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_NPResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_NP,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_NP"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_NPResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_NPResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_NP,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_NP"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_NPResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_NPResponse"),
    :schema_element => [
      ["result", ["DSP_NPType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_SEC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_SEC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["sECIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "SECIMPU")]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_SECResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_SECResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_SEC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_SEC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_SECResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_SECResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SEC,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_SEC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SECResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_SECResponse"),
    :schema_element => [
      ["result", ["DSP_SECType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_SB,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_SB"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["pRIONUMLST", ["REG_SB::PRIONUMLST[]", XSD::QName.new(NsV100R003C03SPC100, "PRIONUMLST")], [0, 25]],
      ["sTARTTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "STARTTIME")], [0, 1]],
      ["sTOPTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "STOPTIME")], [0, 1]],
      ["rECURRENCE", [nil, XSD::QName.new(NsV100R003C03SPC100, "RECURRENCE")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]],
      ["aUTOACTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOACTFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_SB::PRIONUMLST,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "PRIONUMLST"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["pRIONUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRIONUM")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_SBResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_SBResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_SB,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_SB"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["pRIONUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRIONUM")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_SBResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_SBResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SB,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_SB"),
    :schema_element => [
      ["responseComplexType", [nil, XSD::QName.new(NsV100R003C03SPC100, "ResponseComplexType")]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SBResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_SBResponse"),
    :schema_element => [
      ["result", ["DSP_SBType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_FILCRIT,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_FILCRIT"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "NAME")]],
      ["cOMBIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "COMBIN")]],
      ["cALLERINFO", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLERINFO")], [0, 1]],
      ["pRESTATUS", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRESTATUS")], [0, 1]],
      ["hOLDGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "HOLDGRP")], [0, 1]],
      ["dATEMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "DATEMODE")], [0, 1]],
      ["mONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "MONTH")]],
      ["oRDER", [nil, XSD::QName.new(NsV100R003C03SPC100, "ORDER")]],
      ["dAYOFWEEK", [nil, XSD::QName.new(NsV100R003C03SPC100, "DAYOFWEEK")]],
      ["sTARTDAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "STARTDAY")]],
      ["eNDDAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "ENDDAY")]],
      ["sTARTDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "STARTDATE")]],
      ["eNDDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ENDDATE")]],
      ["sTARTTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "STARTTIME")], [0, 1]],
      ["eNDTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "ENDTIME")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_FILCRITResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_FILCRITResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_FILCRIT,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_FILCRIT"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "NAME")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_FILCRITResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_FILCRITResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_FILCRIT,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_FILCRIT"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "NAME")]],
      ["cOMBIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "COMBIN")], [0, 1]],
      ["cALLERINFO", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLERINFO")], [0, 1]],
      ["pRESTATUS", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRESTATUS")], [0, 1]],
      ["hOLDGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "HOLDGRP")], [0, 1]],
      ["dATEMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "DATEMODE")], [0, 1]],
      ["mONTH", [nil, XSD::QName.new(NsV100R003C03SPC100, "MONTH")], [0, 1]],
      ["oRDER", [nil, XSD::QName.new(NsV100R003C03SPC100, "ORDER")], [0, 1]],
      ["dAYOFWEEK", [nil, XSD::QName.new(NsV100R003C03SPC100, "DAYOFWEEK")], [0, 1]],
      ["sTARTDAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "STARTDAY")], [0, 1]],
      ["eNDDAY", [nil, XSD::QName.new(NsV100R003C03SPC100, "ENDDAY")], [0, 1]],
      ["sTARTDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "STARTDATE")], [0, 1]],
      ["eNDDATE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ENDDATE")], [0, 1]],
      ["sTARTTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "STARTTIME")], [0, 1]],
      ["eNDTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "ENDTIME")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_FILCRITResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_FILCRITResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_FILCRIT,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_FILCRIT"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "NAME")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_FILCRITResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_FILCRITResponse"),
    :schema_element => [
      ["result", ["LST_FILCRITType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CALLERINFO,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_CALLERINFO"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cALLERNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLERNUM")]],
      ["cALLERTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLERTYPE")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CALLERINFOResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_CALLERINFOResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CALLERINFO,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_CALLERINFO"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cALLERNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLERNUM")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CALLERINFOResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_CALLERINFOResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_CALLERINFO,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_CALLERINFO"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cALLERNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLERNUM")]],
      ["cALLERTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLERTYPE")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_CALLERINFOResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_CALLERINFOResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CALLERINFO,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CALLERINFO"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cALLERNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLERNUM")], [0, 1]],
      ["cALLERTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLERTYPE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CALLERINFOResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CALLERINFOResponse"),
    :schema_element => [
      ["result", ["LST_CALLERINFOType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_PRESSTUS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "SET_PRESSTUS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["pRESSTUS", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRESSTUS")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_PRESSTUSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "SET_PRESSTUSResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PRESSTUS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_PRESSTUS"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PRESSTUSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_PRESSTUSResponse"),
    :schema_element => [
      ["result", ["LST_PRESSTUSType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_ONENUM,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_ONENUM"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["iDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "IDX")]],
      ["pRIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRIO")]],
      ["sRVTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SRVTYPE")], [0, 1]],
      ["nUMTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NUMTYPE")], [0, 1]],
      ["rELNUMDATA", ["ADD_ONENUM::RELNUMDATA[]", XSD::QName.new(NsV100R003C03SPC100, "RELNUMDATA")], [0, 3]],
      ["pROMODE302", [nil, XSD::QName.new(NsV100R003C03SPC100, "PROMODE302")], [0, 1]],
      ["rINGTONE", [nil, XSD::QName.new(NsV100R003C03SPC100, "RINGTONE")], [0, 1]],
      ["cWRTONE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CWRTONE")], [0, 1]],
      ["rTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTYPE")], [0, 1]],
      ["cFMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFMODE")]],
      ["fLTCOMB", [nil, XSD::QName.new(NsV100R003C03SPC100, "FLTCOMB")], [0, 1]],
      ["cALLEEDSPNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLEEDSPNUM")], [0, 1]],
      ["aSSIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "ASSIDX")], [0, 1]],
      ["rEGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_ONENUM::RELNUMDATA,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RELNUMDATA"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["rELNUMLST", [nil, XSD::QName.new(NsV100R003C03SPC100, "RELNUMLST")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_ONENUMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_ONENUMResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_ONENUM,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_ONENUM"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["iDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "IDX")], [0, 1]],
      ["pRIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRIO")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_ONENUMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_ONENUMResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_ONENUM,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_ONENUM"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["iDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "IDX")]],
      ["pRIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRIO")], [0, 1]],
      ["sRVTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "SRVTYPE")], [0, 1]],
      ["nUMTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NUMTYPE")], [0, 1]],
      ["rELNUMDATA", ["MOD_ONENUM::RELNUMDATA[]", XSD::QName.new(NsV100R003C03SPC100, "RELNUMDATA")], [0, 3]],
      ["pROMODE302", [nil, XSD::QName.new(NsV100R003C03SPC100, "PROMODE302")], [0, 1]],
      ["rINGTONE", [nil, XSD::QName.new(NsV100R003C03SPC100, "RINGTONE")], [0, 1]],
      ["cWRTONE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CWRTONE")], [0, 1]],
      ["rTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTYPE")], [0, 1]],
      ["cFMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFMODE")]],
      ["fLTCOMB", [nil, XSD::QName.new(NsV100R003C03SPC100, "FLTCOMB")], [0, 1]],
      ["cALLEEDSPNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLEEDSPNUM")], [0, 1]],
      ["aSSIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "ASSIDX")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_ONENUM::RELNUMDATA,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RELNUMDATA"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["rELNUMLST", [nil, XSD::QName.new(NsV100R003C03SPC100, "RELNUMLST")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_ONENUMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_ONENUMResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ONENUM,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_ONENUM"),
    :schema_element => [
      ["responseComplexType", [nil, XSD::QName.new(NsV100R003C03SPC100, "ResponseComplexType")]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["iDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "IDX")], [0, 1]],
      ["pRIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRIO")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ONENUMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_ONENUMResponse"),
    :schema_element => [
      ["result", ["LST_ONENUMType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_ASSLST,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_ASSLST"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["aSSIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "ASSIDX")]],
      ["aSSTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ASSTYPE")]],
      ["aSSDATA", ["ADD_ASSLST::ASSDATA", XSD::QName.new(NsV100R003C03SPC100, "ASSDATA")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_ASSLST::ASSDATA::AND,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "AND"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["aN", [nil, XSD::QName.new(NsV100R003C03SPC100, "AN")]],
      ["uT", [nil, XSD::QName.new(NsV100R003C03SPC100, "UT")], [0, 1]],
      ["nA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NA")], [0, 1]],
      ["nRT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_ASSLST::ASSDATA,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ASSDATA"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["aCTED", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTED")], [0, 1]],
      ["dSPNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "DSPNUM")], [0, 1]],
      ["pRMNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRMNUM")], [0, 1]],
      ["mAXNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "MAXNUM")], [0, 1]],
      ["rTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTIME")], [0, 1]],
      ["aND", ["ADD_ASSLST::ASSDATA::AND[]", XSD::QName.new(NsV100R003C03SPC100, "AND")], [1, 10]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_ASSLSTResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_ASSLSTResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_ASSLST,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_ASSLST"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["aSSIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "ASSIDX")], [0, 1]],
      ["aSSTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ASSTYPE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_ASSLSTResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_ASSLSTResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_ASSLST,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_ASSLST"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["aSSIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "ASSIDX")]],
      ["aSSTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ASSTYPE")]],
      ["aSSDATA", ["MOD_ASSLST::ASSDATA", XSD::QName.new(NsV100R003C03SPC100, "ASSDATA")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_ASSLST::ASSDATA::AND,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "AND"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["aN", [nil, XSD::QName.new(NsV100R003C03SPC100, "AN")]],
      ["uT", [nil, XSD::QName.new(NsV100R003C03SPC100, "UT")], [0, 1]],
      ["nA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NA")], [0, 1]],
      ["nRT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_ASSLST::ASSDATA,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ASSDATA"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["aCTED", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACTED")], [0, 1]],
      ["dSPNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "DSPNUM")], [0, 1]],
      ["pRMNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRMNUM")], [0, 1]],
      ["mAXNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "MAXNUM")], [0, 1]],
      ["rTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTIME")], [0, 1]],
      ["aND", ["MOD_ASSLST::ASSDATA::AND[]", XSD::QName.new(NsV100R003C03SPC100, "AND")], [0, 10]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_ASSLSTResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_ASSLSTResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSLST,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_ASSLST"),
    :schema_element => [
      ["responseComplexType", [nil, XSD::QName.new(NsV100R003C03SPC100, "ResponseComplexType")]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["aSSIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "ASSIDX")], [0, 1]],
      ["aSSTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ASSTYPE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSLSTResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_ASSLSTResponse"),
    :schema_element => [
      ["result", ["LST_ASSLSTType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CUGINFO,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_CUGINFO"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nETWORKID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NETWORKID")]],
      ["iNTERLOCKCODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "INTERLOCKCODE")]],
      ["pRIORITY", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRIORITY")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CUGINFOResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_CUGINFOResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_CUGINFO,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_CUGINFO"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nETWORKID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NETWORKID")]],
      ["iNTERLOCKCODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "INTERLOCKCODE")]],
      ["pRIORITY", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRIORITY")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_CUGINFOResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_CUGINFOResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CUGINFO,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_CUGINFO"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CUGINFOResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_CUGINFOResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CUGINFO,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CUGINFO"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CUGINFOResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CUGINFOResponse"),
    :schema_element => [
      ["result", ["LST_CUGINFOType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_SS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_SS"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => REG_SSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_SSResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SS,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_SS"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => DSP_SSResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_SSResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RST_PIN,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RST_PIN"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["pIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "PIN")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RST_PINResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RST_PINResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_PIN,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_PIN"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_PINResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_PINResponse"),
    :schema_element => [
      ["result", ["DSP_PINType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_PINMODE,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "SET_PINMODE"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["uPF", [nil, XSD::QName.new(NsV100R003C03SPC100, "UPF")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_PINMODEResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "SET_PINMODEResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PINMODE,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_PINMODE"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PINMODEResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_PINMODEResponse"),
    :schema_element => [
      ["result", ["LST_PINMODEType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_CDIVBARGRP,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "SET_CDIVBARGRP"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cDIVBARGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDIVBARGRP")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_CDIVBARGRPResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "SET_CDIVBARGRPResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CDIVBARGRP,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CDIVBARGRP"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CDIVBARGRPResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CDIVBARGRPResponse"),
    :schema_element => [
      ["result", ["LST_CDIVBARGRPType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SS_USE_ALLOWED,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_SS_USE_ALLOWED"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["dSPOPTIMIZE", [nil, XSD::QName.new(NsV100R003C03SPC100, "DSPOPTIMIZE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SS_USE_ALLOWEDResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_SS_USE_ALLOWEDResponse"),
    :schema_element => [
      ["result", ["DSP_SS_USE_ALLOWEDType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_TPRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_TPRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["tEMPLATEIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "TEMPLATEIDX")]],
      ["tEMPLATENAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "TEMPLATENAME")], [0, 1]],
      ["dSPIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "DSPIDX")], [0, 1]],
      ["lP", [nil, XSD::QName.new(NsV100R003C03SPC100, "LP")], [0, 1]],
      ["cSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSC")], [0, 1]],
      ["uTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "UTYPE")], [0, 1]],
      ["vCCFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "VCCFLAG")], [0, 1]],
      ["vTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "VTFLAG")], [0, 1]],
      ["nSCFU", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFU")], [0, 1]],
      ["nSCFUVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFUVM")], [0, 1]],
      ["nSCFB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFB")], [0, 1]],
      ["nSCFBVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFBVM")], [0, 1]],
      ["nSCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNR")], [0, 1]],
      ["nSCFNRVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRVM")], [0, 1]],
      ["nSCFNL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNL")], [0, 1]],
      ["nSCFNLVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNLVM")], [0, 1]],
      ["nSCD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCD")], [0, 1]],
      ["nSCDVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCDVM")], [0, 1]],
      ["nSCFNRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRC")], [0, 1]],
      ["nSCFNRCVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRCVM")], [0, 1]],
      ["nSCLIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIP")], [0, 1]],
      ["nSCIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIDCW")], [0, 1]],
      ["nSRIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIO")], [0, 1]],
      ["nSCNIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIP")], [0, 1]],
      ["nSCLIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIR")], [0, 1]],
      ["nSRIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIP")], [0, 1]],
      ["nSCNIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIR")], [0, 1]],
      ["nSRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRID")], [0, 1]],
      ["nSNRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRID")], [0, 1]],
      ["nSRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRND")], [0, 1]],
      ["nSNRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRND")], [0, 1]],
      ["nSCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCW")], [0, 1]],
      ["nSCCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCW")], [0, 1]],
      ["nSOIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOIP")], [0, 1]],
      ["nSACRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACRM")], [0, 1]],
      ["nSGOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGOIR")], [0, 1]],
      ["nSMOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMOIR")], [0, 1]],
      ["nSTIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIP")], [0, 1]],
      ["nSTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIR")], [0, 1]],
      ["nSOTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOTIR")], [0, 1]],
      ["nSCLIPNOSCREENING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIPNOSCREENING")], [0, 1]],
      ["nSCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCR")], [0, 1]],
      ["nSWAKE_UP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSWAKE_UP")], [0, 1]],
      ["nSAOC_D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_D")], [0, 1]],
      ["nSAOC_E", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_E")], [0, 1]],
      ["nSXEXH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEXH")], [0, 1]],
      ["nSXEGJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEGJ")], [0, 1]],
      ["nSCWCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCWCFNR")], [0, 1]],
      ["nSIIFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIIFC")], [0, 1]],
      ["nSDN_CALL_OUT_BAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_BAR")], [0, 1]],
      ["nSCCBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBS")], [0, 1]],
      ["nSCCNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNR")], [0, 1]],
      ["nSCCBSR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBSR")], [0, 1]],
      ["nSCCNRR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNRR")], [0, 1]],
      ["nS3PTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NS3PTY")], [0, 1]],
      ["nSNPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNPTY")], [0, 1]],
      ["nSDND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDND")], [0, 1]],
      ["nSMCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCR")], [0, 1]],
      ["nSCBA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBA")], [0, 1]],
      ["nSTMP_LIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTMP_LIN")], [0, 1]],
      ["nSCODEC_CNTRL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCODEC_CNTRL")], [0, 1]],
      ["nSMWI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMWI")], [0, 1]],
      ["nSDC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDC")], [0, 1]],
      ["nSHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOLD")], [0, 1]],
      ["nSECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSECT")], [0, 1]],
      ["nSCFTB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFTB")], [0, 1]],
      ["nSDAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDAN")], [0, 1]],
      ["nSSTOP_SECRET", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSTOP_SECRET")], [0, 1]],
      ["nSMCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCID")], [0, 1]],
      ["nSEBO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSEBO")], [0, 1]],
      ["nSICO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICO")], [0, 1]],
      ["nSOUTG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTG")], [0, 1]],
      ["nSINQYH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINQYH")], [0, 1]],
      ["nSUINFO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSUINFO")], [0, 1]],
      ["nSDN_CALL_OUT_ALLOW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_ALLOW")], [0, 1]],
      ["nSSIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSIC")], [0, 1]],
      ["nSSOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSOC")], [0, 1]],
      ["nSSETCFNRTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETCFNRTIME")], [0, 1]],
      ["nSCFS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFS")], [0, 1]],
      ["nSCFSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFSB")], [0, 1]],
      ["nSFAX", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFAX")], [0, 1]],
      ["nSABRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABRC")], [0, 1]],
      ["nSACRTOVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACRTOVM")], [0, 1]],
      ["nSPREPAID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPREPAID")], [0, 1]],
      ["nSCRBT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCRBT")], [0, 1]],
      ["nSICB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICB")], [0, 1]],
      ["nSMRINGING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMRINGING")], [0, 1]],
      ["nSCIS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIS")], [0, 1]],
      ["nSCBEG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBEG")], [0, 1]],
      ["nSCOLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLP")], [0, 1]],
      ["nSCOLR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLR")], [0, 1]],
      ["nSCOLPOVR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLPOVR")], [0, 1]],
      ["nSBAOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAOC")], [0, 1]],
      ["nSBOIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOIC")], [0, 1]],
      ["nSBOICEXHC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOICEXHC")], [0, 1]],
      ["nSBAIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAIC")], [0, 1]],
      ["nSBICROM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBICROM")], [0, 1]],
      ["nSSPEED_DIAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSPEED_DIAL")], [0, 1]],
      ["nSSD1D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD1D")], [0, 1]],
      ["nSSD2D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD2D")], [0, 1]],
      ["nSGRNCALL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGRNCALL")], [0, 1]],
      ["nSCPARK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCPARK")], [0, 1]],
      ["nSGAA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGAA")], [0, 1]],
      ["nSQSNS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQSNS")], [0, 1]],
      ["nSMSN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMSN")], [0, 1]],
      ["nSHOTLINE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOTLINE")], [0, 1]],
      ["nSAOC_S", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_S")], [0, 1]],
      ["nSNIGHTSRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNIGHTSRV")], [0, 1]],
      ["nSBACKNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBACKNUM")], [0, 1]],
      ["nSAUTOCON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAUTOCON")], [0, 1]],
      ["nSCAMPON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCAMPON")], [0, 1]],
      ["nSCTD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTD")], [0, 1]],
      ["nSCLICKHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLICKHOLD")], [0, 1]],
      ["nSQUEUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQUEUE")], [0, 1]],
      ["nSSANSWER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSANSWER")], [0, 1]],
      ["nSICENCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICENCF")], [0, 1]],
      ["nSCFGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFGO")], [0, 1]],
      ["nSCECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCECT")], [0, 1]],
      ["nSCTGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTGO")], [0, 1]],
      ["nSCTIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTIO")], [0, 1]],
      ["nSSETBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETBUSY")], [0, 1]],
      ["nSOVERSTEP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOVERSTEP")], [0, 1]],
      ["nSABSENT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABSENT")], [0, 1]],
      ["nSMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMONITOR")], [0, 1]],
      ["nSFMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFMONITOR")], [0, 1]],
      ["nSDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDISCNT")], [0, 1]],
      ["nSFDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFDISCNT")], [0, 1]],
      ["nSINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINSERT")], [0, 1]],
      ["nSFINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFINSERT")], [0, 1]],
      ["nSASI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSASI")], [0, 1]],
      ["nSPWCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPWCB")], [0, 1]],
      ["nSRD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRD")], [0, 1]],
      ["nSLCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSLCPS")], [0, 1]],
      ["nSNCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNCPS")], [0, 1]],
      ["nSICPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICPS")], [0, 1]],
      ["nSHCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHCPS")], [0, 1]],
      ["nSCBCLOCK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBCLOCK")], [0, 1]],
      ["nSMINIBAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMINIBAR")], [0, 1]],
      ["nSMCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCN")], [0, 1]],
      ["nSDSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDSTR")], [0, 1]],
      ["nSOPRREG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOPRREG")], [0, 1]],
      ["nSONEKEY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSONEKEY")], [0, 1]],
      ["nSINBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINBOUND")], [0, 1]],
      ["nSOUTBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTBOUND")], [0, 1]],
      ["nSCALLERID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCALLERID")], [0, 1]],
      ["nSCUN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCUN")], [0, 1]],
      ["nSIPTVVC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIPTVVC")], [0, 1]],
      ["nSNP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNP")], [0, 1]],
      ["nSSEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSEC")], [0, 1]],
      ["nSSECSTA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSECSTA")], [0, 1]],
      ["nSHRCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHRCN")], [0, 1]],
      ["nSSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSB")], [0, 1]],
      ["nSSCCA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSCCA")], [0, 1]],
      ["nSCCS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCS")], [0, 1]],
      ["nSOCCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOCCR")], [0, 1]],
      ["nSIMSMS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIMSMS")], [0, 1]],
      ["lCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "LCO")], [0, 1]],
      ["lC", [nil, XSD::QName.new(NsV100R003C03SPC100, "LC")], [0, 1]],
      ["lCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "LCT")], [0, 1]],
      ["nTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTT")], [0, 1]],
      ["iTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ITT")], [0, 1]],
      ["iCTX", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICTX")], [0, 1]],
      ["oCTX", [nil, XSD::QName.new(NsV100R003C03SPC100, "OCTX")], [0, 1]],
      ["iNTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "INTT")], [0, 1]],
      ["iITT", [nil, XSD::QName.new(NsV100R003C03SPC100, "IITT")], [0, 1]],
      ["iCLT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICLT")], [0, 1]],
      ["iCDDD", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICDDD")], [0, 1]],
      ["iCIDD", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICIDD")], [0, 1]],
      ["iOLT", [nil, XSD::QName.new(NsV100R003C03SPC100, "IOLT")], [0, 1]],
      ["cTLCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTLCO")], [0, 1]],
      ["cTLCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTLCT")], [0, 1]],
      ["cTLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTLD")], [0, 1]],
      ["cTINTNANP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTINTNANP")], [0, 1]],
      ["cTINTWORLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTINTWORLD")], [0, 1]],
      ["cTDA", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTDA")], [0, 1]],
      ["cTOSM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTOSM")], [0, 1]],
      ["cTOSP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTOSP")], [0, 1]],
      ["cTOSP1", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTOSP1")], [0, 1]],
      ["cCO1", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO1")], [0, 1]],
      ["cCO2", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO2")], [0, 1]],
      ["cCO3", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO3")], [0, 1]],
      ["cCO4", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO4")], [0, 1]],
      ["cCO5", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO5")], [0, 1]],
      ["cCO6", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO6")], [0, 1]],
      ["cCO7", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO7")], [0, 1]],
      ["cCO8", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO8")], [0, 1]],
      ["cCO9", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO9")], [0, 1]],
      ["cCO10", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO10")], [0, 1]],
      ["cCO11", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO11")], [0, 1]],
      ["cCO12", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO12")], [0, 1]],
      ["cCO13", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO13")], [0, 1]],
      ["cCO14", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO14")], [0, 1]],
      ["cCO15", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO15")], [0, 1]],
      ["cCO16", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO16")], [0, 1]],
      ["cCO17", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO17")], [0, 1]],
      ["cCO18", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO18")], [0, 1]],
      ["cCO19", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO19")], [0, 1]],
      ["cCO20", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO20")], [0, 1]],
      ["cCO21", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO21")], [0, 1]],
      ["cCO22", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO22")], [0, 1]],
      ["cCO23", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO23")], [0, 1]],
      ["cCO24", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO24")], [0, 1]],
      ["cCO25", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO25")], [0, 1]],
      ["cCO26", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO26")], [0, 1]],
      ["cCO27", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO27")], [0, 1]],
      ["cCO28", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO28")], [0, 1]],
      ["cCO29", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO29")], [0, 1]],
      ["cCO30", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO30")], [0, 1]],
      ["cCO31", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO31")], [0, 1]],
      ["cCO32", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO32")], [0, 1]],
      ["hIGHENTCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "HIGHENTCO")], [0, 1]],
      ["oPERATOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "OPERATOR")], [0, 1]],
      ["sUPYSRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUPYSRV")], [0, 1]],
      ["iDDCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "IDDCI")], [0, 1]],
      ["nTCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTCI")], [0, 1]],
      ["lTCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "LTCI")], [0, 1]],
      ["rSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "RSC")], [0, 1]],
      ["cIG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CIG")], [0, 1]],
      ["oUTRST", [nil, XSD::QName.new(NsV100R003C03SPC100, "OUTRST")], [0, 1]],
      ["iNRST", [nil, XSD::QName.new(NsV100R003C03SPC100, "INRST")], [0, 1]],
      ["nOAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOAT")], [0, 1]],
      ["rINGCOUNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "RINGCOUNT")], [0, 1]],
      ["vMAIND", [nil, XSD::QName.new(NsV100R003C03SPC100, "VMAIND")], [0, 1]],
      ["vDMAIND", [nil, XSD::QName.new(NsV100R003C03SPC100, "VDMAIND")], [0, 1]],
      ["tGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "TGRP")], [0, 1]],
      ["tIDHLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIDHLD")], [0, 1]],
      ["tIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIDCW")], [0, 1]],
      ["sCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SCF")], [0, 1]],
      ["lMTGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "LMTGRP")], [0, 1]],
      ["fLBGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "FLBGRP")], [0, 1]],
      ["sLBGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "SLBGRP")], [0, 1]],
      ["cOP", [nil, XSD::QName.new(NsV100R003C03SPC100, "COP")], [0, 1]],
      ["g711_64K_A_LAW", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711_64K_A_LAW")], [0, 1]],
      ["g711_64K_U_LAW", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711_64K_U_LAW")], [0, 1]],
      ["g722", [nil, XSD::QName.new(NsV100R003C03SPC100, "G722")], [0, 1]],
      ["g723", [nil, XSD::QName.new(NsV100R003C03SPC100, "G723")], [0, 1]],
      ["g726", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726")], [0, 1]],
      ["g728", [nil, XSD::QName.new(NsV100R003C03SPC100, "G728")], [0, 1]],
      ["g729", [nil, XSD::QName.new(NsV100R003C03SPC100, "G729")], [0, 1]],
      ["cODEC_MP4A", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC_MP4A")], [0, 1]],
      ["cODEC2833", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC2833")], [0, 1]],
      ["cODEC2198", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC2198")], [0, 1]],
      ["g726_40", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_40")], [0, 1]],
      ["g726_32", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_32")], [0, 1]],
      ["g726_24", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_24")], [0, 1]],
      ["g726_16", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_16")], [0, 1]],
      ["aMR", [nil, XSD::QName.new(NsV100R003C03SPC100, "AMR")], [0, 1]],
      ["cLEARMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLEARMODE")], [0, 1]],
      ["iLBC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ILBC")], [0, 1]],
      ["sPEEX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SPEEX")], [0, 1]],
      ["g729EV", [nil, XSD::QName.new(NsV100R003C03SPC100, "G729EV")], [0, 1]],
      ["eVRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "EVRC")], [0, 1]],
      ["eVRCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "EVRCB")], [0, 1]],
      ["h261", [nil, XSD::QName.new(NsV100R003C03SPC100, "H261")], [0, 1]],
      ["h263", [nil, XSD::QName.new(NsV100R003C03SPC100, "H263")], [0, 1]],
      ["cODEC_MP4V", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC_MP4V")], [0, 1]],
      ["h264", [nil, XSD::QName.new(NsV100R003C03SPC100, "H264")], [0, 1]],
      ["t38", [nil, XSD::QName.new(NsV100R003C03SPC100, "T38")], [0, 1]],
      ["t120", [nil, XSD::QName.new(NsV100R003C03SPC100, "T120")], [0, 1]],
      ["g711A_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711A_VBD")], [0, 1]],
      ["g711U_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711U_VBD")], [0, 1]],
      ["g726_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_VBD")], [0, 1]],
      ["g726_40_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_40_VBD")], [0, 1]],
      ["g726_32_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_32_VBD")], [0, 1]],
      ["g726_24_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_24_VBD")], [0, 1]],
      ["g726_16_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_16_VBD")], [0, 1]],
      ["wIND_BAND_AMR", [nil, XSD::QName.new(NsV100R003C03SPC100, "WIND_BAND_AMR")], [0, 1]],
      ["gSM610", [nil, XSD::QName.new(NsV100R003C03SPC100, "GSM610")], [0, 1]],
      ["h263_2000", [nil, XSD::QName.new(NsV100R003C03SPC100, "H263_2000")], [0, 1]],
      ["bROADVOICE_32", [nil, XSD::QName.new(NsV100R003C03SPC100, "BROADVOICE_32")], [0, 1]],
      ["uNKNOWN_CODEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "UNKNOWN_CODEC")], [0, 1]],
      ["aCODEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACODEC")], [0, 1]],
      ["vCODEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "VCODEC")], [0, 1]],
      ["pOLIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "POLIDX")], [0, 1]],
      ["nCPI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NCPI")], [0, 1]],
      ["iCPI", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICPI")], [0, 1]],
      ["hCPI", [nil, XSD::QName.new(NsV100R003C03SPC100, "HCPI")], [0, 1]],
      ["eBOCL", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBOCL")], [0, 1]],
      ["eBOPL", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBOPL")], [0, 1]],
      ["eBOIT", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBOIT")], [0, 1]],
      ["rM", [nil, XSD::QName.new(NsV100R003C03SPC100, "RM")], [0, 1]],
      ["cPC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CPC")], [0, 1]],
      ["pCHG", [nil, XSD::QName.new(NsV100R003C03SPC100, "PCHG")], [0, 1]],
      ["tFPT", [nil, XSD::QName.new(NsV100R003C03SPC100, "TFPT")], [0, 1]],
      ["cHT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHT")], [0, 1]],
      ["mCIDMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCIDMODE")], [0, 1]],
      ["mCIDCMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCIDCMODE")], [0, 1]],
      ["mCIDAMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCIDAMODE")], [0, 1]],
      ["pREPAIDIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "PREPAIDIDX")], [0, 1]],
      ["cRBTID", [nil, XSD::QName.new(NsV100R003C03SPC100, "CRBTID")], [0, 1]],
      ["oDBBICTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBICTYPE")], [0, 1]],
      ["oDBBOCTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBOCTYPE")], [0, 1]],
      ["oDBBARTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBARTYPE")], [0, 1]],
      ["oDBSS", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBSS")], [0, 1]],
      ["oDBBRCFTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBRCFTYPE")], [0, 1]],
      ["oDBINFORM", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBINFORM")], [0, 1]],
      ["oDBENTAIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBENTAIN")], [0, 1]],
      ["oDBPLMNBAR1", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR1")], [0, 1]],
      ["oDBPLMNBAR2", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR2")], [0, 1]],
      ["oDBPLMNBAR3", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR3")], [0, 1]],
      ["oDBPLMNBAR4", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR4")], [0, 1]],
      ["pNOTI", [nil, XSD::QName.new(NsV100R003C03SPC100, "PNOTI")], [0, 1]],
      ["mAXPARACALL", [nil, XSD::QName.new(NsV100R003C03SPC100, "MAXPARACALL")], [0, 1]],
      ["aTSDTMBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "ATSDTMBUSY")], [0, 1]],
      ["cALLCOUNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLCOUNT")], [0, 1]],
      ["cDNOTICALLER", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDNOTICALLER")], [0, 1]],
      ["iSCHGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "ISCHGFLAG")], [0, 1]],
      ["cHC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHC")], [0, 1]],
      ["cUSER", [nil, XSD::QName.new(NsV100R003C03SPC100, "CUSER")], [0, 1]],
      ["cGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CGRP")], [0, 1]],
      ["cUSERGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CUSERGRP")], [0, 1]],
      ["sTCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "STCF")], [0, 1]],
      ["cHARSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHARSC")], [0, 1]],
      ["rEGUIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGUIDX")], [0, 1]],
      ["sOCBFUNC", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCBFUNC")], [0, 1]],
      ["sOCBPTONEIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCBPTONEIDX")], [0, 1]],
      ["aDMINCBA", [nil, XSD::QName.new(NsV100R003C03SPC100, "ADMINCBA")], [0, 1]],
      ["aDCONTROL_DIVERSION", [nil, XSD::QName.new(NsV100R003C03SPC100, "ADCONTROL_DIVERSION")], [0, 1]],
      ["dPR", [nil, XSD::QName.new(NsV100R003C03SPC100, "DPR")], [0, 1]],
      ["pRON", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRON")], [0, 1]],
      ["cPCRUS", [nil, XSD::QName.new(NsV100R003C03SPC100, "CPCRUS")], [0, 1]],
      ["cUSCAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CUSCAT")], [0, 1]],
      ["sPT100REL", [nil, XSD::QName.new(NsV100R003C03SPC100, "SPT100REL")], [0, 1]],
      ["aNALYSISMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ANALYSISMODE")], [0, 1]],
      ["gRPIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPIDX")], [0, 1]],
      ["sCADDRIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SCADDRIDX")], [0, 1]],
      ["cDNOCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDNOCB")], [0, 1]],
      ["kVALUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "KVALUE")], [0, 1]],
      ["iNPFIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "INPFIDX")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_TPResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_TPResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_TPRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_TPRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["tEMPLATEIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "TEMPLATEIDX")]],
      ["tEMPLATENAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "TEMPLATENAME")], [0, 1]],
      ["dSPIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "DSPIDX")], [0, 1]],
      ["lP", [nil, XSD::QName.new(NsV100R003C03SPC100, "LP")], [0, 1]],
      ["cSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSC")], [0, 1]],
      ["uTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "UTYPE")], [0, 1]],
      ["vCCFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "VCCFLAG")], [0, 1]],
      ["vTFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "VTFLAG")], [0, 1]],
      ["nSCFU", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFU")], [0, 1]],
      ["nSCFUVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFUVM")], [0, 1]],
      ["nSCFB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFB")], [0, 1]],
      ["nSCFBVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFBVM")], [0, 1]],
      ["nSCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNR")], [0, 1]],
      ["nSCFNRVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRVM")], [0, 1]],
      ["nSCFNL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNL")], [0, 1]],
      ["nSCFNLVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNLVM")], [0, 1]],
      ["nSCD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCD")], [0, 1]],
      ["nSCDVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCDVM")], [0, 1]],
      ["nSCFNRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRC")], [0, 1]],
      ["nSCFNRCVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRCVM")], [0, 1]],
      ["nSCLIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIP")], [0, 1]],
      ["nSCIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIDCW")], [0, 1]],
      ["nSRIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIO")], [0, 1]],
      ["nSCNIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIP")], [0, 1]],
      ["nSCLIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIR")], [0, 1]],
      ["nSRIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIP")], [0, 1]],
      ["nSCNIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCNIR")], [0, 1]],
      ["nSRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRID")], [0, 1]],
      ["nSNRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRID")], [0, 1]],
      ["nSRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRND")], [0, 1]],
      ["nSNRND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRND")], [0, 1]],
      ["nSCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCW")], [0, 1]],
      ["nSCCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCW")], [0, 1]],
      ["nSOIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOIP")], [0, 1]],
      ["nSACRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACRM")], [0, 1]],
      ["nSGOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGOIR")], [0, 1]],
      ["nSMOIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMOIR")], [0, 1]],
      ["nSTIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIP")], [0, 1]],
      ["nSTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTIR")], [0, 1]],
      ["nSOTIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOTIR")], [0, 1]],
      ["nSCLIPNOSCREENING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIPNOSCREENING")], [0, 1]],
      ["nSCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCR")], [0, 1]],
      ["nSWAKE_UP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSWAKE_UP")], [0, 1]],
      ["nSAOC_D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_D")], [0, 1]],
      ["nSAOC_E", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_E")], [0, 1]],
      ["nSXEXH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEXH")], [0, 1]],
      ["nSXEGJ", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSXEGJ")], [0, 1]],
      ["nSCWCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCWCFNR")], [0, 1]],
      ["nSIIFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIIFC")], [0, 1]],
      ["nSDN_CALL_OUT_BAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_BAR")], [0, 1]],
      ["nSCCBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBS")], [0, 1]],
      ["nSCCNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNR")], [0, 1]],
      ["nSCCBSR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBSR")], [0, 1]],
      ["nSCCNRR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCNRR")], [0, 1]],
      ["nS3PTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NS3PTY")], [0, 1]],
      ["nSNPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNPTY")], [0, 1]],
      ["nSDND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDND")], [0, 1]],
      ["nSMCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCR")], [0, 1]],
      ["nSCBA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBA")], [0, 1]],
      ["nSTMP_LIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSTMP_LIN")], [0, 1]],
      ["nSCODEC_CNTRL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCODEC_CNTRL")], [0, 1]],
      ["nSMWI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMWI")], [0, 1]],
      ["nSDC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDC")], [0, 1]],
      ["nSHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOLD")], [0, 1]],
      ["nSECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSECT")], [0, 1]],
      ["nSCFTB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFTB")], [0, 1]],
      ["nSDAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDAN")], [0, 1]],
      ["nSSTOP_SECRET", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSTOP_SECRET")], [0, 1]],
      ["nSMCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCID")], [0, 1]],
      ["nSEBO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSEBO")], [0, 1]],
      ["nSICO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICO")], [0, 1]],
      ["nSOUTG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTG")], [0, 1]],
      ["nSINQYH", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINQYH")], [0, 1]],
      ["nSUINFO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSUINFO")], [0, 1]],
      ["nSDN_CALL_OUT_ALLOW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_ALLOW")], [0, 1]],
      ["nSSIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSIC")], [0, 1]],
      ["nSSOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSOC")], [0, 1]],
      ["nSSETCFNRTIME", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETCFNRTIME")], [0, 1]],
      ["nSCFS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFS")], [0, 1]],
      ["nSCFSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFSB")], [0, 1]],
      ["nSFAX", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFAX")], [0, 1]],
      ["nSABRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABRC")], [0, 1]],
      ["nSACRTOVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSACRTOVM")], [0, 1]],
      ["nSPREPAID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPREPAID")], [0, 1]],
      ["nSCRBT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCRBT")], [0, 1]],
      ["nSICB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICB")], [0, 1]],
      ["nSMRINGING", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMRINGING")], [0, 1]],
      ["nSCIS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIS")], [0, 1]],
      ["nSCBEG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBEG")], [0, 1]],
      ["nSCOLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLP")], [0, 1]],
      ["nSCOLR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLR")], [0, 1]],
      ["nSCOLPOVR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCOLPOVR")], [0, 1]],
      ["nSBAOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAOC")], [0, 1]],
      ["nSBOIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOIC")], [0, 1]],
      ["nSBOICEXHC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBOICEXHC")], [0, 1]],
      ["nSBAIC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBAIC")], [0, 1]],
      ["nSBICROM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBICROM")], [0, 1]],
      ["nSSPEED_DIAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSPEED_DIAL")], [0, 1]],
      ["nSSD1D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD1D")], [0, 1]],
      ["nSSD2D", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSD2D")], [0, 1]],
      ["nSGRNCALL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGRNCALL")], [0, 1]],
      ["nSCPARK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCPARK")], [0, 1]],
      ["nSGAA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGAA")], [0, 1]],
      ["nSQSNS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQSNS")], [0, 1]],
      ["nSMSN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMSN")], [0, 1]],
      ["nSHOTLINE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOTLINE")], [0, 1]],
      ["nSAOC_S", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAOC_S")], [0, 1]],
      ["nSNIGHTSRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNIGHTSRV")], [0, 1]],
      ["nSBACKNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSBACKNUM")], [0, 1]],
      ["nSAUTOCON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSAUTOCON")], [0, 1]],
      ["nSCAMPON", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCAMPON")], [0, 1]],
      ["nSCTD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTD")], [0, 1]],
      ["nSCLICKHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLICKHOLD")], [0, 1]],
      ["nSQUEUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSQUEUE")], [0, 1]],
      ["nSSANSWER", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSANSWER")], [0, 1]],
      ["nSICENCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICENCF")], [0, 1]],
      ["nSCFGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFGO")], [0, 1]],
      ["nSCECT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCECT")], [0, 1]],
      ["nSCTGO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTGO")], [0, 1]],
      ["nSCTIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCTIO")], [0, 1]],
      ["nSSETBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSETBUSY")], [0, 1]],
      ["nSOVERSTEP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOVERSTEP")], [0, 1]],
      ["nSABSENT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABSENT")], [0, 1]],
      ["nSMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMONITOR")], [0, 1]],
      ["nSFMONITOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFMONITOR")], [0, 1]],
      ["nSDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDISCNT")], [0, 1]],
      ["nSFDISCNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFDISCNT")], [0, 1]],
      ["nSINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINSERT")], [0, 1]],
      ["nSFINSERT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSFINSERT")], [0, 1]],
      ["nSASI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSASI")], [0, 1]],
      ["nSPWCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSPWCB")], [0, 1]],
      ["nSRD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRD")], [0, 1]],
      ["nSLCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSLCPS")], [0, 1]],
      ["nSNCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNCPS")], [0, 1]],
      ["nSICPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICPS")], [0, 1]],
      ["nSHCPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHCPS")], [0, 1]],
      ["nSCBCLOCK", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCBCLOCK")], [0, 1]],
      ["nSMINIBAR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMINIBAR")], [0, 1]],
      ["nSMCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCN")], [0, 1]],
      ["nSDSTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDSTR")], [0, 1]],
      ["nSOPRREG", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOPRREG")], [0, 1]],
      ["nSONEKEY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSONEKEY")], [0, 1]],
      ["nSINBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSINBOUND")], [0, 1]],
      ["nSOUTBOUND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOUTBOUND")], [0, 1]],
      ["nSCALLERID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCALLERID")], [0, 1]],
      ["nSCUN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCUN")], [0, 1]],
      ["nSIPTVVC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIPTVVC")], [0, 1]],
      ["nSNP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNP")], [0, 1]],
      ["nSSEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSEC")], [0, 1]],
      ["nSSECSTA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSECSTA")], [0, 1]],
      ["nSHRCN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHRCN")], [0, 1]],
      ["nSSB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSB")], [0, 1]],
      ["nSSCCA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSCCA")], [0, 1]],
      ["nSCCS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCS")], [0, 1]],
      ["nSOCCR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSOCCR")], [0, 1]],
      ["nSIMSMS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSIMSMS")], [0, 1]],
      ["lCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "LCO")], [0, 1]],
      ["lC", [nil, XSD::QName.new(NsV100R003C03SPC100, "LC")], [0, 1]],
      ["lCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "LCT")], [0, 1]],
      ["nTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTT")], [0, 1]],
      ["iTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ITT")], [0, 1]],
      ["iCTX", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICTX")], [0, 1]],
      ["oCTX", [nil, XSD::QName.new(NsV100R003C03SPC100, "OCTX")], [0, 1]],
      ["iNTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "INTT")], [0, 1]],
      ["iITT", [nil, XSD::QName.new(NsV100R003C03SPC100, "IITT")], [0, 1]],
      ["iCLT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICLT")], [0, 1]],
      ["iCDDD", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICDDD")], [0, 1]],
      ["iCIDD", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICIDD")], [0, 1]],
      ["iOLT", [nil, XSD::QName.new(NsV100R003C03SPC100, "IOLT")], [0, 1]],
      ["cTLCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTLCO")], [0, 1]],
      ["cTLCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTLCT")], [0, 1]],
      ["cTLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTLD")], [0, 1]],
      ["cTINTNANP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTINTNANP")], [0, 1]],
      ["cTINTWORLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTINTWORLD")], [0, 1]],
      ["cTDA", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTDA")], [0, 1]],
      ["cTOSM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTOSM")], [0, 1]],
      ["cTOSP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTOSP")], [0, 1]],
      ["cTOSP1", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTOSP1")], [0, 1]],
      ["cCO1", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO1")], [0, 1]],
      ["cCO2", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO2")], [0, 1]],
      ["cCO3", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO3")], [0, 1]],
      ["cCO4", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO4")], [0, 1]],
      ["cCO5", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO5")], [0, 1]],
      ["cCO6", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO6")], [0, 1]],
      ["cCO7", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO7")], [0, 1]],
      ["cCO8", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO8")], [0, 1]],
      ["cCO9", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO9")], [0, 1]],
      ["cCO10", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO10")], [0, 1]],
      ["cCO11", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO11")], [0, 1]],
      ["cCO12", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO12")], [0, 1]],
      ["cCO13", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO13")], [0, 1]],
      ["cCO14", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO14")], [0, 1]],
      ["cCO15", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO15")], [0, 1]],
      ["cCO16", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO16")], [0, 1]],
      ["cCO17", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO17")], [0, 1]],
      ["cCO18", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO18")], [0, 1]],
      ["cCO19", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO19")], [0, 1]],
      ["cCO20", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO20")], [0, 1]],
      ["cCO21", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO21")], [0, 1]],
      ["cCO22", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO22")], [0, 1]],
      ["cCO23", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO23")], [0, 1]],
      ["cCO24", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO24")], [0, 1]],
      ["cCO25", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO25")], [0, 1]],
      ["cCO26", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO26")], [0, 1]],
      ["cCO27", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO27")], [0, 1]],
      ["cCO28", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO28")], [0, 1]],
      ["cCO29", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO29")], [0, 1]],
      ["cCO30", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO30")], [0, 1]],
      ["cCO31", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO31")], [0, 1]],
      ["cCO32", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCO32")], [0, 1]],
      ["hIGHENTCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "HIGHENTCO")], [0, 1]],
      ["oPERATOR", [nil, XSD::QName.new(NsV100R003C03SPC100, "OPERATOR")], [0, 1]],
      ["sUPYSRV", [nil, XSD::QName.new(NsV100R003C03SPC100, "SUPYSRV")], [0, 1]],
      ["iDDCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "IDDCI")], [0, 1]],
      ["nTCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTCI")], [0, 1]],
      ["lTCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "LTCI")], [0, 1]],
      ["rSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "RSC")], [0, 1]],
      ["cIG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CIG")], [0, 1]],
      ["oUTRST", [nil, XSD::QName.new(NsV100R003C03SPC100, "OUTRST")], [0, 1]],
      ["iNRST", [nil, XSD::QName.new(NsV100R003C03SPC100, "INRST")], [0, 1]],
      ["nOAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NOAT")], [0, 1]],
      ["rINGCOUNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "RINGCOUNT")], [0, 1]],
      ["vMAIND", [nil, XSD::QName.new(NsV100R003C03SPC100, "VMAIND")], [0, 1]],
      ["vDMAIND", [nil, XSD::QName.new(NsV100R003C03SPC100, "VDMAIND")], [0, 1]],
      ["tGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "TGRP")], [0, 1]],
      ["tIDHLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIDHLD")], [0, 1]],
      ["tIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIDCW")], [0, 1]],
      ["sCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "SCF")], [0, 1]],
      ["lMTGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "LMTGRP")], [0, 1]],
      ["fLBGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "FLBGRP")], [0, 1]],
      ["sLBGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "SLBGRP")], [0, 1]],
      ["cOP", [nil, XSD::QName.new(NsV100R003C03SPC100, "COP")], [0, 1]],
      ["g711_64K_A_LAW", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711_64K_A_LAW")], [0, 1]],
      ["g711_64K_U_LAW", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711_64K_U_LAW")], [0, 1]],
      ["g722", [nil, XSD::QName.new(NsV100R003C03SPC100, "G722")], [0, 1]],
      ["g723", [nil, XSD::QName.new(NsV100R003C03SPC100, "G723")], [0, 1]],
      ["g726", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726")], [0, 1]],
      ["g728", [nil, XSD::QName.new(NsV100R003C03SPC100, "G728")], [0, 1]],
      ["g729", [nil, XSD::QName.new(NsV100R003C03SPC100, "G729")], [0, 1]],
      ["cODEC_MP4A", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC_MP4A")], [0, 1]],
      ["cODEC2833", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC2833")], [0, 1]],
      ["cODEC2198", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC2198")], [0, 1]],
      ["g726_40", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_40")], [0, 1]],
      ["g726_32", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_32")], [0, 1]],
      ["g726_24", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_24")], [0, 1]],
      ["g726_16", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_16")], [0, 1]],
      ["aMR", [nil, XSD::QName.new(NsV100R003C03SPC100, "AMR")], [0, 1]],
      ["cLEARMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLEARMODE")], [0, 1]],
      ["iLBC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ILBC")], [0, 1]],
      ["sPEEX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SPEEX")], [0, 1]],
      ["g729EV", [nil, XSD::QName.new(NsV100R003C03SPC100, "G729EV")], [0, 1]],
      ["eVRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "EVRC")], [0, 1]],
      ["eVRCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "EVRCB")], [0, 1]],
      ["h261", [nil, XSD::QName.new(NsV100R003C03SPC100, "H261")], [0, 1]],
      ["h263", [nil, XSD::QName.new(NsV100R003C03SPC100, "H263")], [0, 1]],
      ["cODEC_MP4V", [nil, XSD::QName.new(NsV100R003C03SPC100, "CODEC_MP4V")], [0, 1]],
      ["h264", [nil, XSD::QName.new(NsV100R003C03SPC100, "H264")], [0, 1]],
      ["t38", [nil, XSD::QName.new(NsV100R003C03SPC100, "T38")], [0, 1]],
      ["t120", [nil, XSD::QName.new(NsV100R003C03SPC100, "T120")], [0, 1]],
      ["g711A_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711A_VBD")], [0, 1]],
      ["g711U_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G711U_VBD")], [0, 1]],
      ["g726_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_VBD")], [0, 1]],
      ["g726_40_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_40_VBD")], [0, 1]],
      ["g726_32_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_32_VBD")], [0, 1]],
      ["g726_24_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_24_VBD")], [0, 1]],
      ["g726_16_VBD", [nil, XSD::QName.new(NsV100R003C03SPC100, "G726_16_VBD")], [0, 1]],
      ["wIND_BAND_AMR", [nil, XSD::QName.new(NsV100R003C03SPC100, "WIND_BAND_AMR")], [0, 1]],
      ["gSM610", [nil, XSD::QName.new(NsV100R003C03SPC100, "GSM610")], [0, 1]],
      ["h263_2000", [nil, XSD::QName.new(NsV100R003C03SPC100, "H263_2000")], [0, 1]],
      ["bROADVOICE_32", [nil, XSD::QName.new(NsV100R003C03SPC100, "BROADVOICE_32")], [0, 1]],
      ["uNKNOWN_CODEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "UNKNOWN_CODEC")], [0, 1]],
      ["aCODEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACODEC")], [0, 1]],
      ["vCODEC", [nil, XSD::QName.new(NsV100R003C03SPC100, "VCODEC")], [0, 1]],
      ["pOLIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "POLIDX")], [0, 1]],
      ["nCPI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NCPI")], [0, 1]],
      ["iCPI", [nil, XSD::QName.new(NsV100R003C03SPC100, "ICPI")], [0, 1]],
      ["hCPI", [nil, XSD::QName.new(NsV100R003C03SPC100, "HCPI")], [0, 1]],
      ["eBOCL", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBOCL")], [0, 1]],
      ["eBOPL", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBOPL")], [0, 1]],
      ["eBOIT", [nil, XSD::QName.new(NsV100R003C03SPC100, "EBOIT")], [0, 1]],
      ["rM", [nil, XSD::QName.new(NsV100R003C03SPC100, "RM")], [0, 1]],
      ["cPC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CPC")], [0, 1]],
      ["pCHG", [nil, XSD::QName.new(NsV100R003C03SPC100, "PCHG")], [0, 1]],
      ["tFPT", [nil, XSD::QName.new(NsV100R003C03SPC100, "TFPT")], [0, 1]],
      ["cHT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHT")], [0, 1]],
      ["mCIDMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCIDMODE")], [0, 1]],
      ["mCIDCMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCIDCMODE")], [0, 1]],
      ["mCIDAMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "MCIDAMODE")], [0, 1]],
      ["pREPAIDIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "PREPAIDIDX")], [0, 1]],
      ["cRBTID", [nil, XSD::QName.new(NsV100R003C03SPC100, "CRBTID")], [0, 1]],
      ["oDBBICTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBICTYPE")], [0, 1]],
      ["oDBBOCTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBOCTYPE")], [0, 1]],
      ["oDBBARTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBARTYPE")], [0, 1]],
      ["oDBSS", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBSS")], [0, 1]],
      ["oDBBRCFTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBBRCFTYPE")], [0, 1]],
      ["oDBINFORM", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBINFORM")], [0, 1]],
      ["oDBENTAIN", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBENTAIN")], [0, 1]],
      ["oDBPLMNBAR1", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR1")], [0, 1]],
      ["oDBPLMNBAR2", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR2")], [0, 1]],
      ["oDBPLMNBAR3", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR3")], [0, 1]],
      ["oDBPLMNBAR4", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODBPLMNBAR4")], [0, 1]],
      ["pNOTI", [nil, XSD::QName.new(NsV100R003C03SPC100, "PNOTI")], [0, 1]],
      ["mAXPARACALL", [nil, XSD::QName.new(NsV100R003C03SPC100, "MAXPARACALL")], [0, 1]],
      ["aTSDTMBUSY", [nil, XSD::QName.new(NsV100R003C03SPC100, "ATSDTMBUSY")], [0, 1]],
      ["cALLCOUNT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLCOUNT")], [0, 1]],
      ["cDNOTICALLER", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDNOTICALLER")], [0, 1]],
      ["iSCHGFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "ISCHGFLAG")], [0, 1]],
      ["cHC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHC")], [0, 1]],
      ["cUSER", [nil, XSD::QName.new(NsV100R003C03SPC100, "CUSER")], [0, 1]],
      ["cGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CGRP")], [0, 1]],
      ["cUSERGRP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CUSERGRP")], [0, 1]],
      ["sTCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "STCF")], [0, 1]],
      ["cHARSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHARSC")], [0, 1]],
      ["rEGUIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "REGUIDX")], [0, 1]],
      ["sOCBFUNC", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCBFUNC")], [0, 1]],
      ["sOCBPTONEIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SOCBPTONEIDX")], [0, 1]],
      ["aDMINCBA", [nil, XSD::QName.new(NsV100R003C03SPC100, "ADMINCBA")], [0, 1]],
      ["aDCONTROL_DIVERSION", [nil, XSD::QName.new(NsV100R003C03SPC100, "ADCONTROL_DIVERSION")], [0, 1]],
      ["dPR", [nil, XSD::QName.new(NsV100R003C03SPC100, "DPR")], [0, 1]],
      ["pRON", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRON")], [0, 1]],
      ["cPCRUS", [nil, XSD::QName.new(NsV100R003C03SPC100, "CPCRUS")], [0, 1]],
      ["cUSCAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CUSCAT")], [0, 1]],
      ["sPT100REL", [nil, XSD::QName.new(NsV100R003C03SPC100, "SPT100REL")], [0, 1]],
      ["aNALYSISMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ANALYSISMODE")], [0, 1]],
      ["gRPIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPIDX")], [0, 1]],
      ["sCADDRIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "SCADDRIDX")], [0, 1]],
      ["cDNOCB", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDNOCB")], [0, 1]],
      ["kVALUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "KVALUE")], [0, 1]],
      ["iNPFIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "INPFIDX")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_TPResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_TPResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_TPRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_TPRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["tEMPLATEIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "TEMPLATEIDX")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_TPResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_TPResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_TPRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_TPRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["tEMPLATEIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "TEMPLATEIDX")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_TPResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_TPResponse"),
    :schema_element => [
      ["result", ["LST_TPType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CXSBRRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_CXSBRRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["cXSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSG")]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cXD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXD")], [0, 1]],
      ["pBXFG", [nil, XSD::QName.new(NsV100R003C03SPC100, "PBXFG")], [0, 1]],
      ["pKUPID", [nil, XSD::QName.new(NsV100R003C03SPC100, "PKUPID")], [0, 1]],
      ["gRPICO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPICO")], [0, 1]],
      ["gRPWCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPWCO")], [0, 1]],
      ["gRPCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPCO")], [0, 1]],
      ["gRPICI", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPICI")], [0, 1]],
      ["gRPWCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPWCI")], [0, 1]],
      ["gRPINCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPINCO")], [0, 1]],
      ["aUTOCON", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOCON")], [0, 1]],
      ["oDSPMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODSPMODE")], [0, 1]],
      ["rESERVED", [nil, XSD::QName.new(NsV100R003C03SPC100, "RESERVED")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CXSBRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_CXSBRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CXSBRRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_CXSBRRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["cXSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSG")]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cXD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXD")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CXSBRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_CXSBRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_CXSBRRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_CXSBRRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["cXSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSG")]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cXD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXD")], [0, 1]],
      ["pBXFG", [nil, XSD::QName.new(NsV100R003C03SPC100, "PBXFG")], [0, 1]],
      ["pKUPID", [nil, XSD::QName.new(NsV100R003C03SPC100, "PKUPID")], [0, 1]],
      ["gRPICO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPICO")], [0, 1]],
      ["gRPWCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPWCO")], [0, 1]],
      ["gRPCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPCO")], [0, 1]],
      ["gRPICI", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPICI")], [0, 1]],
      ["gRPWCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPWCI")], [0, 1]],
      ["gRPINCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPINCO")], [0, 1]],
      ["aUTOCON", [nil, XSD::QName.new(NsV100R003C03SPC100, "AUTOCON")], [0, 1]],
      ["oDSPMODE", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODSPMODE")], [0, 1]],
      ["rESERVED", [nil, XSD::QName.new(NsV100R003C03SPC100, "RESERVED")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_CXSBRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_CXSBRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXSBRRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSBRRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["cXSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSG")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")], [0, 1]],
      ["cXD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXD")], [0, 1]],
      ["qSP", [nil, XSD::QName.new(NsV100R003C03SPC100, "QSP")], [0, 1]],
      ["qAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "QAT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXSBRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSBRResponse"),
    :schema_element => [
      ["result", ["LST_CXSBRType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CXGRPRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_CXGRPRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cGN", [nil, XSD::QName.new(NsV100R003C03SPC100, "CGN")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["mAXM", [nil, XSD::QName.new(NsV100R003C03SPC100, "MAXM")], [0, 1]],
      ["oGC", [nil, XSD::QName.new(NsV100R003C03SPC100, "OGC")], [0, 1]],
      ["cXCFTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXCFTR")], [0, 1]],
      ["fOUTOCXPFX", [nil, XSD::QName.new(NsV100R003C03SPC100, "FOUTOCXPFX")], [0, 1]],
      ["mOUTOCXPFX", [nil, XSD::QName.new(NsV100R003C03SPC100, "MOUTOCXPFX")], [0, 1]],
      ["gPFALG", [nil, XSD::QName.new(NsV100R003C03SPC100, "GPFALG")], [0, 1]],
      ["fONNET", [nil, XSD::QName.new(NsV100R003C03SPC100, "FONNET")], [0, 1]],
      ["sPDT", [nil, XSD::QName.new(NsV100R003C03SPC100, "SPDT")], [0, 1]],
      ["oUTCHGPAI", [nil, XSD::QName.new(NsV100R003C03SPC100, "OUTCHGPAI")], [0, 1]],
      ["mTCHGPAI", [nil, XSD::QName.new(NsV100R003C03SPC100, "MTCHGPAI")], [0, 1]],
      ["mTDPAI", [nil, XSD::QName.new(NsV100R003C03SPC100, "MTDPAI")], [0, 1]],
      ["iGRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "IGRM")], [0, 1]],
      ["oGRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "OGRM")], [0, 1]],
      ["wACRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "WACRM")], [0, 1]],
      ["eCRBTF", [nil, XSD::QName.new(NsV100R003C03SPC100, "ECRBTF")], [0, 1]],
      ["eCRBTTID", [nil, XSD::QName.new(NsV100R003C03SPC100, "ECRBTTID")], [0, 1]],
      ["oNNETOUTBAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "ONNETOUTBAL")], [0, 1]],
      ["oNNETINBAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "ONNETINBAL")], [0, 1]],
      ["wACOUTBAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "WACOUTBAL")], [0, 1]],
      ["wACINBAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "WACINBAL")], [0, 1]],
      ["oVPNF", [nil, XSD::QName.new(NsV100R003C03SPC100, "OVPNF")], [0, 1]],
      ["bALRULEIND", [nil, XSD::QName.new(NsV100R003C03SPC100, "BALRULEIND")], [0, 1]],
      ["oVPNPF", [nil, XSD::QName.new(NsV100R003C03SPC100, "OVPNPF")], [0, 1]],
      ["rESERVED", [nil, XSD::QName.new(NsV100R003C03SPC100, "RESERVED")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CXGRPResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_CXGRPResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CXGRPRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_CXGRPRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cGN", [nil, XSD::QName.new(NsV100R003C03SPC100, "CGN")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CXGRPResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_CXGRPResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_CXGRPRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_CXGRPRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cGN", [nil, XSD::QName.new(NsV100R003C03SPC100, "CGN")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["mAXM", [nil, XSD::QName.new(NsV100R003C03SPC100, "MAXM")], [0, 1]],
      ["oGC", [nil, XSD::QName.new(NsV100R003C03SPC100, "OGC")], [0, 1]],
      ["cXCFTR", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXCFTR")], [0, 1]],
      ["fOUTOCXPFX", [nil, XSD::QName.new(NsV100R003C03SPC100, "FOUTOCXPFX")], [0, 1]],
      ["mOUTOCXPFX", [nil, XSD::QName.new(NsV100R003C03SPC100, "MOUTOCXPFX")], [0, 1]],
      ["gPFALG", [nil, XSD::QName.new(NsV100R003C03SPC100, "GPFALG")], [0, 1]],
      ["fONNET", [nil, XSD::QName.new(NsV100R003C03SPC100, "FONNET")], [0, 1]],
      ["sPDT", [nil, XSD::QName.new(NsV100R003C03SPC100, "SPDT")], [0, 1]],
      ["oUTCHGPAI", [nil, XSD::QName.new(NsV100R003C03SPC100, "OUTCHGPAI")], [0, 1]],
      ["mTCHGPAI", [nil, XSD::QName.new(NsV100R003C03SPC100, "MTCHGPAI")], [0, 1]],
      ["mTDPAI", [nil, XSD::QName.new(NsV100R003C03SPC100, "MTDPAI")], [0, 1]],
      ["iGRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "IGRM")], [0, 1]],
      ["oGRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "OGRM")], [0, 1]],
      ["wACRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "WACRM")], [0, 1]],
      ["eCRBTF", [nil, XSD::QName.new(NsV100R003C03SPC100, "ECRBTF")], [0, 1]],
      ["eCRBTTID", [nil, XSD::QName.new(NsV100R003C03SPC100, "ECRBTTID")], [0, 1]],
      ["oNNETOUTBAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "ONNETOUTBAL")], [0, 1]],
      ["oNNETINBAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "ONNETINBAL")], [0, 1]],
      ["wACOUTBAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "WACOUTBAL")], [0, 1]],
      ["wACINBAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "WACINBAL")], [0, 1]],
      ["oVPNF", [nil, XSD::QName.new(NsV100R003C03SPC100, "OVPNF")], [0, 1]],
      ["bALRULEIND", [nil, XSD::QName.new(NsV100R003C03SPC100, "BALRULEIND")], [0, 1]],
      ["oVPNPF", [nil, XSD::QName.new(NsV100R003C03SPC100, "OVPNPF")], [0, 1]],
      ["rESERVED", [nil, XSD::QName.new(NsV100R003C03SPC100, "RESERVED")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_CXGRPResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_CXGRPResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXGRPRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CXGRPRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cGN", [nil, XSD::QName.new(NsV100R003C03SPC100, "CGN")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["qSP", [nil, XSD::QName.new(NsV100R003C03SPC100, "QSP")], [0, 1]],
      ["qAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "QAT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXGRPResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CXGRPResponse"),
    :schema_element => [
      ["result", ["LST_CXGRPType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CXSUBGRPRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_CXSUBGRPRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["cGN", [nil, XSD::QName.new(NsV100R003C03SPC100, "CGN")], [0, 1]],
      ["cXSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSG")]],
      ["cXSGN", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSGN")], [0, 1]],
      ["bSFG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSFG")], [0, 1]],
      ["bALRULEIND", [nil, XSD::QName.new(NsV100R003C03SPC100, "BALRULEIND")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CXSUBGRPResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_CXSUBGRPResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CXSUBGRPRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_CXSUBGRPRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["cGN", [nil, XSD::QName.new(NsV100R003C03SPC100, "CGN")], [0, 1]],
      ["cXSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSG")], [0, 1]],
      ["cXSGN", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSGN")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CXSUBGRPResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_CXSUBGRPResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_CXSUBGRPRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_CXSUBGRPRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["cGN", [nil, XSD::QName.new(NsV100R003C03SPC100, "CGN")], [0, 1]],
      ["cXSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSG")]],
      ["cXSGN", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSGN")], [0, 1]],
      ["cXD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXD")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")], [0, 1]],
      ["tOC", [nil, XSD::QName.new(NsV100R003C03SPC100, "TOC")], [0, 1]],
      ["iDDFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "IDDFC")], [0, 1]],
      ["oDDFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ODDFC")], [0, 1]],
      ["iRFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "IRFC")], [0, 1]],
      ["oRFC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ORFC")], [0, 1]],
      ["iRBB", [nil, XSD::QName.new(NsV100R003C03SPC100, "IRBB")], [0, 1]],
      ["oRBB", [nil, XSD::QName.new(NsV100R003C03SPC100, "ORBB")], [0, 1]],
      ["nRCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRCI")], [0, 1]],
      ["nRFCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NRFCO")], [0, 1]],
      ["cCTI", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCTI")], [0, 1]],
      ["cCTO", [nil, XSD::QName.new(NsV100R003C03SPC100, "CCTO")], [0, 1]],
      ["cDM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CDM")], [0, 1]],
      ["iDM", [nil, XSD::QName.new(NsV100R003C03SPC100, "IDM")], [0, 1]],
      ["fDM", [nil, XSD::QName.new(NsV100R003C03SPC100, "FDM")], [0, 1]],
      ["cFUCSI", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFUCSI")], [0, 1]],
      ["cFUCSO", [nil, XSD::QName.new(NsV100R003C03SPC100, "CFUCSO")], [0, 1]],
      ["iNDO", [nil, XSD::QName.new(NsV100R003C03SPC100, "INDO")], [0, 1]],
      ["bILLFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BILLFLAG")], [0, 1]],
      ["kINDVOICE", [nil, XSD::QName.new(NsV100R003C03SPC100, "KINDVOICE")], [0, 1]],
      ["cLICKTRANSRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLICKTRANSRM")], [0, 1]],
      ["cALLINQUEUERM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLINQUEUERM")], [0, 1]],
      ["cALLHOLDRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLHOLDRM")], [0, 1]],
      ["wAKEUPRM", [nil, XSD::QName.new(NsV100R003C03SPC100, "WAKEUPRM")], [0, 1]],
      ["cXCFNRC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXCFNRC")], [0, 1]],
      ["cHGTOFLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHGTOFLD")], [0, 1]],
      ["cXCFNRCNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXCFNRCNUM")], [0, 1]],
      ["bALRULEIND", [nil, XSD::QName.new(NsV100R003C03SPC100, "BALRULEIND")], [0, 1]],
      ["pRIPHXFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "PRIPHXFLAG")], [0, 1]],
      ["pUBPHXFLAG", [nil, XSD::QName.new(NsV100R003C03SPC100, "PUBPHXFLAG")], [0, 1]],
      ["aCC", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACC")], [0, 1]],
      ["fTOSTA", [nil, XSD::QName.new(NsV100R003C03SPC100, "FTOSTA")], [0, 1]],
      ["rESERVED", [nil, XSD::QName.new(NsV100R003C03SPC100, "RESERVED")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_CXSUBGRPResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_CXSUBGRPResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXSUBGRPRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSUBGRPRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["cGN", [nil, XSD::QName.new(NsV100R003C03SPC100, "CGN")], [0, 1]],
      ["cXSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSG")], [0, 1]],
      ["cXSGN", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSGN")], [0, 1]],
      ["bSFG", [nil, XSD::QName.new(NsV100R003C03SPC100, "BSFG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXSUBGRPResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSUBGRPResponse"),
    :schema_element => [
      ["result", ["LST_CXSUBGRPType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_OCXPFXRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_OCXPFXRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["oGP", [nil, XSD::QName.new(NsV100R003C03SPC100, "OGP")]],
      ["oCSA", [nil, XSD::QName.new(NsV100R003C03SPC100, "OCSA")], [0, 1]],
      ["dLEN", [nil, XSD::QName.new(NsV100R003C03SPC100, "DLEN")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_OCXPFXResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_OCXPFXResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_OCXPFXRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_OCXPFXRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["oGP", [nil, XSD::QName.new(NsV100R003C03SPC100, "OGP")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_OCXPFXResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_OCXPFXResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_OCXPFXRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_OCXPFXRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["oGP", [nil, XSD::QName.new(NsV100R003C03SPC100, "OGP")]],
      ["oCSA", [nil, XSD::QName.new(NsV100R003C03SPC100, "OCSA")], [0, 1]],
      ["dLEN", [nil, XSD::QName.new(NsV100R003C03SPC100, "DLEN")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_OCXPFXResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_OCXPFXResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_OCXPFXRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_OCXPFXRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["oGP", [nil, XSD::QName.new(NsV100R003C03SPC100, "OGP")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_OCXPFXResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_OCXPFXResponse"),
    :schema_element => [
      ["result", ["LST_OCXPFXType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_ICXPFXRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_ICXPFXRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["cLRLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLRLP")], [0, 1]],
      ["pFX", [nil, XSD::QName.new(NsV100R003C03SPC100, "PFX")]],
      ["cSA", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSA")], [0, 1]],
      ["mINL", [nil, XSD::QName.new(NsV100R003C03SPC100, "MINL")]],
      ["mAXL", [nil, XSD::QName.new(NsV100R003C03SPC100, "MAXL")]],
      ["rESERVED", [nil, XSD::QName.new(NsV100R003C03SPC100, "RESERVED")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_ICXPFXResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_ICXPFXResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_ICXPFXRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_ICXPFXRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["cLRLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLRLP")]],
      ["pFX", [nil, XSD::QName.new(NsV100R003C03SPC100, "PFX")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_ICXPFXResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_ICXPFXResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_ICXPFXRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_ICXPFXRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["cLRLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLRLP")]],
      ["pFX", [nil, XSD::QName.new(NsV100R003C03SPC100, "PFX")]],
      ["cSA", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSA")], [0, 1]],
      ["mINL", [nil, XSD::QName.new(NsV100R003C03SPC100, "MINL")], [0, 1]],
      ["mAXL", [nil, XSD::QName.new(NsV100R003C03SPC100, "MAXL")], [0, 1]],
      ["rESERVED", [nil, XSD::QName.new(NsV100R003C03SPC100, "RESERVED")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_ICXPFXResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_ICXPFXResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ICXPFXRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_ICXPFXRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["cLRLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "CLRLP")], [0, 1]],
      ["pFX", [nil, XSD::QName.new(NsV100R003C03SPC100, "PFX")], [0, 1]],
      ["cSA", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSA")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ICXPFXResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_ICXPFXResponse"),
    :schema_element => [
      ["result", ["LST_ICXPFXType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_WACCTLRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_WACCTLRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["wACCXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "WACCXG")]],
      ["wAC", [nil, XSD::QName.new(NsV100R003C03SPC100, "WAC")]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_WACCTLResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_WACCTLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_WACCTLRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_WACCTLRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["wACCXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "WACCXG")]],
      ["wAC", [nil, XSD::QName.new(NsV100R003C03SPC100, "WAC")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_WACCTLResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_WACCTLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_WACCTLRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_WACCTLRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["wACCXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "WACCXG")]],
      ["wAC", [nil, XSD::QName.new(NsV100R003C03SPC100, "WAC")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_WACCTLResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_WACCTLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_WACCTLRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_WACCTLRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["wACCXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "WACCXG")], [0, 1]],
      ["wAC", [nil, XSD::QName.new(NsV100R003C03SPC100, "WAC")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_WACCTLResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_WACCTLResponse"),
    :schema_element => [
      ["result", ["LST_WACCTLType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_WCXPFXRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_WCXPFXRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["wAC", [nil, XSD::QName.new(NsV100R003C03SPC100, "WAC")]],
      ["wACCXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "WACCXG")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_WCXPFXResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_WCXPFXResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_WCXPFXRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_WCXPFXRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["wAC", [nil, XSD::QName.new(NsV100R003C03SPC100, "WAC")], [0, 1]],
      ["wACCXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "WACCXG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_WCXPFXResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_WCXPFXResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_WCXPFXRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_WCXPFXRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["wAC", [nil, XSD::QName.new(NsV100R003C03SPC100, "WAC")]],
      ["wACCXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "WACCXG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_WCXPFXResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_WCXPFXResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_WCXPFXRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_WCXPFXRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["wAC", [nil, XSD::QName.new(NsV100R003C03SPC100, "WAC")], [0, 1]],
      ["wACCXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "WACCXG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_WCXPFXResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_WCXPFXResponse"),
    :schema_element => [
      ["result", ["LST_WCXPFXType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_PBXRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_PBXRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["gDN", [nil, XSD::QName.new(NsV100R003C03SPC100, "GDN")]],
      ["qUL", [nil, XSD::QName.new(NsV100R003C03SPC100, "QUL")], [0, 1]],
      ["sGM", [nil, XSD::QName.new(NsV100R003C03SPC100, "SGM")], [0, 1]],
      ["mDF", [nil, XSD::QName.new(NsV100R003C03SPC100, "MDF")], [0, 1]],
      ["pAC", [nil, XSD::QName.new(NsV100R003C03SPC100, "PAC")], [0, 1]],
      ["sNDP", [nil, XSD::QName.new(NsV100R003C03SPC100, "SNDP")], [0, 1]],
      ["cHT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHT")], [0, 1]],
      ["rSF", [nil, XSD::QName.new(NsV100R003C03SPC100, "RSF")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_PBXResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_PBXResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_PBXRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_PBXRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["gDN", [nil, XSD::QName.new(NsV100R003C03SPC100, "GDN")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_PBXResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_PBXResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_PBXRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_PBXRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["gDN", [nil, XSD::QName.new(NsV100R003C03SPC100, "GDN")]],
      ["qUL", [nil, XSD::QName.new(NsV100R003C03SPC100, "QUL")], [0, 1]],
      ["sGM", [nil, XSD::QName.new(NsV100R003C03SPC100, "SGM")], [0, 1]],
      ["mDF", [nil, XSD::QName.new(NsV100R003C03SPC100, "MDF")], [0, 1]],
      ["pAC", [nil, XSD::QName.new(NsV100R003C03SPC100, "PAC")], [0, 1]],
      ["sNDP", [nil, XSD::QName.new(NsV100R003C03SPC100, "SNDP")], [0, 1]],
      ["cHT", [nil, XSD::QName.new(NsV100R003C03SPC100, "CHT")], [0, 1]],
      ["rSF", [nil, XSD::QName.new(NsV100R003C03SPC100, "RSF")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_PBXResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_PBXResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PBXRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_PBXRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["gDN", [nil, XSD::QName.new(NsV100R003C03SPC100, "GDN")], [0, 1]],
      ["qSP", [nil, XSD::QName.new(NsV100R003C03SPC100, "QSP")], [0, 1]],
      ["qAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "QAT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PBXResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_PBXResponse"),
    :schema_element => [
      ["result", ["LST_PBXType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_PBXSBRRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_PBXSBRRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["gDN", [nil, XSD::QName.new(NsV100R003C03SPC100, "GDN")]],
      ["pSN", [nil, XSD::QName.new(NsV100R003C03SPC100, "PSN")], [0, 1]],
      ["tIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIP")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_PBXSBRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_PBXSBRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_PBXSBRRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_PBXSBRRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_PBXSBRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_PBXSBRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_PBXSBRRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_PBXSBRRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["gDN", [nil, XSD::QName.new(NsV100R003C03SPC100, "GDN")], [0, 1]],
      ["pSN", [nil, XSD::QName.new(NsV100R003C03SPC100, "PSN")], [0, 1]],
      ["tIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "TIP")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_PBXSBRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_PBXSBRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PBXSBRRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_PBXSBRRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")], [0, 1]],
      ["qSP", [nil, XSD::QName.new(NsV100R003C03SPC100, "QSP")], [0, 1]],
      ["qAT", [nil, XSD::QName.new(NsV100R003C03SPC100, "QAT")], [0, 1]],
      ["qM", [nil, XSD::QName.new(NsV100R003C03SPC100, "QM")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PBXSBRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_PBXSBRResponse"),
    :schema_element => [
      ["result", ["LST_PBXSBRType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CXSDRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_CXSDRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["cXSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSG")]],
      ["sDSN", [nil, XSD::QName.new(NsV100R003C03SPC100, "SDSN")]],
      ["sDFN", [nil, XSD::QName.new(NsV100R003C03SPC100, "SDFN")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CXSDResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_CXSDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CXSDRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_CXSDRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["cXSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSG")]],
      ["sDSN", [nil, XSD::QName.new(NsV100R003C03SPC100, "SDSN")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CXSDResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_CXSDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_CXSDRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_CXSDRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["cXSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSG")]],
      ["sDSN", [nil, XSD::QName.new(NsV100R003C03SPC100, "SDSN")]],
      ["sDFN", [nil, XSD::QName.new(NsV100R003C03SPC100, "SDFN")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_CXSDResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_CXSDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXSDRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSDRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["cXSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSG")], [0, 1]],
      ["sDSN", [nil, XSD::QName.new(NsV100R003C03SPC100, "SDSN")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXSDResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSDResponse"),
    :schema_element => [
      ["result", ["LST_CXSDType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXUNUMRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CXUNUMRequest"),
    :schema_element => [
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXUNUMResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CXUNUMResponse"),
    :schema_element => [
      ["result", ["LST_CXUNUMType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_WCIMPURequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_WCIMPURequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["wCIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCIDX")]],
      ["pIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "PIMPU")]],
      ["wCIMPU1", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCIMPU1")]],
      ["wCIMPU2", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCIMPU2")]],
      ["rESERVED", [nil, XSD::QName.new(NsV100R003C03SPC100, "RESERVED")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_WCIMPUResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_WCIMPUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_WCIMPURequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_WCIMPURequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["wCIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCIDX")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_WCIMPUResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_WCIMPUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_WCIMPURequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_WCIMPURequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["wCIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCIDX")]],
      ["pIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "PIMPU")], [0, 1]],
      ["wCIMPU1", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCIMPU1")], [0, 1]],
      ["wCIMPU2", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCIMPU2")], [0, 1]],
      ["rESERVED", [nil, XSD::QName.new(NsV100R003C03SPC100, "RESERVED")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_WCIMPUResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_WCIMPUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_WCIMPURequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_WCIMPURequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["wCIDX", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCIDX")], [0, 1]],
      ["pIMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "PIMPU")], [0, 1]],
      ["wCIMPU1", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCIMPU1")], [0, 1]],
      ["wCIMPU2", [nil, XSD::QName.new(NsV100R003C03SPC100, "WCIMPU2")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_WCIMPUResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_WCIMPUResponse"),
    :schema_element => [
      ["result", ["LST_WCIMPUType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CXOCRRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_CXOCRRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cTXGRPID", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTXGRPID")]],
      ["kVALUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "KVALUE")]],
      ["cALLOUTRIGHTEX", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLOUTRIGHTEX")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CXOCRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_CXOCRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CXOCRRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_CXOCRRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cTXGRPID", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTXGRPID")]],
      ["kVALUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "KVALUE")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CXOCRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_CXOCRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_CXOCRRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_CXOCRRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cTXGRPID", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTXGRPID")]],
      ["kVALUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "KVALUE")]],
      ["cALLOUTRIGHTEX", [nil, XSD::QName.new(NsV100R003C03SPC100, "CALLOUTRIGHTEX")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_CXOCRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_CXOCRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXOCRRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CXOCRRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cTXGRPID", [nil, XSD::QName.new(NsV100R003C03SPC100, "CTXGRPID")], [0, 1]],
      ["kVALUE", [nil, XSD::QName.new(NsV100R003C03SPC100, "KVALUE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXOCRResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CXOCRResponse"),
    :schema_element => [
      ["result", ["LST_CXOCRType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CXPFXPRORequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_CXPFXPRORequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["pFX", [nil, XSD::QName.new(NsV100R003C03SPC100, "PFX")]],
      ["cSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSC")]],
      ["dDC", [nil, XSD::QName.new(NsV100R003C03SPC100, "DDC")], [0, 1]],
      ["rDC", [nil, XSD::QName.new(NsV100R003C03SPC100, "RDC")], [0, 1]],
      ["sTP", [nil, XSD::QName.new(NsV100R003C03SPC100, "STP")], [0, 1]],
      ["fPF", [nil, XSD::QName.new(NsV100R003C03SPC100, "FPF")], [0, 1]],
      ["nPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NPS")], [0, 1]],
      ["nLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NLP")], [0, 1]],
      ["dDCX", [nil, XSD::QName.new(NsV100R003C03SPC100, "DDCX")], [0, 1]],
      ["rDCX", [nil, XSD::QName.new(NsV100R003C03SPC100, "RDCX")], [0, 1]],
      ["rAF", [nil, XSD::QName.new(NsV100R003C03SPC100, "RAF")], [0, 1]],
      ["tT", [nil, XSD::QName.new(NsV100R003C03SPC100, "TT")], [0, 1]],
      ["fCC", [nil, XSD::QName.new(NsV100R003C03SPC100, "FCC")], [0, 1]],
      ["rESERVED", [nil, XSD::QName.new(NsV100R003C03SPC100, "RESERVED")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CXPFXPROResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_CXPFXPROResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CXPFXPRORequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_CXPFXPRORequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["pFX", [nil, XSD::QName.new(NsV100R003C03SPC100, "PFX")]],
      ["cSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSC")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CXPFXPROResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_CXPFXPROResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_CXPFXPRORequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_CXPFXPRORequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["pFX", [nil, XSD::QName.new(NsV100R003C03SPC100, "PFX")]],
      ["cSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSC")]],
      ["dDC", [nil, XSD::QName.new(NsV100R003C03SPC100, "DDC")], [0, 1]],
      ["rDC", [nil, XSD::QName.new(NsV100R003C03SPC100, "RDC")], [0, 1]],
      ["sTP", [nil, XSD::QName.new(NsV100R003C03SPC100, "STP")], [0, 1]],
      ["fPF", [nil, XSD::QName.new(NsV100R003C03SPC100, "FPF")], [0, 1]],
      ["nPS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NPS")], [0, 1]],
      ["nLP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NLP")], [0, 1]],
      ["dDCX", [nil, XSD::QName.new(NsV100R003C03SPC100, "DDCX")], [0, 1]],
      ["rDCX", [nil, XSD::QName.new(NsV100R003C03SPC100, "RDCX")], [0, 1]],
      ["rAF", [nil, XSD::QName.new(NsV100R003C03SPC100, "RAF")], [0, 1]],
      ["tT", [nil, XSD::QName.new(NsV100R003C03SPC100, "TT")], [0, 1]],
      ["fCC", [nil, XSD::QName.new(NsV100R003C03SPC100, "FCC")], [0, 1]],
      ["rESERVED", [nil, XSD::QName.new(NsV100R003C03SPC100, "RESERVED")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_CXPFXPROResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_CXPFXPROResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXPFXPRORequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CXPFXPRORequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")], [0, 1]],
      ["pFX", [nil, XSD::QName.new(NsV100R003C03SPC100, "PFX")], [0, 1]],
      ["cSC", [nil, XSD::QName.new(NsV100R003C03SPC100, "CSC")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXPFXPROResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CXPFXPROResponse"),
    :schema_element => [
      ["result", ["LST_CXPFXPROType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CXACTRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_CXACTRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["aCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACT")]],
      ["pWD", [nil, XSD::QName.new(NsV100R003C03SPC100, "PWD")]],
      ["rOLEID", [nil, XSD::QName.new(NsV100R003C03SPC100, "ROLEID")], [0, 1]],
      ["rTLIST", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTLIST")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["nAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "NAME")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CXACTResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_CXACTResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CXACTRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_CXACTRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["aCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACT")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CXACTResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_CXACTResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_CXACTRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_CXACTRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["aCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACT")]],
      ["rOLEID", [nil, XSD::QName.new(NsV100R003C03SPC100, "ROLEID")], [0, 1]],
      ["rTLIST", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTLIST")], [0, 1]],
      ["nAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "NAME")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_CXACTResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_CXACTResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXACTRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CXACTRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["cXSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSG")], [0, 1]],
      ["aCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXACTResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CXACTResponse"),
    :schema_element => [
      ["result", ["LST_CXACTType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CXACTRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CXACTRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["aCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACT")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CXACTResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CXACTResponse"),
    :schema_element => [
      ["result", ["DSP_CXACTType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => INL_CXACTRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "INL_CXACTRequest"),
    :schema_element => [
      ["aCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ACT")]],
      ["eMAIL", [nil, XSD::QName.new(NsV100R003C03SPC100, "EMAIL")]]
    ]
  )

  LiteralRegistry.register(
    :class => INL_CXACTResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "INL_CXACTResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CONRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CONRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["cONPWD", [nil, XSD::QName.new(NsV100R003C03SPC100, "CONPWD")]],
      ["pDMN", [nil, XSD::QName.new(NsV100R003C03SPC100, "PDMN")]],
      ["pADDR", [nil, XSD::QName.new(NsV100R003C03SPC100, "PADDR")]],
      ["pPORT", [nil, XSD::QName.new(NsV100R003C03SPC100, "PPORT")]],
      ["cONTYPE", [nil, XSD::QName.new(NsV100R003C03SPC100, "CONTYPE")]],
      ["sMSNUM", [nil, XSD::QName.new(NsV100R003C03SPC100, "SMSNUM")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => REG_CONResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "REG_CONResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CONRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CONRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RPL_CONResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RPL_CONResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CONRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CONRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_CONResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_CONResponse"),
    :schema_element => [
      ["result", ["DSP_CONType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CONRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CONRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["cXSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CONResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CONResponse"),
    :schema_element => [
      ["result", ["LST_CONType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_ROLERequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_ROLERequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["rOLEID", [nil, XSD::QName.new(NsV100R003C03SPC100, "ROLEID")]],
      ["rOLENAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "ROLENAME")], [0, 1]],
      ["rTLIST", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTLIST")]],
      ["dESC", [nil, XSD::QName.new(NsV100R003C03SPC100, "DESC")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_ROLEResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "ADD_ROLEResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_ROLERequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_ROLERequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["rOLEID", [nil, XSD::QName.new(NsV100R003C03SPC100, "ROLEID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_ROLEResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "RMV_ROLEResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_ROLERequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_ROLERequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["rOLEID", [nil, XSD::QName.new(NsV100R003C03SPC100, "ROLEID")]],
      ["rOLENAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "ROLENAME")], [0, 1]],
      ["rTLIST", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTLIST")], [0, 1]],
      ["dESC", [nil, XSD::QName.new(NsV100R003C03SPC100, "DESC")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_ROLEResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_ROLEResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ROLERequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_ROLERequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["rOLEID", [nil, XSD::QName.new(NsV100R003C03SPC100, "ROLEID")], [0, 1]],
      ["rOLENAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "ROLENAME")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ROLEResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_ROLEResponse"),
    :schema_element => [
      ["result", ["LST_ROLEType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ROLERequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_ROLERequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["rOLEID", [nil, XSD::QName.new(NsV100R003C03SPC100, "ROLEID")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ROLEResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_ROLEResponse"),
    :schema_element => [
      ["result", ["DSP_ROLEType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ACTRTRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_ACTRTRequest"),
    :schema_element => [
      ["rTID", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTID")], [0, 1]],
      ["rTNAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTNAME")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ACTRTResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_ACTRTResponse"),
    :schema_element => [
      ["result", ["LST_ACTRTType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ACTRTRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_ACTRTRequest"),
    :schema_element => [
      ["rTID", [nil, XSD::QName.new(NsV100R003C03SPC100, "RTID")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_ACTRTResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_ACTRTResponse"),
    :schema_element => [
      ["result", ["DSP_ACTRTType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_SBGLANRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_SBGLANRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["cXSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSG")]],
      ["lAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "LAN")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_SBGLANResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_SBGLANResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SBGLANRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_SBGLANRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["cXG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXG")]],
      ["cXSG", [nil, XSD::QName.new(NsV100R003C03SPC100, "CXSG")]]
    ]
  )

  LiteralRegistry.register(
    :class => DSP_SBGLANResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "DSP_SBGLANResponse"),
    :schema_element => [
      ["result", ["DSP_SBGLANType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_LANRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_LANRequest"),
    :schema_element => [
      ["lANID", [nil, XSD::QName.new(NsV100R003C03SPC100, "LANID")], [0, 1]],
      ["lANNAME", [nil, XSD::QName.new(NsV100R003C03SPC100, "LANNAME")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_LANResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_LANResponse"),
    :schema_element => [
      ["result", ["LST_LANType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_CXSBRCONRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_CXSBRCONRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]],
      ["lCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "LCO")], [0, 1]],
      ["lC", [nil, XSD::QName.new(NsV100R003C03SPC100, "LC")], [0, 1]],
      ["lCT", [nil, XSD::QName.new(NsV100R003C03SPC100, "LCT")], [0, 1]],
      ["nTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTT")], [0, 1]],
      ["iTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "ITT")], [0, 1]],
      ["iNTT", [nil, XSD::QName.new(NsV100R003C03SPC100, "INTT")], [0, 1]],
      ["iITT", [nil, XSD::QName.new(NsV100R003C03SPC100, "IITT")], [0, 1]],
      ["iOLT", [nil, XSD::QName.new(NsV100R003C03SPC100, "IOLT")], [0, 1]],
      ["gRPICO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPICO")], [0, 1]],
      ["gRPCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPCO")], [0, 1]],
      ["iDDCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "IDDCI")], [0, 1]],
      ["nTCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "NTCI")], [0, 1]],
      ["lTCI", [nil, XSD::QName.new(NsV100R003C03SPC100, "LTCI")], [0, 1]],
      ["gRPICI", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPICI")], [0, 1]],
      ["gRPINCO", [nil, XSD::QName.new(NsV100R003C03SPC100, "GRPINCO")], [0, 1]],
      ["nSCFU", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFU")], [0, 1]],
      ["nSCFB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFB")], [0, 1]],
      ["nSCFBVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFBVM")], [0, 1]],
      ["nSCFNR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNR")], [0, 1]],
      ["nSCFNRVM", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNRVM")], [0, 1]],
      ["nSCFNL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFNL")], [0, 1]],
      ["nSCD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCD")], [0, 1]],
      ["nSCIDCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCIDCW")], [0, 1]],
      ["nSRIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIP")], [0, 1]],
      ["nSRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRID")], [0, 1]],
      ["nSNRID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNRID")], [0, 1]],
      ["nSCLIP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIP")], [0, 1]],
      ["nSRIO", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSRIO")], [0, 1]],
      ["nSCLIR", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCLIR")], [0, 1]],
      ["nSCW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCW")], [0, 1]],
      ["nSWAKE_UP", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSWAKE_UP")], [0, 1]],
      ["nSCCBS", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCCBS")], [0, 1]],
      ["nS3PTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NS3PTY")], [0, 1]],
      ["nSNPTY", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSNPTY")], [0, 1]],
      ["nSDND", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDND")], [0, 1]],
      ["nSHOLD", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOLD")], [0, 1]],
      ["nSCFTB", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSCFTB")], [0, 1]],
      ["nSDAN", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDAN")], [0, 1]],
      ["nSMCID", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSMCID")], [0, 1]],
      ["nSDN_CALL_OUT_ALLOW", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSDN_CALL_OUT_ALLOW")], [0, 1]],
      ["nSSPEED_DIAL", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSSPEED_DIAL")], [0, 1]],
      ["nSGAA", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSGAA")], [0, 1]],
      ["nSHOTLINE", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSHOTLINE")], [0, 1]],
      ["nSICENCF", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSICENCF")], [0, 1]],
      ["nSABSENT", [nil, XSD::QName.new(NsV100R003C03SPC100, "NSABSENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_CXSBRCONResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "MOD_CXSBRCONResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXSBRCONRequest,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSBRCONRequest"),
    :schema_element => [
      ["mEGROUP", [nil, XSD::QName.new(NsV100R003C03SPC100, "MEGROUP")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV100R003C03SPC100, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CXSBRCONResponse,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "LST_CXSBRCONResponse"),
    :schema_element => [
      ["result", ["LST_CXSBRCONType", XSD::QName.new(NsV100R003C03SPC100, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => Authentication,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "Authentication"),
    :schema_element => [
      ["username", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "Username")]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsV100R003C03SPC100, "Password")]]
    ]
  )

  LiteralRegistry.register(
    :class => OperationFault,
    :schema_name => XSD::QName.new(NsV100R003C03SPC100, "OperationFault"),
    :schema_element => [
      ["faultReason", "SOAP::SOAPString"]
    ]
  )
end
