require 'HSS_default.rb'
require 'soap/mapping'

module HSS_DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsHSSV900R008C02SPC200 = "http://www.huawei.com/IMS/HSSV900R008C02SPC200"
  NsV900R008C02SPC200 = "http://www.huawei.com/IMS/HSS/V900R008C02SPC200/"

  EncodedRegistry.register(
    :class => RequestCommonInfoType,
    :schema_type => XSD::QName.new(NsHSSV900R008C02SPC200, "RequestCommonInfoType"),
    :schema_element => [
      ["sessionID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "SessionID")]],
      ["mEID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "MEID")]],
      ["sourceMEID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "SourceMEID")]],
      ["serialID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "SerialID")]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsHSSV900R008C02SPC200, "UserName")]],
      ["sync", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "Sync")]],
      ["reserve", ["SOAP::SOAPString", XSD::QName.new(NsHSSV900R008C02SPC200, "Reserve")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ResponseCommonInfoType,
    :schema_type => XSD::QName.new(NsHSSV900R008C02SPC200, "ResponseCommonInfoType"),
    :schema_element => [
      ["commandName", ["SOAP::SOAPString", XSD::QName.new(NsHSSV900R008C02SPC200, "CommandName")]],
      ["sessionID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "SessionID")]],
      ["requestID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "RequestID")]],
      ["mEID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "MEID")]],
      ["sourceMEID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "SourceMEID")]],
      ["serialID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "SerialID")]],
      ["timeStamp", ["SOAP::SOAPString", XSD::QName.new(NsHSSV900R008C02SPC200, "TimeStamp")]],
      ["svrType", ["SOAP::SOAPString", XSD::QName.new(NsHSSV900R008C02SPC200, "SvrType")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_OPType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_OPType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_OPTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_OPTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_OPTables"),
    :schema_element => [
      ["table1", ["LST_OPTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_OPTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_OPTable1"),
    :schema_element => [
      ["item", ["LST_OPStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_OPStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_OPStruct1"),
    :schema_element => [
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")], [0, 1]],
      ["oPVALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPVALUE")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_AMFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_AMFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_AMFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_AMFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_AMFTables"),
    :schema_element => [
      ["table1", ["LST_AMFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_AMFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_AMFTable1"),
    :schema_element => [
      ["item", ["LST_AMFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_AMFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_AMFStruct1"),
    :schema_element => [
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")], [0, 1]],
      ["aMFVALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFVALUE")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_K4Type,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_K4Type"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_K4Tables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_K4Tables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_K4Tables"),
    :schema_element => [
      ["table1", ["LST_K4Table1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_K4Table1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_K4Table1"),
    :schema_element => [
      ["item", ["LST_K4Struct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_K4Struct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_K4Struct1"),
    :schema_element => [
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")], [0, 1]],
      ["k4VALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4VALUE")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_KIType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_KIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_KITables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_KITables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_KITables"),
    :schema_element => [
      ["table1", ["LST_KITable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_KITable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_KITable1"),
    :schema_element => [
      ["item", ["LST_KIStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_KIStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_KIStruct1"),
    :schema_element => [
      ["k", [nil, XSD::QName.new(NsV900R008C02SPC200, "K")]],
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")]],
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")]],
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")]],
      ["oPC", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPC")]],
      ["oPCK4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPCK4SNO")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SUBType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SUBType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_SUBTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SUBTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SUBTables"),
    :schema_element => [
      ["table1", ["LST_SUBTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SUBTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SUBTable1"),
    :schema_element => [
      ["item", ["LST_SUBStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SUBStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SUBStruct1"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")], [0, 1]],
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["sHARED", [nil, XSD::QName.new(NsV900R008C02SPC200, "SHARED")], [0, 1]],
      ["iRSID", [nil, XSD::QName.new(NsV900R008C02SPC200, "IRSID")], [0, 1]],
      ["aLIASID", [nil, XSD::QName.new(NsV900R008C02SPC200, "ALIASID")], [0, 1]],
      ["dEFIMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFIMPU")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CHARGIDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CHARGIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_CHARGIDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CHARGIDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CHARGIDTables"),
    :schema_element => [
      ["table1", ["LST_CHARGIDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CHARGIDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CHARGIDTable1"),
    :schema_element => [
      ["item", ["LST_CHARGIDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CHARGIDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CHARGIDStruct1"),
    :schema_element => [
      ["cHARGTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "CHARGTPLID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_BARType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_BARType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_BARTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_BARTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_BARTables"),
    :schema_element => [
      ["table1", ["LST_BARTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_BARTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_BARTable1"),
    :schema_element => [
      ["item", ["LST_BARStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_BARStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_BARStruct1"),
    :schema_element => [
      ["bAR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BAR")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_REGAUTHType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_REGAUTHType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_REGAUTHTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_REGAUTHTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_REGAUTHTables"),
    :schema_element => [
      ["table1", ["LST_REGAUTHTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_REGAUTHTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_REGAUTHTable1"),
    :schema_element => [
      ["item", ["LST_REGAUTHStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_REGAUTHStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_REGAUTHStruct1"),
    :schema_element => [
      ["rEGAUTH", [nil, XSD::QName.new(NsV900R008C02SPC200, "REGAUTH")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_VNTPLIDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_VNTPLIDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_VNTPLIDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLIDTables"),
    :schema_element => [
      ["table1", ["LST_VNTPLIDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_VNTPLIDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLIDTable1"),
    :schema_element => [
      ["item", ["LST_VNTPLIDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_VNTPLIDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLIDStruct1"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_MEDIAIDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_MEDIAIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_MEDIAIDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_MEDIAIDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_MEDIAIDTables"),
    :schema_element => [
      ["table1", ["LST_MEDIAIDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_MEDIAIDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_MEDIAIDTable1"),
    :schema_element => [
      ["item", ["LST_MEDIAIDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_MEDIAIDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_MEDIAIDStruct1"),
    :schema_element => [
      ["mEDIAID", [nil, XSD::QName.new(NsV900R008C02SPC200, "MEDIAID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_MOCAPType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_MOCAPType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_MOCAPTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_MOCAPTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_MOCAPTables"),
    :schema_element => [
      ["table1", ["LST_MOCAPTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_MOCAPTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_MOCAPTable1"),
    :schema_element => [
      ["item", ["LST_MOCAPStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_MOCAPStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_MOCAPStruct1"),
    :schema_element => [
      ["mCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "MCAP")], [0, 1]],
      ["oCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "OCAP")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_EIAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_EIAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_EIATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_EIATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_EIATables"),
    :schema_element => [
      ["table1", ["LST_EIATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_EIATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_EIATable1"),
    :schema_element => [
      ["item", ["LST_EIAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_EIAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_EIAStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]],
      ["iPV4ADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "IPV4ADDR")]],
      ["iPV6ADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "IPV6ADDR")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_EAAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_EAAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_EAATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_EAATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_EAATables"),
    :schema_element => [
      ["table1", ["LST_EAATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_EAATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_EAATable1"),
    :schema_element => [
      ["item", ["LST_EAAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_EAAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_EAAStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ASType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_ASTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ASTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASTables"),
    :schema_element => [
      ["table1", ["LST_ASTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ASTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASTable1"),
    :schema_element => [
      ["item", ["LST_ASStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ASStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASStruct1"),
    :schema_element => [
      ["aS", [nil, XSD::QName.new(NsV900R008C02SPC200, "AS")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_VNCFLAGType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNCFLAGType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_VNCFLAGTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_VNCFLAGTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNCFLAGTables"),
    :schema_element => [
      ["table1", ["LST_VNCFLAGTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_VNCFLAGTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNCFLAGTable1"),
    :schema_element => [
      ["item", ["LST_VNCFLAGStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_VNCFLAGStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNCFLAGStruct1"),
    :schema_element => [
      ["vNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNCFLAG")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_IFCType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_IFCType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_IFCTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_IFCTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_IFCTables"),
    :schema_element => [
      ["table1", ["LST_IFCTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_IFCTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_IFCTable1"),
    :schema_element => [
      ["item", ["LST_IFCStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_IFCStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_IFCStruct1"),
    :schema_element => [
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")], [0, 1]],
      ["pARTIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "PARTIND")], [0, 1]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")], [0, 1]],
      ["dEFHND", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFHND")], [0, 1]],
      ["sERVINFO", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVINFO")], [0, 1]],
      ["tRIGPT", [nil, XSD::QName.new(NsV900R008C02SPC200, "TRIGPT")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CAPSCSCFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CAPSCSCFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_CAPSCSCFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CAPSCSCFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CAPSCSCFTables"),
    :schema_element => [
      ["table1", ["LST_CAPSCSCFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CAPSCSCFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CAPSCSCFTable1"),
    :schema_element => [
      ["item", ["LST_CAPSCSCFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CAPSCSCFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CAPSCSCFStruct1"),
    :schema_element => [
      ["sCSCF", [nil, XSD::QName.new(NsV900R008C02SPC200, "SCSCF")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SPSHAREType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SPSHAREType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_SPSHARETables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SPSHARETables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SPSHARETables"),
    :schema_element => [
      ["table1", ["LST_SPSHARETable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SPSHARETable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SPSHARETable1"),
    :schema_element => [
      ["item", ["LST_SPSHAREStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SPSHAREStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SPSHAREStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_DYNDATAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_DYNDATAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_DYNDATATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_DYNDATATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_DYNDATATables"),
    :schema_element => [
      ["table1", ["LST_DYNDATATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_DYNDATATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_DYNDATATable1"),
    :schema_element => [
      ["item", ["LST_DYNDATAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_DYNDATAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_DYNDATAStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["iMSUSERST", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSUSERST")], [0, 1]],
      ["pENDINGFLG", [nil, XSD::QName.new(NsV900R008C02SPC200, "PENDINGFLG")], [0, 1]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ASSUBDATAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSUBDATAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_ASSUBDATATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ASSUBDATATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSUBDATATables"),
    :schema_element => [
      ["table1", ["LST_ASSUBDATATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ASSUBDATATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSUBDATATable1"),
    :schema_element => [
      ["item", ["LST_ASSUBDATAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ASSUBDATAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSUBDATAStruct1"),
    :schema_element => [
      ["sUBASID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBASID")], [0, 1]],
      ["dATATYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "DATATYPE")], [0, 1]],
      ["aSNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "ASNAME")], [0, 1]],
      ["sRVIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "SRVIND")], [0, 1]],
      ["aLIASID", [nil, XSD::QName.new(NsV900R008C02SPC200, "ALIASID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PSIType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_PSIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_PSITables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PSITables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_PSITables"),
    :schema_element => [
      ["table1", ["LST_PSITable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PSITable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_PSITable1"),
    :schema_element => [
      ["item", ["LST_PSIStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PSIStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_PSIStruct1"),
    :schema_element => [
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["iRSID", [nil, XSD::QName.new(NsV900R008C02SPC200, "IRSID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HDAINFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HDAINFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HDAINFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HDAINFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HDAINFTables"),
    :schema_element => [
      ["table1", ["LST_HDAINFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HDAINFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HDAINFTable1"),
    :schema_element => [
      ["item", ["LST_HDAINFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HDAINFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HDAINFStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["hUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "HUSERNAME")], [0, 1]],
      ["pWD", [nil, XSD::QName.new(NsV900R008C02SPC200, "PWD")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_IMPUTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_IMPUTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_IMPUTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_IMPUTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_IMPUTPLTables"),
    :schema_element => [
      ["table1", ["LST_IMPUTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_IMPUTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_IMPUTPLTable1"),
    :schema_element => [
      ["item", ["LST_IMPUTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_IMPUTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_IMPUTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["vNTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNTPLID")]],
      ["nATPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATPLID")]],
      ["bAR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BAR")]],
      ["rEGAUTH", [nil, XSD::QName.new(NsV900R008C02SPC200, "REGAUTH")]],
      ["vNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNCFLAG")]],
      ["nNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "NNCFLAG")]],
      ["sERPRVID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERPRVID")]],
      ["lRI", [nil, XSD::QName.new(NsV900R008C02SPC200, "LRI")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PUSITPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_PUSITPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_PUSITPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PUSITPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_PUSITPLTables"),
    :schema_element => [
      ["table1", ["LST_PUSITPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PUSITPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_PUSITPLTable1"),
    :schema_element => [
      ["item", ["LST_PUSITPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PUSITPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_PUSITPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["aS", [nil, XSD::QName.new(NsV900R008C02SPC200, "AS")]],
      ["bAR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BAR")]],
      ["aCTSTATE", [nil, XSD::QName.new(NsV900R008C02SPC200, "ACTSTATE")]],
      ["sERPRVID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERPRVID")]],
      ["lRI", [nil, XSD::QName.new(NsV900R008C02SPC200, "LRI")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_IFCTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_IFCTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_IFCTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_IFCTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_IFCTPLTables"),
    :schema_element => [
      ["table1", ["LST_IFCTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_IFCTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_IFCTPLTable1"),
    :schema_element => [
      ["item", ["LST_IFCTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_IFCTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_IFCTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")]],
      ["pARTIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "PARTIND")]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")]],
      ["dEFHND", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFHND")]],
      ["sERVINFO", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVINFO")]],
      ["tRIGPT", [nil, XSD::QName.new(NsV900R008C02SPC200, "TRIGPT")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SPTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SPTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_SPTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SPTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SPTPLTables"),
    :schema_element => [
      ["table1", ["LST_SPTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SPTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SPTPLTable1"),
    :schema_element => [
      ["item", ["LST_SPTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SPTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SPTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["mEDIAID", [nil, XSD::QName.new(NsV900R008C02SPC200, "MEDIAID")]],
      ["iFCLIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "IFCLIST")]],
      ["sIFCLIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCLIST")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_AKATPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_AKATPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_AKATPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_AKATPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_AKATPLTables"),
    :schema_element => [
      ["table1", ["LST_AKATPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_AKATPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_AKATPLTable1"),
    :schema_element => [
      ["item", ["LST_AKATPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_AKATPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_AKATPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")]],
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")]],
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")]],
      ["oPC", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPC")]],
      ["oPCK4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPCK4SNO")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CAPTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CAPTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_CAPTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CAPTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CAPTPLTables"),
    :schema_element => [
      ["table1", ["LST_CAPTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CAPTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CAPTPLTable1"),
    :schema_element => [
      ["item", ["LST_CAPTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CAPTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CAPTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["mCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "MCAP")]],
      ["oCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "OCAP")]],
      ["sCSCFLIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "SCSCFLIST")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_TPLINFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_TPLINFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_TPLINFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_TPLINFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_TPLINFTables"),
    :schema_element => [
      ["table1", ["LST_TPLINFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_TPLINFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_TPLINFTable1"),
    :schema_element => [
      ["item", ["LST_TPLINFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_TPLINFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_TPLINFStruct1"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PSIDYNDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_PSIDYNDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_PSIDYNDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PSIDYNDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_PSIDYNDTables"),
    :schema_element => [
      ["table1", ["LST_PSIDYNDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PSIDYNDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_PSIDYNDTable1"),
    :schema_element => [
      ["item", ["LST_PSIDYNDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_PSIDYNDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_PSIDYNDStruct1"),
    :schema_element => [
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["aCTSTATE", [nil, XSD::QName.new(NsV900R008C02SPC200, "ACTSTATE")], [0, 1]],
      ["rEGSTATE", [nil, XSD::QName.new(NsV900R008C02SPC200, "REGSTATE")], [0, 1]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_AUTHINFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_AUTHINFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_AUTHINFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_AUTHINFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_AUTHINFTables"),
    :schema_element => [
      ["table1", ["LST_AUTHINFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_AUTHINFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_AUTHINFTable1"),
    :schema_element => [
      ["item", ["LST_AUTHINFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_AUTHINFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_AUTHINFStruct1"),
    :schema_element => [
      ["aKAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "AKAFLAG")]],
      ["eAAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "EAAFLAG")]],
      ["sDAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "SDAFLAG")]],
      ["tAAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "TAAFLAG")]],
      ["eIAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "EIAFLAG")]],
      ["hDAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "HDAFLAG")]],
      ["nBAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "NBAFLAG")]],
      ["cAAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "CAAFLAG")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NATPLIDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_NATPLIDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NATPLIDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLIDTables"),
    :schema_element => [
      ["table1", ["LST_NATPLIDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NATPLIDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLIDTable1"),
    :schema_element => [
      ["item", ["LST_NATPLIDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NATPLIDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLIDStruct1"),
    :schema_element => [
      ["nATPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATPLID")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NNCFLAGType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NNCFLAGType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_NNCFLAGTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NNCFLAGTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NNCFLAGTables"),
    :schema_element => [
      ["table1", ["LST_NNCFLAGTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NNCFLAGTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NNCFLAGTable1"),
    :schema_element => [
      ["item", ["LST_NNCFLAGStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NNCFLAGStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NNCFLAGStruct1"),
    :schema_element => [
      ["nNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "NNCFLAG")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NNRLIType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NNRLIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_NNRLITables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NNRLITables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NNRLITables"),
    :schema_element => [
      ["table1", ["LST_NNRLITable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NNRLITable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NNRLITable1"),
    :schema_element => [
      ["item", ["LST_NNRLIStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NNRLIStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NNRLIStruct1"),
    :schema_element => [
      ["rLINDEX", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLINDEX")], [0, 1]],
      ["rLI", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLI")], [0, 1]],
      ["rLT", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLT")], [0, 1]],
      ["dEFRLI", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFRLI")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ASSPIDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSPIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_ASSPIDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ASSPIDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSPIDTables"),
    :schema_element => [
      ["table1", ["LST_ASSPIDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ASSPIDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSPIDTable1"),
    :schema_element => [
      ["item", ["LST_ASSPIDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ASSPIDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSPIDStruct1"),
    :schema_element => [
      ["aSSPID", [nil, XSD::QName.new(NsV900R008C02SPC200, "ASSPID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SRVINDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SRVINDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_SRVINDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SRVINDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SRVINDTables"),
    :schema_element => [
      ["table1", ["LST_SRVINDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SRVINDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SRVINDTable1"),
    :schema_element => [
      ["item", ["LST_SRVINDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SRVINDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SRVINDStruct1"),
    :schema_element => [
      ["sRVIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "SRVIND")], [0, 1]],
      ["rEPTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "REPTYPE")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_REPDATAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_REPDATAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_REPDATATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_REPDATATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_REPDATATables"),
    :schema_element => [
      ["table1", ["LST_REPDATATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_REPDATATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_REPDATATable1"),
    :schema_element => [
      ["item", ["LST_REPDATAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_REPDATAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_REPDATAStruct1"),
    :schema_element => [
      ["rEPDATA", [nil, XSD::QName.new(NsV900R008C02SPC200, "REPDATA")]],
      ["rEPTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "REPTYPE")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_DALIType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_DALIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_DALITables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_DALITables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_DALITables"),
    :schema_element => [
      ["table1", ["LST_DALITable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_DALITable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_DALITable1"),
    :schema_element => [
      ["item", ["LST_DALIStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_DALIStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_DALIStruct1"),
    :schema_element => [
      ["iMSALI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSALI")]],
      ["nASSALI", [nil, XSD::QName.new(NsV900R008C02SPC200, "NASSALI")]],
      ["iPV4ADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "IPV4ADDR")]],
      ["iPV6ADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "IPV6ADDR")]],
      ["sIPADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIPADDR")]],
      ["nASSSTATUS", [nil, XSD::QName.new(NsV900R008C02SPC200, "NASSSTATUS")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_MSIDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_MSIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_MSIDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_MSIDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_MSIDTables"),
    :schema_element => [
      ["table1", ["LST_MSIDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_MSIDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_MSIDTable1"),
    :schema_element => [
      ["item", ["LST_MSIDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_MSIDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_MSIDStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")], [0, 1]],
      ["iSDN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ISDN")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ASSOCType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSOCType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_ASSOCTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ASSOCTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSOCTables"),
    :schema_element => [
      ["table1", ["LST_ASSOCTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ASSOCTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSOCTable1"),
    :schema_element => [
      ["item", ["LST_ASSOCStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ASSOCStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSOCStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NBAINFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NBAINFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_NBAINFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NBAINFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NBAINFTables"),
    :schema_element => [
      ["table1", ["LST_NBAINFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NBAINFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NBAINFTable1"),
    :schema_element => [
      ["item", ["LST_NBAINFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NBAINFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NBAINFStruct1"),
    :schema_element => [
      ["lINEIDIDX", [nil, XSD::QName.new(NsV900R008C02SPC200, "LINEIDIDX")]],
      ["lINEID", [nil, XSD::QName.new(NsV900R008C02SPC200, "LINEID")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CHGTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CHGTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_CHGTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CHGTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CHGTPLTables"),
    :schema_element => [
      ["table1", ["LST_CHGTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CHGTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CHGTPLTable1"),
    :schema_element => [
      ["item", ["LST_CHGTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CHGTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CHGTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["pECF", [nil, XSD::QName.new(NsV900R008C02SPC200, "PECF")]],
      ["sECF", [nil, XSD::QName.new(NsV900R008C02SPC200, "SECF")]],
      ["pCCF", [nil, XSD::QName.new(NsV900R008C02SPC200, "PCCF")]],
      ["sCCF", [nil, XSD::QName.new(NsV900R008C02SPC200, "SCCF")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_VNTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_VNTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_VNTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLTables"),
    :schema_element => [
      ["table1", ["LST_VNTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_VNTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLTable1"),
    :schema_element => [
      ["item", ["LST_VNTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_VNTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["mATCHTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "MATCHTYPE")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_VNTPLADDRType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLADDRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_VNTPLADDRTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_VNTPLADDRTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLADDRTables"),
    :schema_element => [
      ["table1", ["LST_VNTPLADDRTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_VNTPLADDRTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLADDRTable1"),
    :schema_element => [
      ["item", ["LST_VNTPLADDRStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_VNTPLADDRStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLADDRStruct1"),
    :schema_element => [
      ["vN", [nil, XSD::QName.new(NsV900R008C02SPC200, "VN")]],
      ["vNTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNTYPE")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NATPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_NATPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NATPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLTables"),
    :schema_element => [
      ["table1", ["LST_NATPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NATPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLTable1"),
    :schema_element => [
      ["item", ["LST_NATPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NATPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["mATCHTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "MATCHTYPE")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NATPLADDRType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLADDRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_NATPLADDRTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NATPLADDRTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLADDRTables"),
    :schema_element => [
      ["table1", ["LST_NATPLADDRTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NATPLADDRTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLADDRTable1"),
    :schema_element => [
      ["item", ["LST_NATPLADDRStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_NATPLADDRStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLADDRStruct1"),
    :schema_element => [
      ["nA", [nil, XSD::QName.new(NsV900R008C02SPC200, "NA")]],
      ["nATYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATYPE")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_OCSITPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_OCSITPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_OCSITPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_OCSITPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_OCSITPLTables"),
    :schema_element => [
      ["table1", ["LST_OCSITPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_OCSITPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_OCSITPLTable1"),
    :schema_element => [
      ["item", ["LST_OCSITPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_OCSITPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_OCSITPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["gSMSCFADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "GSMSCFADDR")]],
      ["sK", [nil, XSD::QName.new(NsV900R008C02SPC200, "SK")]],
      ["dEFCALL", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFCALL")]],
      ["iMSSF", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSSF")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_TCSITPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_TCSITPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_TCSITPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_TCSITPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_TCSITPLTables"),
    :schema_element => [
      ["table1", ["LST_TCSITPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_TCSITPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_TCSITPLTable1"),
    :schema_element => [
      ["item", ["LST_TCSITPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_TCSITPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_TCSITPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["gSMSCFADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "GSMSCFADDR")]],
      ["sK", [nil, XSD::QName.new(NsV900R008C02SPC200, "SK")]],
      ["dEFCALL", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFCALL")]],
      ["iMSSF", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSSF")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CSIType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CSIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_CSITables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CSITables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CSITables"),
    :schema_element => [
      ["table1", ["LST_CSITable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CSITable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CSITable1"),
    :schema_element => [
      ["item", ["LST_CSIStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_CSIStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CSIStruct1"),
    :schema_element => [
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")], [0, 1]],
      ["iSDN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ISDN")], [0, 1]],
      ["cSITYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "CSITYPE")], [0, 1]],
      ["cSITPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "CSITPLID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SERPRVType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SERPRVType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_SERPRVTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SERPRVTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SERPRVTables"),
    :schema_element => [
      ["table1", ["LST_SERPRVTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SERPRVTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SERPRVTable1"),
    :schema_element => [
      ["item", ["LST_SERPRVStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SERPRVStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SERPRVStruct1"),
    :schema_element => [
      ["sERPRVID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERPRVID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_TAAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_TAAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_TAATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_TAATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_TAATables"),
    :schema_element => [
      ["table1", ["LST_TAATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_TAATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_TAATable1"),
    :schema_element => [
      ["item", ["LST_TAAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_TAAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_TAAStruct1"),
    :schema_element => [
      ["tAAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "TAAFLAG")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_USRPRIORType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_USRPRIORType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_USRPRIORTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_USRPRIORTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_USRPRIORTables"),
    :schema_element => [
      ["table1", ["LST_USRPRIORTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_USRPRIORTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_USRPRIORTable1"),
    :schema_element => [
      ["item", ["LST_USRPRIORStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_USRPRIORStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_USRPRIORStruct1"),
    :schema_element => [
      ["uSRPRIOR", [nil, XSD::QName.new(NsV900R008C02SPC200, "USRPRIOR")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SDAINFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SDAINFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_SDAINFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SDAINFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SDAINFTables"),
    :schema_element => [
      ["table1", ["LST_SDAINFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SDAINFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SDAINFTable1"),
    :schema_element => [
      ["item", ["LST_SDAINFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SDAINFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SDAINFStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["hUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "HUSERNAME")], [0, 1]],
      ["pWD", [nil, XSD::QName.new(NsV900R008C02SPC200, "PWD")], [0, 1]],
      ["rEALM", [nil, XSD::QName.new(NsV900R008C02SPC200, "REALM")], [0, 1]],
      ["hA1", [nil, XSD::QName.new(NsV900R008C02SPC200, "HA1")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_LRIType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_LRIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_LRITables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_LRITables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_LRITables"),
    :schema_element => [
      ["table1", ["LST_LRITable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_LRITable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_LRITable1"),
    :schema_element => [
      ["item", ["LST_LRIStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_LRIStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_LRIStruct1"),
    :schema_element => [
      ["lRI", [nil, XSD::QName.new(NsV900R008C02SPC200, "LRI")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SIFCType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_SIFCTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SIFCTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCTables"),
    :schema_element => [
      ["table1", ["LST_SIFCTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SIFCTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCTable1"),
    :schema_element => [
      ["item", ["LST_SIFCStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SIFCStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCStruct1"),
    :schema_element => [
      ["sIFCID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCID")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SIFCTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_SIFCTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SIFCTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCTPLTables"),
    :schema_element => [
      ["table1", ["LST_SIFCTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SIFCTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCTPLTable1"),
    :schema_element => [
      ["item", ["LST_SIFCTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SIFCTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SIFCINFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCINFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_SIFCINFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SIFCINFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCINFTables"),
    :schema_element => [
      ["table1", ["LST_SIFCINFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SIFCINFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCINFTable1"),
    :schema_element => [
      ["item", ["LST_SIFCINFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_SIFCINFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCINFStruct1"),
    :schema_element => [
      ["iFCNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "IFCNAME")]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")]],
      ["pARTIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "PARTIND")]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")]],
      ["dEFHND", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFHND")]],
      ["sERVINFO", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVINFO")]],
      ["tRIGPT", [nil, XSD::QName.new(NsV900R008C02SPC200, "TRIGPT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ESRNType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ESRNType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_ESRNTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ESRNTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ESRNTables"),
    :schema_element => [
      ["table1", ["LST_ESRNTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ESRNTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ESRNTable1"),
    :schema_element => [
      ["item", ["LST_ESRNStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ESRNStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ESRNStruct1"),
    :schema_element => [
      ["eSRN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ESRN")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ONEKEYType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ONEKEYType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_ONEKEYTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ONEKEYTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ONEKEYTables"),
    :schema_element => [
      ["table1", ["LST_ONEKEYTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ONEKEYTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ONEKEYTable1"),
    :schema_element => [
      ["item", ["LST_ONEKEYStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_ONEKEYStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ONEKEYStruct1"),
    :schema_element => [
      ["wUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "WUSERNAME")]],
      ["hTOKEN", [nil, XSD::QName.new(NsV900R008C02SPC200, "HTOKEN")]],
      ["aP", [nil, XSD::QName.new(NsV900R008C02SPC200, "AP")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HOPType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HOPType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HOPTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HOPTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HOPTables"),
    :schema_element => [
      ["table1", ["LST_HOPTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HOPTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HOPTable1"),
    :schema_element => [
      ["item", ["LST_HOPStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HOPStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HOPStruct1"),
    :schema_element => [
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")], [0, 1]],
      ["oPVALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPVALUE")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HAMFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HAMFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HAMFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HAMFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HAMFTables"),
    :schema_element => [
      ["table1", ["LST_HAMFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HAMFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HAMFTable1"),
    :schema_element => [
      ["item", ["LST_HAMFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HAMFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HAMFStruct1"),
    :schema_element => [
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")], [0, 1]],
      ["aMFVALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFVALUE")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HK4Type,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HK4Type"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HK4Tables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HK4Tables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HK4Tables"),
    :schema_element => [
      ["table1", ["LST_HK4Table1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HK4Table1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HK4Table1"),
    :schema_element => [
      ["item", ["LST_HK4Struct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HK4Struct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HK4Struct1"),
    :schema_element => [
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")], [0, 1]],
      ["k4VALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4VALUE")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HKIType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HKIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HKITables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HKITables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HKITables"),
    :schema_element => [
      ["table1", ["LST_HKITable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HKITable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HKITable1"),
    :schema_element => [
      ["item", ["LST_HKIStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HKIStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HKIStruct1"),
    :schema_element => [
      ["k", [nil, XSD::QName.new(NsV900R008C02SPC200, "K")]],
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")]],
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")]],
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")]],
      ["oPC", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPC")]],
      ["oPCK4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPCK4SNO")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSUBType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSUBType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HSUBTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSUBTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSUBTables"),
    :schema_element => [
      ["table1", ["LST_HSUBTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSUBTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSUBTable1"),
    :schema_element => [
      ["item", ["LST_HSUBStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSUBStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSUBStruct1"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")], [0, 1]],
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["sHARED", [nil, XSD::QName.new(NsV900R008C02SPC200, "SHARED")], [0, 1]],
      ["iRSID", [nil, XSD::QName.new(NsV900R008C02SPC200, "IRSID")], [0, 1]],
      ["aLIASID", [nil, XSD::QName.new(NsV900R008C02SPC200, "ALIASID")], [0, 1]],
      ["dEFIMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFIMPU")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HCHARGIDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCHARGIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HCHARGIDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HCHARGIDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCHARGIDTables"),
    :schema_element => [
      ["table1", ["LST_HCHARGIDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HCHARGIDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCHARGIDTable1"),
    :schema_element => [
      ["item", ["LST_HCHARGIDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HCHARGIDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCHARGIDStruct1"),
    :schema_element => [
      ["cHARGTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "CHARGTPLID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HBARType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HBARType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HBARTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HBARTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HBARTables"),
    :schema_element => [
      ["table1", ["LST_HBARTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HBARTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HBARTable1"),
    :schema_element => [
      ["item", ["LST_HBARStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HBARStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HBARStruct1"),
    :schema_element => [
      ["bAR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BAR")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HREGAUTHType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HREGAUTHType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HREGAUTHTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HREGAUTHTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HREGAUTHTables"),
    :schema_element => [
      ["table1", ["LST_HREGAUTHTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HREGAUTHTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HREGAUTHTable1"),
    :schema_element => [
      ["item", ["LST_HREGAUTHStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HREGAUTHStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HREGAUTHStruct1"),
    :schema_element => [
      ["rEGAUTH", [nil, XSD::QName.new(NsV900R008C02SPC200, "REGAUTH")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HVNTPLIDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HVNTPLIDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HVNTPLIDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLIDTables"),
    :schema_element => [
      ["table1", ["LST_HVNTPLIDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HVNTPLIDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLIDTable1"),
    :schema_element => [
      ["item", ["LST_HVNTPLIDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HVNTPLIDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLIDStruct1"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HMEDIAIDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HMEDIAIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HMEDIAIDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HMEDIAIDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HMEDIAIDTables"),
    :schema_element => [
      ["table1", ["LST_HMEDIAIDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HMEDIAIDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HMEDIAIDTable1"),
    :schema_element => [
      ["item", ["LST_HMEDIAIDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HMEDIAIDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HMEDIAIDStruct1"),
    :schema_element => [
      ["mEDIAID", [nil, XSD::QName.new(NsV900R008C02SPC200, "MEDIAID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HMOCAPType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HMOCAPType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HMOCAPTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HMOCAPTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HMOCAPTables"),
    :schema_element => [
      ["table1", ["LST_HMOCAPTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HMOCAPTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HMOCAPTable1"),
    :schema_element => [
      ["item", ["LST_HMOCAPStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HMOCAPStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HMOCAPStruct1"),
    :schema_element => [
      ["mCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "MCAP")], [0, 1]],
      ["oCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "OCAP")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HEIAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HEIAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HEIATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HEIATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HEIATables"),
    :schema_element => [
      ["table1", ["LST_HEIATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HEIATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HEIATable1"),
    :schema_element => [
      ["item", ["LST_HEIAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HEIAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HEIAStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]],
      ["iPV4ADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "IPV4ADDR")]],
      ["iPV6ADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "IPV6ADDR")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HEAAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HEAAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HEAATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HEAATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HEAATables"),
    :schema_element => [
      ["table1", ["LST_HEAATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HEAATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HEAATable1"),
    :schema_element => [
      ["item", ["LST_HEAAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HEAAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HEAAStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HASType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HASTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HASTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASTables"),
    :schema_element => [
      ["table1", ["LST_HASTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HASTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASTable1"),
    :schema_element => [
      ["item", ["LST_HASStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HASStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASStruct1"),
    :schema_element => [
      ["aS", [nil, XSD::QName.new(NsV900R008C02SPC200, "AS")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HVNCFLAGType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNCFLAGType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HVNCFLAGTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HVNCFLAGTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNCFLAGTables"),
    :schema_element => [
      ["table1", ["LST_HVNCFLAGTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HVNCFLAGTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNCFLAGTable1"),
    :schema_element => [
      ["item", ["LST_HVNCFLAGStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HVNCFLAGStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNCFLAGStruct1"),
    :schema_element => [
      ["vNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNCFLAG")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HIFCType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HIFCType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HIFCTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HIFCTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HIFCTables"),
    :schema_element => [
      ["table1", ["LST_HIFCTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HIFCTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HIFCTable1"),
    :schema_element => [
      ["item", ["LST_HIFCStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HIFCStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HIFCStruct1"),
    :schema_element => [
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")], [0, 1]],
      ["pARTIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "PARTIND")], [0, 1]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")], [0, 1]],
      ["dEFHND", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFHND")], [0, 1]],
      ["sERVINFO", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVINFO")], [0, 1]],
      ["tRIGPT", [nil, XSD::QName.new(NsV900R008C02SPC200, "TRIGPT")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HCAPSCSCFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAPSCSCFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HCAPSCSCFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HCAPSCSCFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAPSCSCFTables"),
    :schema_element => [
      ["table1", ["LST_HCAPSCSCFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HCAPSCSCFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAPSCSCFTable1"),
    :schema_element => [
      ["item", ["LST_HCAPSCSCFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HCAPSCSCFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAPSCSCFStruct1"),
    :schema_element => [
      ["sCSCF", [nil, XSD::QName.new(NsV900R008C02SPC200, "SCSCF")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSPSHAREType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSPSHAREType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HSPSHARETables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSPSHARETables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSPSHARETables"),
    :schema_element => [
      ["table1", ["LST_HSPSHARETable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSPSHARETable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSPSHARETable1"),
    :schema_element => [
      ["item", ["LST_HSPSHAREStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSPSHAREStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSPSHAREStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HDYNDATAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HDYNDATAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HDYNDATATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HDYNDATATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HDYNDATATables"),
    :schema_element => [
      ["table1", ["LST_HDYNDATATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HDYNDATATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HDYNDATATable1"),
    :schema_element => [
      ["item", ["LST_HDYNDATAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HDYNDATAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HDYNDATAStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["iMSUSERST", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSUSERST")], [0, 1]],
      ["pENDINGFLG", [nil, XSD::QName.new(NsV900R008C02SPC200, "PENDINGFLG")], [0, 1]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HASSUBDATAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSUBDATAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HASSUBDATATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HASSUBDATATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSUBDATATables"),
    :schema_element => [
      ["table1", ["LST_HASSUBDATATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HASSUBDATATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSUBDATATable1"),
    :schema_element => [
      ["item", ["LST_HASSUBDATAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HASSUBDATAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSUBDATAStruct1"),
    :schema_element => [
      ["sUBASID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBASID")], [0, 1]],
      ["dATATYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "DATATYPE")], [0, 1]],
      ["aSNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "ASNAME")], [0, 1]],
      ["sRVIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "SRVIND")], [0, 1]],
      ["aLIASID", [nil, XSD::QName.new(NsV900R008C02SPC200, "ALIASID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HPSIType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPSIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HPSITables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HPSITables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPSITables"),
    :schema_element => [
      ["table1", ["LST_HPSITable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HPSITable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPSITable1"),
    :schema_element => [
      ["item", ["LST_HPSIStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HPSIStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPSIStruct1"),
    :schema_element => [
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["iRSID", [nil, XSD::QName.new(NsV900R008C02SPC200, "IRSID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HHDAINFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HHDAINFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HHDAINFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HHDAINFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HHDAINFTables"),
    :schema_element => [
      ["table1", ["LST_HHDAINFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HHDAINFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HHDAINFTable1"),
    :schema_element => [
      ["item", ["LST_HHDAINFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HHDAINFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HHDAINFStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["hUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "HUSERNAME")], [0, 1]],
      ["pWD", [nil, XSD::QName.new(NsV900R008C02SPC200, "PWD")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HIMPUTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HIMPUTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HIMPUTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HIMPUTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HIMPUTPLTables"),
    :schema_element => [
      ["table1", ["LST_HIMPUTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HIMPUTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HIMPUTPLTable1"),
    :schema_element => [
      ["item", ["LST_HIMPUTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HIMPUTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HIMPUTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["vNTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNTPLID")]],
      ["nATPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATPLID")]],
      ["bAR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BAR")]],
      ["rEGAUTH", [nil, XSD::QName.new(NsV900R008C02SPC200, "REGAUTH")]],
      ["vNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNCFLAG")]],
      ["nNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "NNCFLAG")]],
      ["sERPRVID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERPRVID")]],
      ["lRI", [nil, XSD::QName.new(NsV900R008C02SPC200, "LRI")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HPUSITPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPUSITPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HPUSITPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HPUSITPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPUSITPLTables"),
    :schema_element => [
      ["table1", ["LST_HPUSITPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HPUSITPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPUSITPLTable1"),
    :schema_element => [
      ["item", ["LST_HPUSITPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HPUSITPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPUSITPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["aS", [nil, XSD::QName.new(NsV900R008C02SPC200, "AS")]],
      ["bAR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BAR")]],
      ["aCTSTATE", [nil, XSD::QName.new(NsV900R008C02SPC200, "ACTSTATE")]],
      ["sERPRVID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERPRVID")]],
      ["lRI", [nil, XSD::QName.new(NsV900R008C02SPC200, "LRI")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HIFCTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HIFCTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HIFCTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HIFCTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HIFCTPLTables"),
    :schema_element => [
      ["table1", ["LST_HIFCTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HIFCTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HIFCTPLTable1"),
    :schema_element => [
      ["item", ["LST_HIFCTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HIFCTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HIFCTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")]],
      ["pARTIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "PARTIND")]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")]],
      ["dEFHND", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFHND")]],
      ["sERVINFO", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVINFO")]],
      ["tRIGPT", [nil, XSD::QName.new(NsV900R008C02SPC200, "TRIGPT")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSPTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSPTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HSPTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSPTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSPTPLTables"),
    :schema_element => [
      ["table1", ["LST_HSPTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSPTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSPTPLTable1"),
    :schema_element => [
      ["item", ["LST_HSPTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSPTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSPTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["mEDIAID", [nil, XSD::QName.new(NsV900R008C02SPC200, "MEDIAID")]],
      ["iFCLIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "IFCLIST")]],
      ["sIFCLIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCLIST")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HAKATPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HAKATPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HAKATPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HAKATPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HAKATPLTables"),
    :schema_element => [
      ["table1", ["LST_HAKATPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HAKATPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HAKATPLTable1"),
    :schema_element => [
      ["item", ["LST_HAKATPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HAKATPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HAKATPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")]],
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")]],
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")]],
      ["oPC", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPC")]],
      ["oPCK4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPCK4SNO")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HCAPTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAPTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HCAPTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HCAPTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAPTPLTables"),
    :schema_element => [
      ["table1", ["LST_HCAPTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HCAPTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAPTPLTable1"),
    :schema_element => [
      ["item", ["LST_HCAPTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HCAPTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAPTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["mCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "MCAP")]],
      ["oCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "OCAP")]],
      ["sCSCFLIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "SCSCFLIST")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HTPLINFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HTPLINFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HTPLINFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HTPLINFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HTPLINFTables"),
    :schema_element => [
      ["table1", ["LST_HTPLINFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HTPLINFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HTPLINFTable1"),
    :schema_element => [
      ["item", ["LST_HTPLINFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HTPLINFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HTPLINFStruct1"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HPSIDYNDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPSIDYNDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HPSIDYNDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HPSIDYNDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPSIDYNDTables"),
    :schema_element => [
      ["table1", ["LST_HPSIDYNDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HPSIDYNDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPSIDYNDTable1"),
    :schema_element => [
      ["item", ["LST_HPSIDYNDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HPSIDYNDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPSIDYNDStruct1"),
    :schema_element => [
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["aCTSTATE", [nil, XSD::QName.new(NsV900R008C02SPC200, "ACTSTATE")], [0, 1]],
      ["rEGSTATE", [nil, XSD::QName.new(NsV900R008C02SPC200, "REGSTATE")], [0, 1]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HAUTHINFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HAUTHINFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HAUTHINFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HAUTHINFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HAUTHINFTables"),
    :schema_element => [
      ["table1", ["LST_HAUTHINFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HAUTHINFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HAUTHINFTable1"),
    :schema_element => [
      ["item", ["LST_HAUTHINFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HAUTHINFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HAUTHINFStruct1"),
    :schema_element => [
      ["aKAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "AKAFLAG")]],
      ["eAAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "EAAFLAG")]],
      ["sDAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "SDAFLAG")]],
      ["tAAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "TAAFLAG")]],
      ["eIAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "EIAFLAG")]],
      ["hDAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "HDAFLAG")]],
      ["nBAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "NBAFLAG")]],
      ["cAAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "CAAFLAG")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HNATPLIDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HNATPLIDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HNATPLIDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLIDTables"),
    :schema_element => [
      ["table1", ["LST_HNATPLIDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HNATPLIDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLIDTable1"),
    :schema_element => [
      ["item", ["LST_HNATPLIDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HNATPLIDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLIDStruct1"),
    :schema_element => [
      ["nATPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATPLID")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HNNCFLAGType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNNCFLAGType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HNNCFLAGTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HNNCFLAGTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNNCFLAGTables"),
    :schema_element => [
      ["table1", ["LST_HNNCFLAGTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HNNCFLAGTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNNCFLAGTable1"),
    :schema_element => [
      ["item", ["LST_HNNCFLAGStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HNNCFLAGStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNNCFLAGStruct1"),
    :schema_element => [
      ["nNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "NNCFLAG")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HNNRLIType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNNRLIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HNNRLITables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HNNRLITables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNNRLITables"),
    :schema_element => [
      ["table1", ["LST_HNNRLITable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HNNRLITable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNNRLITable1"),
    :schema_element => [
      ["item", ["LST_HNNRLIStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HNNRLIStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNNRLIStruct1"),
    :schema_element => [
      ["rLINDEX", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLINDEX")], [0, 1]],
      ["rLI", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLI")], [0, 1]],
      ["rLT", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLT")], [0, 1]],
      ["dEFRLI", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFRLI")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HASSPIDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSPIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HASSPIDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HASSPIDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSPIDTables"),
    :schema_element => [
      ["table1", ["LST_HASSPIDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HASSPIDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSPIDTable1"),
    :schema_element => [
      ["item", ["LST_HASSPIDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HASSPIDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSPIDStruct1"),
    :schema_element => [
      ["aSSPID", [nil, XSD::QName.new(NsV900R008C02SPC200, "ASSPID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSRVINDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSRVINDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HSRVINDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSRVINDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSRVINDTables"),
    :schema_element => [
      ["table1", ["LST_HSRVINDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSRVINDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSRVINDTable1"),
    :schema_element => [
      ["item", ["LST_HSRVINDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSRVINDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSRVINDStruct1"),
    :schema_element => [
      ["sRVIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "SRVIND")], [0, 1]],
      ["rEPTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "REPTYPE")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HREPDATAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HREPDATAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HREPDATATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HREPDATATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HREPDATATables"),
    :schema_element => [
      ["table1", ["LST_HREPDATATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HREPDATATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HREPDATATable1"),
    :schema_element => [
      ["item", ["LST_HREPDATAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HREPDATAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HREPDATAStruct1"),
    :schema_element => [
      ["rEPDATA", [nil, XSD::QName.new(NsV900R008C02SPC200, "REPDATA")]],
      ["rEPTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "REPTYPE")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HDALIType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HDALIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HDALITables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HDALITables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HDALITables"),
    :schema_element => [
      ["table1", ["LST_HDALITable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HDALITable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HDALITable1"),
    :schema_element => [
      ["item", ["LST_HDALIStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HDALIStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HDALIStruct1"),
    :schema_element => [
      ["iMSALI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSALI")]],
      ["nASSALI", [nil, XSD::QName.new(NsV900R008C02SPC200, "NASSALI")]],
      ["iPV4ADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "IPV4ADDR")]],
      ["iPV6ADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "IPV6ADDR")]],
      ["sIPADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIPADDR")]],
      ["nASSSTATUS", [nil, XSD::QName.new(NsV900R008C02SPC200, "NASSSTATUS")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HMSIDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HMSIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HMSIDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HMSIDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HMSIDTables"),
    :schema_element => [
      ["table1", ["LST_HMSIDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HMSIDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HMSIDTable1"),
    :schema_element => [
      ["item", ["LST_HMSIDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HMSIDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HMSIDStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")], [0, 1]],
      ["iSDN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ISDN")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HASSOCType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSOCType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HASSOCTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HASSOCTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSOCTables"),
    :schema_element => [
      ["table1", ["LST_HASSOCTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HASSOCTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSOCTable1"),
    :schema_element => [
      ["item", ["LST_HASSOCStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HASSOCStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSOCStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HNBAINFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNBAINFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HNBAINFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HNBAINFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNBAINFTables"),
    :schema_element => [
      ["table1", ["LST_HNBAINFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HNBAINFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNBAINFTable1"),
    :schema_element => [
      ["item", ["LST_HNBAINFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HNBAINFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNBAINFStruct1"),
    :schema_element => [
      ["lINEIDIDX", [nil, XSD::QName.new(NsV900R008C02SPC200, "LINEIDIDX")]],
      ["lINEID", [nil, XSD::QName.new(NsV900R008C02SPC200, "LINEID")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HCHGTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCHGTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HCHGTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HCHGTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCHGTPLTables"),
    :schema_element => [
      ["table1", ["LST_HCHGTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HCHGTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCHGTPLTable1"),
    :schema_element => [
      ["item", ["LST_HCHGTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HCHGTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCHGTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["pECF", [nil, XSD::QName.new(NsV900R008C02SPC200, "PECF")]],
      ["sECF", [nil, XSD::QName.new(NsV900R008C02SPC200, "SECF")]],
      ["pCCF", [nil, XSD::QName.new(NsV900R008C02SPC200, "PCCF")]],
      ["sCCF", [nil, XSD::QName.new(NsV900R008C02SPC200, "SCCF")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HVNTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HVNTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HVNTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLTables"),
    :schema_element => [
      ["table1", ["LST_HVNTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HVNTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLTable1"),
    :schema_element => [
      ["item", ["LST_HVNTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HVNTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["mATCHTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "MATCHTYPE")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HVNTPLADDRType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLADDRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HVNTPLADDRTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HVNTPLADDRTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLADDRTables"),
    :schema_element => [
      ["table1", ["LST_HVNTPLADDRTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HVNTPLADDRTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLADDRTable1"),
    :schema_element => [
      ["item", ["LST_HVNTPLADDRStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HVNTPLADDRStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLADDRStruct1"),
    :schema_element => [
      ["vN", [nil, XSD::QName.new(NsV900R008C02SPC200, "VN")]],
      ["vNTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNTYPE")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HNATPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HNATPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HNATPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLTables"),
    :schema_element => [
      ["table1", ["LST_HNATPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HNATPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLTable1"),
    :schema_element => [
      ["item", ["LST_HNATPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HNATPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["mATCHTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "MATCHTYPE")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HNATPLADDRType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLADDRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HNATPLADDRTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HNATPLADDRTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLADDRTables"),
    :schema_element => [
      ["table1", ["LST_HNATPLADDRTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HNATPLADDRTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLADDRTable1"),
    :schema_element => [
      ["item", ["LST_HNATPLADDRStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HNATPLADDRStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLADDRStruct1"),
    :schema_element => [
      ["nA", [nil, XSD::QName.new(NsV900R008C02SPC200, "NA")]],
      ["nATYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATYPE")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HOCSITPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HOCSITPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HOCSITPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HOCSITPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HOCSITPLTables"),
    :schema_element => [
      ["table1", ["LST_HOCSITPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HOCSITPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HOCSITPLTable1"),
    :schema_element => [
      ["item", ["LST_HOCSITPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HOCSITPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HOCSITPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["gSMSCFADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "GSMSCFADDR")]],
      ["sK", [nil, XSD::QName.new(NsV900R008C02SPC200, "SK")]],
      ["dEFCALL", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFCALL")]],
      ["iMSSF", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSSF")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HTCSITPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HTCSITPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HTCSITPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HTCSITPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HTCSITPLTables"),
    :schema_element => [
      ["table1", ["LST_HTCSITPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HTCSITPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HTCSITPLTable1"),
    :schema_element => [
      ["item", ["LST_HTCSITPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HTCSITPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HTCSITPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["gSMSCFADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "GSMSCFADDR")]],
      ["sK", [nil, XSD::QName.new(NsV900R008C02SPC200, "SK")]],
      ["dEFCALL", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFCALL")]],
      ["iMSSF", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSSF")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HCSIType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCSIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HCSITables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HCSITables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCSITables"),
    :schema_element => [
      ["table1", ["LST_HCSITable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HCSITable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCSITable1"),
    :schema_element => [
      ["item", ["LST_HCSIStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HCSIStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCSIStruct1"),
    :schema_element => [
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")], [0, 1]],
      ["iSDN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ISDN")], [0, 1]],
      ["cSITYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "CSITYPE")], [0, 1]],
      ["cSITPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "CSITPLID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSERPRVType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSERPRVType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HSERPRVTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSERPRVTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSERPRVTables"),
    :schema_element => [
      ["table1", ["LST_HSERPRVTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSERPRVTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSERPRVTable1"),
    :schema_element => [
      ["item", ["LST_HSERPRVStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSERPRVStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSERPRVStruct1"),
    :schema_element => [
      ["sERPRVID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERPRVID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HTAAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HTAAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HTAATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HTAATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HTAATables"),
    :schema_element => [
      ["table1", ["LST_HTAATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HTAATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HTAATable1"),
    :schema_element => [
      ["item", ["LST_HTAAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HTAAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HTAAStruct1"),
    :schema_element => [
      ["tAAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "TAAFLAG")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HUSRPRIORType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HUSRPRIORType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HUSRPRIORTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HUSRPRIORTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HUSRPRIORTables"),
    :schema_element => [
      ["table1", ["LST_HUSRPRIORTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HUSRPRIORTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HUSRPRIORTable1"),
    :schema_element => [
      ["item", ["LST_HUSRPRIORStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HUSRPRIORStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HUSRPRIORStruct1"),
    :schema_element => [
      ["uSRPRIOR", [nil, XSD::QName.new(NsV900R008C02SPC200, "USRPRIOR")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSDAINFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSDAINFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HSDAINFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSDAINFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSDAINFTables"),
    :schema_element => [
      ["table1", ["LST_HSDAINFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSDAINFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSDAINFTable1"),
    :schema_element => [
      ["item", ["LST_HSDAINFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSDAINFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSDAINFStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["hUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "HUSERNAME")], [0, 1]],
      ["pWD", [nil, XSD::QName.new(NsV900R008C02SPC200, "PWD")], [0, 1]],
      ["rEALM", [nil, XSD::QName.new(NsV900R008C02SPC200, "REALM")], [0, 1]],
      ["hA1", [nil, XSD::QName.new(NsV900R008C02SPC200, "HA1")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HLRIType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HLRIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HLRITables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HLRITables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HLRITables"),
    :schema_element => [
      ["table1", ["LST_HLRITable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HLRITable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HLRITable1"),
    :schema_element => [
      ["item", ["LST_HLRIStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HLRIStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HLRIStruct1"),
    :schema_element => [
      ["lRI", [nil, XSD::QName.new(NsV900R008C02SPC200, "LRI")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSIFCType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HSIFCTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSIFCTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCTables"),
    :schema_element => [
      ["table1", ["LST_HSIFCTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSIFCTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCTable1"),
    :schema_element => [
      ["item", ["LST_HSIFCStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSIFCStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCStruct1"),
    :schema_element => [
      ["sIFCID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSIFCTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HSIFCTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSIFCTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCTPLTables"),
    :schema_element => [
      ["table1", ["LST_HSIFCTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSIFCTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCTPLTable1"),
    :schema_element => [
      ["item", ["LST_HSIFCTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSIFCTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSIFCINFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCINFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HSIFCINFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSIFCINFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCINFTables"),
    :schema_element => [
      ["table1", ["LST_HSIFCINFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSIFCINFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCINFTable1"),
    :schema_element => [
      ["item", ["LST_HSIFCINFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HSIFCINFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCINFStruct1"),
    :schema_element => [
      ["iFCNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "IFCNAME")]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")]],
      ["pARTIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "PARTIND")]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")]],
      ["dEFHND", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFHND")]],
      ["sERVINFO", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVINFO")]],
      ["tRIGPT", [nil, XSD::QName.new(NsV900R008C02SPC200, "TRIGPT")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HESRNType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HESRNType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HESRNTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HESRNTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HESRNTables"),
    :schema_element => [
      ["table1", ["LST_HESRNTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HESRNTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HESRNTable1"),
    :schema_element => [
      ["item", ["LST_HESRNStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HESRNStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HESRNStruct1"),
    :schema_element => [
      ["eSRN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ESRN")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HONEKEYType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HONEKEYType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HONEKEYTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HONEKEYTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HONEKEYTables"),
    :schema_element => [
      ["table1", ["LST_HONEKEYTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HONEKEYTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HONEKEYTable1"),
    :schema_element => [
      ["item", ["LST_HONEKEYStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HONEKEYStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HONEKEYStruct1"),
    :schema_element => [
      ["wUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "WUSERNAME")]],
      ["hTOKEN", [nil, XSD::QName.new(NsV900R008C02SPC200, "HTOKEN")]],
      ["aP", [nil, XSD::QName.new(NsV900R008C02SPC200, "AP")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HCAAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HCAATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HCAATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAATables"),
    :schema_element => [
      ["table1", ["LST_HCAATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HCAATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAATable1"),
    :schema_element => [
      ["item", ["LST_HCAAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HCAAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAAStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["cAVEAKAFLG", [nil, XSD::QName.new(NsV900R008C02SPC200, "CAVEAKAFLG")]],
      ["uIMID", [nil, XSD::QName.new(NsV900R008C02SPC200, "UIMID")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HPBXUType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPBXUType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HPBXUTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HPBXUTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPBXUTables"),
    :schema_element => [
      ["table1", ["LST_HPBXUTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HPBXUTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPBXUTable1"),
    :schema_element => [
      ["item", ["LST_HPBXUStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HPBXUStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPBXUStruct1"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")]],
      ["pBXUSERFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "PBXUSERFLAG")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HPREPDATAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPREPDATAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HPREPDATATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HPREPDATATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPREPDATATables"),
    :schema_element => [
      ["table1", ["LST_HPREPDATATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HPREPDATATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPREPDATATable1"),
    :schema_element => [
      ["item", ["LST_HPREPDATAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LST_HPREPDATAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPREPDATAStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]],
      ["sELFSERVICE", [nil, XSD::QName.new(NsV900R008C02SPC200, "SELFSERVICE")]],
      ["sMSCADDRESS", [nil, XSD::QName.new(NsV900R008C02SPC200, "SMSCADDRESS")]],
      ["lOCATIONINFORMATION", [nil, XSD::QName.new(NsV900R008C02SPC200, "LOCATIONINFORMATION")]],
      ["nPINDICATOR", [nil, XSD::QName.new(NsV900R008C02SPC200, "NPINDICATOR")]],
      ["cICINDICATOR", [nil, XSD::QName.new(NsV900R008C02SPC200, "CICINDICATOR")]],
      ["bINDINDICATOR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BINDINDICATOR")]]
    ]
  )

  EncodedRegistry.register(
    :class => OperationFault,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "OperationFault"),
    :schema_element => [
      ["faultReason", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => ResultType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "ResultType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]]
    ]
  )

  LiteralRegistry.register(
    :class => RequestCommonInfoType,
    :schema_type => XSD::QName.new(NsHSSV900R008C02SPC200, "RequestCommonInfoType"),
    :schema_element => [
      ["sessionID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "SessionID")]],
      ["mEID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "MEID")]],
      ["sourceMEID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "SourceMEID")]],
      ["serialID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "SerialID")]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsHSSV900R008C02SPC200, "UserName")]],
      ["sync", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "Sync")]],
      ["reserve", ["SOAP::SOAPString", XSD::QName.new(NsHSSV900R008C02SPC200, "Reserve")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ResponseCommonInfoType,
    :schema_type => XSD::QName.new(NsHSSV900R008C02SPC200, "ResponseCommonInfoType"),
    :schema_element => [
      ["commandName", ["SOAP::SOAPString", XSD::QName.new(NsHSSV900R008C02SPC200, "CommandName")]],
      ["sessionID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "SessionID")]],
      ["requestID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "RequestID")]],
      ["mEID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "MEID")]],
      ["sourceMEID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "SourceMEID")]],
      ["serialID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "SerialID")]],
      ["timeStamp", ["SOAP::SOAPString", XSD::QName.new(NsHSSV900R008C02SPC200, "TimeStamp")]],
      ["svrType", ["SOAP::SOAPString", XSD::QName.new(NsHSSV900R008C02SPC200, "SvrType")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_OPType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_OPType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_OPTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_OPTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_OPTables"),
    :schema_element => [
      ["table1", ["LST_OPTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_OPTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_OPTable1"),
    :schema_element => [
      ["item", ["LST_OPStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_OPStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_OPStruct1"),
    :schema_element => [
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")], [0, 1]],
      ["oPVALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPVALUE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_AMFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_AMFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_AMFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_AMFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_AMFTables"),
    :schema_element => [
      ["table1", ["LST_AMFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_AMFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_AMFTable1"),
    :schema_element => [
      ["item", ["LST_AMFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_AMFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_AMFStruct1"),
    :schema_element => [
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")], [0, 1]],
      ["aMFVALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFVALUE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_K4Type,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_K4Type"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_K4Tables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_K4Tables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_K4Tables"),
    :schema_element => [
      ["table1", ["LST_K4Table1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_K4Table1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_K4Table1"),
    :schema_element => [
      ["item", ["LST_K4Struct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_K4Struct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_K4Struct1"),
    :schema_element => [
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")], [0, 1]],
      ["k4VALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4VALUE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_KIType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_KIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_KITables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_KITables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_KITables"),
    :schema_element => [
      ["table1", ["LST_KITable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_KITable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_KITable1"),
    :schema_element => [
      ["item", ["LST_KIStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_KIStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_KIStruct1"),
    :schema_element => [
      ["k", [nil, XSD::QName.new(NsV900R008C02SPC200, "K")]],
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")]],
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")]],
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")]],
      ["oPC", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPC")]],
      ["oPCK4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPCK4SNO")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SUBType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SUBType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_SUBTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SUBTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SUBTables"),
    :schema_element => [
      ["table1", ["LST_SUBTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SUBTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SUBTable1"),
    :schema_element => [
      ["item", ["LST_SUBStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SUBStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SUBStruct1"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")], [0, 1]],
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["sHARED", [nil, XSD::QName.new(NsV900R008C02SPC200, "SHARED")], [0, 1]],
      ["iRSID", [nil, XSD::QName.new(NsV900R008C02SPC200, "IRSID")], [0, 1]],
      ["aLIASID", [nil, XSD::QName.new(NsV900R008C02SPC200, "ALIASID")], [0, 1]],
      ["dEFIMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFIMPU")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CHARGIDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CHARGIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_CHARGIDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CHARGIDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CHARGIDTables"),
    :schema_element => [
      ["table1", ["LST_CHARGIDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CHARGIDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CHARGIDTable1"),
    :schema_element => [
      ["item", ["LST_CHARGIDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CHARGIDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CHARGIDStruct1"),
    :schema_element => [
      ["cHARGTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "CHARGTPLID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_BARType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_BARType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_BARTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_BARTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_BARTables"),
    :schema_element => [
      ["table1", ["LST_BARTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_BARTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_BARTable1"),
    :schema_element => [
      ["item", ["LST_BARStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_BARStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_BARStruct1"),
    :schema_element => [
      ["bAR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BAR")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_REGAUTHType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_REGAUTHType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_REGAUTHTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_REGAUTHTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_REGAUTHTables"),
    :schema_element => [
      ["table1", ["LST_REGAUTHTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_REGAUTHTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_REGAUTHTable1"),
    :schema_element => [
      ["item", ["LST_REGAUTHStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_REGAUTHStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_REGAUTHStruct1"),
    :schema_element => [
      ["rEGAUTH", [nil, XSD::QName.new(NsV900R008C02SPC200, "REGAUTH")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VNTPLIDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_VNTPLIDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VNTPLIDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLIDTables"),
    :schema_element => [
      ["table1", ["LST_VNTPLIDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VNTPLIDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLIDTable1"),
    :schema_element => [
      ["item", ["LST_VNTPLIDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VNTPLIDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLIDStruct1"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_MEDIAIDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_MEDIAIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_MEDIAIDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_MEDIAIDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_MEDIAIDTables"),
    :schema_element => [
      ["table1", ["LST_MEDIAIDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_MEDIAIDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_MEDIAIDTable1"),
    :schema_element => [
      ["item", ["LST_MEDIAIDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_MEDIAIDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_MEDIAIDStruct1"),
    :schema_element => [
      ["mEDIAID", [nil, XSD::QName.new(NsV900R008C02SPC200, "MEDIAID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_MOCAPType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_MOCAPType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_MOCAPTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_MOCAPTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_MOCAPTables"),
    :schema_element => [
      ["table1", ["LST_MOCAPTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_MOCAPTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_MOCAPTable1"),
    :schema_element => [
      ["item", ["LST_MOCAPStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_MOCAPStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_MOCAPStruct1"),
    :schema_element => [
      ["mCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "MCAP")], [0, 1]],
      ["oCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "OCAP")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_EIAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_EIAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_EIATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_EIATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_EIATables"),
    :schema_element => [
      ["table1", ["LST_EIATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_EIATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_EIATable1"),
    :schema_element => [
      ["item", ["LST_EIAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_EIAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_EIAStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]],
      ["iPV4ADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "IPV4ADDR")]],
      ["iPV6ADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "IPV6ADDR")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_EAAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_EAAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_EAATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_EAATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_EAATables"),
    :schema_element => [
      ["table1", ["LST_EAATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_EAATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_EAATable1"),
    :schema_element => [
      ["item", ["LST_EAAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_EAAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_EAAStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_ASTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASTables"),
    :schema_element => [
      ["table1", ["LST_ASTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASTable1"),
    :schema_element => [
      ["item", ["LST_ASStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASStruct1"),
    :schema_element => [
      ["aS", [nil, XSD::QName.new(NsV900R008C02SPC200, "AS")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VNCFLAGType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNCFLAGType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_VNCFLAGTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VNCFLAGTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNCFLAGTables"),
    :schema_element => [
      ["table1", ["LST_VNCFLAGTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VNCFLAGTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNCFLAGTable1"),
    :schema_element => [
      ["item", ["LST_VNCFLAGStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VNCFLAGStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNCFLAGStruct1"),
    :schema_element => [
      ["vNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNCFLAG")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IFCType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_IFCType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_IFCTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IFCTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_IFCTables"),
    :schema_element => [
      ["table1", ["LST_IFCTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IFCTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_IFCTable1"),
    :schema_element => [
      ["item", ["LST_IFCStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IFCStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_IFCStruct1"),
    :schema_element => [
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")], [0, 1]],
      ["pARTIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "PARTIND")], [0, 1]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")], [0, 1]],
      ["dEFHND", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFHND")], [0, 1]],
      ["sERVINFO", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVINFO")], [0, 1]],
      ["tRIGPT", [nil, XSD::QName.new(NsV900R008C02SPC200, "TRIGPT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CAPSCSCFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CAPSCSCFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_CAPSCSCFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CAPSCSCFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CAPSCSCFTables"),
    :schema_element => [
      ["table1", ["LST_CAPSCSCFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CAPSCSCFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CAPSCSCFTable1"),
    :schema_element => [
      ["item", ["LST_CAPSCSCFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CAPSCSCFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CAPSCSCFStruct1"),
    :schema_element => [
      ["sCSCF", [nil, XSD::QName.new(NsV900R008C02SPC200, "SCSCF")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SPSHAREType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SPSHAREType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_SPSHARETables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SPSHARETables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SPSHARETables"),
    :schema_element => [
      ["table1", ["LST_SPSHARETable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SPSHARETable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SPSHARETable1"),
    :schema_element => [
      ["item", ["LST_SPSHAREStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SPSHAREStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SPSHAREStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_DYNDATAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_DYNDATAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_DYNDATATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_DYNDATATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_DYNDATATables"),
    :schema_element => [
      ["table1", ["LST_DYNDATATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_DYNDATATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_DYNDATATable1"),
    :schema_element => [
      ["item", ["LST_DYNDATAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_DYNDATAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_DYNDATAStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["iMSUSERST", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSUSERST")], [0, 1]],
      ["pENDINGFLG", [nil, XSD::QName.new(NsV900R008C02SPC200, "PENDINGFLG")], [0, 1]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSUBDATAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSUBDATAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_ASSUBDATATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSUBDATATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSUBDATATables"),
    :schema_element => [
      ["table1", ["LST_ASSUBDATATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSUBDATATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSUBDATATable1"),
    :schema_element => [
      ["item", ["LST_ASSUBDATAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSUBDATAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSUBDATAStruct1"),
    :schema_element => [
      ["sUBASID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBASID")], [0, 1]],
      ["dATATYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "DATATYPE")], [0, 1]],
      ["aSNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "ASNAME")], [0, 1]],
      ["sRVIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "SRVIND")], [0, 1]],
      ["aLIASID", [nil, XSD::QName.new(NsV900R008C02SPC200, "ALIASID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PSIType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_PSIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_PSITables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PSITables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_PSITables"),
    :schema_element => [
      ["table1", ["LST_PSITable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PSITable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_PSITable1"),
    :schema_element => [
      ["item", ["LST_PSIStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PSIStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_PSIStruct1"),
    :schema_element => [
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["iRSID", [nil, XSD::QName.new(NsV900R008C02SPC200, "IRSID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HDAINFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HDAINFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HDAINFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HDAINFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HDAINFTables"),
    :schema_element => [
      ["table1", ["LST_HDAINFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HDAINFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HDAINFTable1"),
    :schema_element => [
      ["item", ["LST_HDAINFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HDAINFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HDAINFStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["hUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "HUSERNAME")], [0, 1]],
      ["pWD", [nil, XSD::QName.new(NsV900R008C02SPC200, "PWD")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IMPUTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_IMPUTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_IMPUTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IMPUTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_IMPUTPLTables"),
    :schema_element => [
      ["table1", ["LST_IMPUTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IMPUTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_IMPUTPLTable1"),
    :schema_element => [
      ["item", ["LST_IMPUTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IMPUTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_IMPUTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["vNTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNTPLID")]],
      ["nATPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATPLID")]],
      ["bAR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BAR")]],
      ["rEGAUTH", [nil, XSD::QName.new(NsV900R008C02SPC200, "REGAUTH")]],
      ["vNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNCFLAG")]],
      ["nNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "NNCFLAG")]],
      ["sERPRVID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERPRVID")]],
      ["lRI", [nil, XSD::QName.new(NsV900R008C02SPC200, "LRI")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PUSITPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_PUSITPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_PUSITPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PUSITPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_PUSITPLTables"),
    :schema_element => [
      ["table1", ["LST_PUSITPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PUSITPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_PUSITPLTable1"),
    :schema_element => [
      ["item", ["LST_PUSITPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PUSITPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_PUSITPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["aS", [nil, XSD::QName.new(NsV900R008C02SPC200, "AS")]],
      ["bAR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BAR")]],
      ["aCTSTATE", [nil, XSD::QName.new(NsV900R008C02SPC200, "ACTSTATE")]],
      ["sERPRVID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERPRVID")]],
      ["lRI", [nil, XSD::QName.new(NsV900R008C02SPC200, "LRI")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IFCTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_IFCTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_IFCTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IFCTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_IFCTPLTables"),
    :schema_element => [
      ["table1", ["LST_IFCTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IFCTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_IFCTPLTable1"),
    :schema_element => [
      ["item", ["LST_IFCTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IFCTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_IFCTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")]],
      ["pARTIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "PARTIND")]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")]],
      ["dEFHND", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFHND")]],
      ["sERVINFO", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVINFO")]],
      ["tRIGPT", [nil, XSD::QName.new(NsV900R008C02SPC200, "TRIGPT")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SPTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SPTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_SPTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SPTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SPTPLTables"),
    :schema_element => [
      ["table1", ["LST_SPTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SPTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SPTPLTable1"),
    :schema_element => [
      ["item", ["LST_SPTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SPTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SPTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["mEDIAID", [nil, XSD::QName.new(NsV900R008C02SPC200, "MEDIAID")]],
      ["iFCLIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "IFCLIST")]],
      ["sIFCLIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCLIST")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_AKATPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_AKATPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_AKATPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_AKATPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_AKATPLTables"),
    :schema_element => [
      ["table1", ["LST_AKATPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_AKATPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_AKATPLTable1"),
    :schema_element => [
      ["item", ["LST_AKATPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_AKATPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_AKATPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")]],
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")]],
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")]],
      ["oPC", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPC")]],
      ["oPCK4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPCK4SNO")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CAPTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CAPTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_CAPTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CAPTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CAPTPLTables"),
    :schema_element => [
      ["table1", ["LST_CAPTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CAPTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CAPTPLTable1"),
    :schema_element => [
      ["item", ["LST_CAPTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CAPTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CAPTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["mCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "MCAP")]],
      ["oCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "OCAP")]],
      ["sCSCFLIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "SCSCFLIST")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_TPLINFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_TPLINFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_TPLINFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_TPLINFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_TPLINFTables"),
    :schema_element => [
      ["table1", ["LST_TPLINFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_TPLINFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_TPLINFTable1"),
    :schema_element => [
      ["item", ["LST_TPLINFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_TPLINFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_TPLINFStruct1"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PSIDYNDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_PSIDYNDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_PSIDYNDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PSIDYNDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_PSIDYNDTables"),
    :schema_element => [
      ["table1", ["LST_PSIDYNDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PSIDYNDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_PSIDYNDTable1"),
    :schema_element => [
      ["item", ["LST_PSIDYNDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PSIDYNDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_PSIDYNDStruct1"),
    :schema_element => [
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["aCTSTATE", [nil, XSD::QName.new(NsV900R008C02SPC200, "ACTSTATE")], [0, 1]],
      ["rEGSTATE", [nil, XSD::QName.new(NsV900R008C02SPC200, "REGSTATE")], [0, 1]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_AUTHINFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_AUTHINFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_AUTHINFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_AUTHINFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_AUTHINFTables"),
    :schema_element => [
      ["table1", ["LST_AUTHINFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_AUTHINFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_AUTHINFTable1"),
    :schema_element => [
      ["item", ["LST_AUTHINFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_AUTHINFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_AUTHINFStruct1"),
    :schema_element => [
      ["aKAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "AKAFLAG")]],
      ["eAAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "EAAFLAG")]],
      ["sDAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "SDAFLAG")]],
      ["tAAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "TAAFLAG")]],
      ["eIAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "EIAFLAG")]],
      ["hDAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "HDAFLAG")]],
      ["nBAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "NBAFLAG")]],
      ["cAAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "CAAFLAG")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NATPLIDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_NATPLIDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NATPLIDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLIDTables"),
    :schema_element => [
      ["table1", ["LST_NATPLIDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NATPLIDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLIDTable1"),
    :schema_element => [
      ["item", ["LST_NATPLIDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NATPLIDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLIDStruct1"),
    :schema_element => [
      ["nATPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NNCFLAGType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NNCFLAGType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_NNCFLAGTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NNCFLAGTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NNCFLAGTables"),
    :schema_element => [
      ["table1", ["LST_NNCFLAGTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NNCFLAGTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NNCFLAGTable1"),
    :schema_element => [
      ["item", ["LST_NNCFLAGStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NNCFLAGStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NNCFLAGStruct1"),
    :schema_element => [
      ["nNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "NNCFLAG")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NNRLIType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NNRLIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_NNRLITables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NNRLITables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NNRLITables"),
    :schema_element => [
      ["table1", ["LST_NNRLITable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NNRLITable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NNRLITable1"),
    :schema_element => [
      ["item", ["LST_NNRLIStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NNRLIStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NNRLIStruct1"),
    :schema_element => [
      ["rLINDEX", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLINDEX")], [0, 1]],
      ["rLI", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLI")], [0, 1]],
      ["rLT", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLT")], [0, 1]],
      ["dEFRLI", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFRLI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSPIDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSPIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_ASSPIDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSPIDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSPIDTables"),
    :schema_element => [
      ["table1", ["LST_ASSPIDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSPIDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSPIDTable1"),
    :schema_element => [
      ["item", ["LST_ASSPIDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSPIDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSPIDStruct1"),
    :schema_element => [
      ["aSSPID", [nil, XSD::QName.new(NsV900R008C02SPC200, "ASSPID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SRVINDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SRVINDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_SRVINDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SRVINDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SRVINDTables"),
    :schema_element => [
      ["table1", ["LST_SRVINDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SRVINDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SRVINDTable1"),
    :schema_element => [
      ["item", ["LST_SRVINDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SRVINDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SRVINDStruct1"),
    :schema_element => [
      ["sRVIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "SRVIND")], [0, 1]],
      ["rEPTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "REPTYPE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_REPDATAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_REPDATAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_REPDATATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_REPDATATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_REPDATATables"),
    :schema_element => [
      ["table1", ["LST_REPDATATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_REPDATATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_REPDATATable1"),
    :schema_element => [
      ["item", ["LST_REPDATAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_REPDATAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_REPDATAStruct1"),
    :schema_element => [
      ["rEPDATA", [nil, XSD::QName.new(NsV900R008C02SPC200, "REPDATA")]],
      ["rEPTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "REPTYPE")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_DALIType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_DALIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_DALITables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_DALITables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_DALITables"),
    :schema_element => [
      ["table1", ["LST_DALITable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_DALITable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_DALITable1"),
    :schema_element => [
      ["item", ["LST_DALIStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_DALIStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_DALIStruct1"),
    :schema_element => [
      ["iMSALI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSALI")]],
      ["nASSALI", [nil, XSD::QName.new(NsV900R008C02SPC200, "NASSALI")]],
      ["iPV4ADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "IPV4ADDR")]],
      ["iPV6ADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "IPV6ADDR")]],
      ["sIPADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIPADDR")]],
      ["nASSSTATUS", [nil, XSD::QName.new(NsV900R008C02SPC200, "NASSSTATUS")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_MSIDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_MSIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_MSIDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_MSIDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_MSIDTables"),
    :schema_element => [
      ["table1", ["LST_MSIDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_MSIDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_MSIDTable1"),
    :schema_element => [
      ["item", ["LST_MSIDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_MSIDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_MSIDStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")], [0, 1]],
      ["iSDN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ISDN")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSOCType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSOCType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_ASSOCTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSOCTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSOCTables"),
    :schema_element => [
      ["table1", ["LST_ASSOCTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSOCTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSOCTable1"),
    :schema_element => [
      ["item", ["LST_ASSOCStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSOCStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSOCStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NBAINFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NBAINFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_NBAINFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NBAINFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NBAINFTables"),
    :schema_element => [
      ["table1", ["LST_NBAINFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NBAINFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NBAINFTable1"),
    :schema_element => [
      ["item", ["LST_NBAINFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NBAINFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NBAINFStruct1"),
    :schema_element => [
      ["lINEIDIDX", [nil, XSD::QName.new(NsV900R008C02SPC200, "LINEIDIDX")]],
      ["lINEID", [nil, XSD::QName.new(NsV900R008C02SPC200, "LINEID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CHGTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CHGTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_CHGTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CHGTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CHGTPLTables"),
    :schema_element => [
      ["table1", ["LST_CHGTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CHGTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CHGTPLTable1"),
    :schema_element => [
      ["item", ["LST_CHGTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CHGTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CHGTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["pECF", [nil, XSD::QName.new(NsV900R008C02SPC200, "PECF")]],
      ["sECF", [nil, XSD::QName.new(NsV900R008C02SPC200, "SECF")]],
      ["pCCF", [nil, XSD::QName.new(NsV900R008C02SPC200, "PCCF")]],
      ["sCCF", [nil, XSD::QName.new(NsV900R008C02SPC200, "SCCF")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VNTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_VNTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VNTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLTables"),
    :schema_element => [
      ["table1", ["LST_VNTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VNTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLTable1"),
    :schema_element => [
      ["item", ["LST_VNTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VNTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["mATCHTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "MATCHTYPE")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VNTPLADDRType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLADDRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_VNTPLADDRTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VNTPLADDRTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLADDRTables"),
    :schema_element => [
      ["table1", ["LST_VNTPLADDRTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VNTPLADDRTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLADDRTable1"),
    :schema_element => [
      ["item", ["LST_VNTPLADDRStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VNTPLADDRStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLADDRStruct1"),
    :schema_element => [
      ["vN", [nil, XSD::QName.new(NsV900R008C02SPC200, "VN")]],
      ["vNTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNTYPE")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NATPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_NATPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NATPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLTables"),
    :schema_element => [
      ["table1", ["LST_NATPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NATPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLTable1"),
    :schema_element => [
      ["item", ["LST_NATPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NATPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["mATCHTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "MATCHTYPE")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NATPLADDRType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLADDRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_NATPLADDRTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NATPLADDRTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLADDRTables"),
    :schema_element => [
      ["table1", ["LST_NATPLADDRTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NATPLADDRTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLADDRTable1"),
    :schema_element => [
      ["item", ["LST_NATPLADDRStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NATPLADDRStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLADDRStruct1"),
    :schema_element => [
      ["nA", [nil, XSD::QName.new(NsV900R008C02SPC200, "NA")]],
      ["nATYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATYPE")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_OCSITPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_OCSITPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_OCSITPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_OCSITPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_OCSITPLTables"),
    :schema_element => [
      ["table1", ["LST_OCSITPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_OCSITPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_OCSITPLTable1"),
    :schema_element => [
      ["item", ["LST_OCSITPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_OCSITPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_OCSITPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["gSMSCFADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "GSMSCFADDR")]],
      ["sK", [nil, XSD::QName.new(NsV900R008C02SPC200, "SK")]],
      ["dEFCALL", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFCALL")]],
      ["iMSSF", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSSF")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_TCSITPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_TCSITPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_TCSITPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_TCSITPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_TCSITPLTables"),
    :schema_element => [
      ["table1", ["LST_TCSITPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_TCSITPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_TCSITPLTable1"),
    :schema_element => [
      ["item", ["LST_TCSITPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_TCSITPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_TCSITPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["gSMSCFADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "GSMSCFADDR")]],
      ["sK", [nil, XSD::QName.new(NsV900R008C02SPC200, "SK")]],
      ["dEFCALL", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFCALL")]],
      ["iMSSF", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSSF")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CSIType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CSIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_CSITables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CSITables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CSITables"),
    :schema_element => [
      ["table1", ["LST_CSITable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CSITable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CSITable1"),
    :schema_element => [
      ["item", ["LST_CSIStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CSIStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_CSIStruct1"),
    :schema_element => [
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")], [0, 1]],
      ["iSDN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ISDN")], [0, 1]],
      ["cSITYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "CSITYPE")], [0, 1]],
      ["cSITPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "CSITPLID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SERPRVType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SERPRVType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_SERPRVTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SERPRVTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SERPRVTables"),
    :schema_element => [
      ["table1", ["LST_SERPRVTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SERPRVTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SERPRVTable1"),
    :schema_element => [
      ["item", ["LST_SERPRVStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SERPRVStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SERPRVStruct1"),
    :schema_element => [
      ["sERPRVID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERPRVID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_TAAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_TAAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_TAATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_TAATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_TAATables"),
    :schema_element => [
      ["table1", ["LST_TAATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_TAATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_TAATable1"),
    :schema_element => [
      ["item", ["LST_TAAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_TAAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_TAAStruct1"),
    :schema_element => [
      ["tAAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "TAAFLAG")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_USRPRIORType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_USRPRIORType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_USRPRIORTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_USRPRIORTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_USRPRIORTables"),
    :schema_element => [
      ["table1", ["LST_USRPRIORTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_USRPRIORTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_USRPRIORTable1"),
    :schema_element => [
      ["item", ["LST_USRPRIORStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_USRPRIORStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_USRPRIORStruct1"),
    :schema_element => [
      ["uSRPRIOR", [nil, XSD::QName.new(NsV900R008C02SPC200, "USRPRIOR")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SDAINFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SDAINFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_SDAINFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SDAINFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SDAINFTables"),
    :schema_element => [
      ["table1", ["LST_SDAINFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SDAINFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SDAINFTable1"),
    :schema_element => [
      ["item", ["LST_SDAINFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SDAINFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SDAINFStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["hUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "HUSERNAME")], [0, 1]],
      ["pWD", [nil, XSD::QName.new(NsV900R008C02SPC200, "PWD")], [0, 1]],
      ["rEALM", [nil, XSD::QName.new(NsV900R008C02SPC200, "REALM")], [0, 1]],
      ["hA1", [nil, XSD::QName.new(NsV900R008C02SPC200, "HA1")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_LRIType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_LRIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_LRITables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_LRITables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_LRITables"),
    :schema_element => [
      ["table1", ["LST_LRITable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_LRITable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_LRITable1"),
    :schema_element => [
      ["item", ["LST_LRIStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_LRIStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_LRIStruct1"),
    :schema_element => [
      ["lRI", [nil, XSD::QName.new(NsV900R008C02SPC200, "LRI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SIFCType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_SIFCTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SIFCTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCTables"),
    :schema_element => [
      ["table1", ["LST_SIFCTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SIFCTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCTable1"),
    :schema_element => [
      ["item", ["LST_SIFCStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SIFCStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCStruct1"),
    :schema_element => [
      ["sIFCID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SIFCTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_SIFCTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SIFCTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCTPLTables"),
    :schema_element => [
      ["table1", ["LST_SIFCTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SIFCTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCTPLTable1"),
    :schema_element => [
      ["item", ["LST_SIFCTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SIFCTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SIFCINFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCINFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_SIFCINFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SIFCINFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCINFTables"),
    :schema_element => [
      ["table1", ["LST_SIFCINFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SIFCINFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCINFTable1"),
    :schema_element => [
      ["item", ["LST_SIFCINFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SIFCINFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCINFStruct1"),
    :schema_element => [
      ["iFCNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "IFCNAME")]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")]],
      ["pARTIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "PARTIND")]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")]],
      ["dEFHND", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFHND")]],
      ["sERVINFO", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVINFO")]],
      ["tRIGPT", [nil, XSD::QName.new(NsV900R008C02SPC200, "TRIGPT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ESRNType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ESRNType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_ESRNTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ESRNTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ESRNTables"),
    :schema_element => [
      ["table1", ["LST_ESRNTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ESRNTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ESRNTable1"),
    :schema_element => [
      ["item", ["LST_ESRNStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ESRNStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ESRNStruct1"),
    :schema_element => [
      ["eSRN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ESRN")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ONEKEYType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ONEKEYType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_ONEKEYTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ONEKEYTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ONEKEYTables"),
    :schema_element => [
      ["table1", ["LST_ONEKEYTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ONEKEYTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ONEKEYTable1"),
    :schema_element => [
      ["item", ["LST_ONEKEYStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ONEKEYStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_ONEKEYStruct1"),
    :schema_element => [
      ["wUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "WUSERNAME")]],
      ["hTOKEN", [nil, XSD::QName.new(NsV900R008C02SPC200, "HTOKEN")]],
      ["aP", [nil, XSD::QName.new(NsV900R008C02SPC200, "AP")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HOPType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HOPType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HOPTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HOPTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HOPTables"),
    :schema_element => [
      ["table1", ["LST_HOPTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HOPTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HOPTable1"),
    :schema_element => [
      ["item", ["LST_HOPStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HOPStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HOPStruct1"),
    :schema_element => [
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")], [0, 1]],
      ["oPVALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPVALUE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HAMFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HAMFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HAMFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HAMFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HAMFTables"),
    :schema_element => [
      ["table1", ["LST_HAMFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HAMFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HAMFTable1"),
    :schema_element => [
      ["item", ["LST_HAMFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HAMFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HAMFStruct1"),
    :schema_element => [
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")], [0, 1]],
      ["aMFVALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFVALUE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HK4Type,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HK4Type"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HK4Tables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HK4Tables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HK4Tables"),
    :schema_element => [
      ["table1", ["LST_HK4Table1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HK4Table1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HK4Table1"),
    :schema_element => [
      ["item", ["LST_HK4Struct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HK4Struct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HK4Struct1"),
    :schema_element => [
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")], [0, 1]],
      ["k4VALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4VALUE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HKIType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HKIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HKITables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HKITables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HKITables"),
    :schema_element => [
      ["table1", ["LST_HKITable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HKITable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HKITable1"),
    :schema_element => [
      ["item", ["LST_HKIStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HKIStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HKIStruct1"),
    :schema_element => [
      ["k", [nil, XSD::QName.new(NsV900R008C02SPC200, "K")]],
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")]],
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")]],
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")]],
      ["oPC", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPC")]],
      ["oPCK4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPCK4SNO")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSUBType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSUBType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HSUBTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSUBTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSUBTables"),
    :schema_element => [
      ["table1", ["LST_HSUBTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSUBTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSUBTable1"),
    :schema_element => [
      ["item", ["LST_HSUBStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSUBStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSUBStruct1"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")], [0, 1]],
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["sHARED", [nil, XSD::QName.new(NsV900R008C02SPC200, "SHARED")], [0, 1]],
      ["iRSID", [nil, XSD::QName.new(NsV900R008C02SPC200, "IRSID")], [0, 1]],
      ["aLIASID", [nil, XSD::QName.new(NsV900R008C02SPC200, "ALIASID")], [0, 1]],
      ["dEFIMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFIMPU")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCHARGIDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCHARGIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HCHARGIDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCHARGIDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCHARGIDTables"),
    :schema_element => [
      ["table1", ["LST_HCHARGIDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCHARGIDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCHARGIDTable1"),
    :schema_element => [
      ["item", ["LST_HCHARGIDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCHARGIDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCHARGIDStruct1"),
    :schema_element => [
      ["cHARGTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "CHARGTPLID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HBARType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HBARType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HBARTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HBARTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HBARTables"),
    :schema_element => [
      ["table1", ["LST_HBARTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HBARTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HBARTable1"),
    :schema_element => [
      ["item", ["LST_HBARStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HBARStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HBARStruct1"),
    :schema_element => [
      ["bAR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BAR")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HREGAUTHType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HREGAUTHType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HREGAUTHTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HREGAUTHTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HREGAUTHTables"),
    :schema_element => [
      ["table1", ["LST_HREGAUTHTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HREGAUTHTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HREGAUTHTable1"),
    :schema_element => [
      ["item", ["LST_HREGAUTHStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HREGAUTHStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HREGAUTHStruct1"),
    :schema_element => [
      ["rEGAUTH", [nil, XSD::QName.new(NsV900R008C02SPC200, "REGAUTH")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HVNTPLIDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HVNTPLIDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HVNTPLIDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLIDTables"),
    :schema_element => [
      ["table1", ["LST_HVNTPLIDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HVNTPLIDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLIDTable1"),
    :schema_element => [
      ["item", ["LST_HVNTPLIDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HVNTPLIDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLIDStruct1"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HMEDIAIDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HMEDIAIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HMEDIAIDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HMEDIAIDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HMEDIAIDTables"),
    :schema_element => [
      ["table1", ["LST_HMEDIAIDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HMEDIAIDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HMEDIAIDTable1"),
    :schema_element => [
      ["item", ["LST_HMEDIAIDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HMEDIAIDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HMEDIAIDStruct1"),
    :schema_element => [
      ["mEDIAID", [nil, XSD::QName.new(NsV900R008C02SPC200, "MEDIAID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HMOCAPType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HMOCAPType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HMOCAPTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HMOCAPTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HMOCAPTables"),
    :schema_element => [
      ["table1", ["LST_HMOCAPTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HMOCAPTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HMOCAPTable1"),
    :schema_element => [
      ["item", ["LST_HMOCAPStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HMOCAPStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HMOCAPStruct1"),
    :schema_element => [
      ["mCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "MCAP")], [0, 1]],
      ["oCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "OCAP")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HEIAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HEIAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HEIATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HEIATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HEIATables"),
    :schema_element => [
      ["table1", ["LST_HEIATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HEIATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HEIATable1"),
    :schema_element => [
      ["item", ["LST_HEIAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HEIAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HEIAStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]],
      ["iPV4ADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "IPV4ADDR")]],
      ["iPV6ADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "IPV6ADDR")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HEAAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HEAAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HEAATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HEAATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HEAATables"),
    :schema_element => [
      ["table1", ["LST_HEAATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HEAATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HEAATable1"),
    :schema_element => [
      ["item", ["LST_HEAAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HEAAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HEAAStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HASType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HASTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HASTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASTables"),
    :schema_element => [
      ["table1", ["LST_HASTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HASTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASTable1"),
    :schema_element => [
      ["item", ["LST_HASStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HASStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASStruct1"),
    :schema_element => [
      ["aS", [nil, XSD::QName.new(NsV900R008C02SPC200, "AS")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HVNCFLAGType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNCFLAGType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HVNCFLAGTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HVNCFLAGTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNCFLAGTables"),
    :schema_element => [
      ["table1", ["LST_HVNCFLAGTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HVNCFLAGTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNCFLAGTable1"),
    :schema_element => [
      ["item", ["LST_HVNCFLAGStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HVNCFLAGStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNCFLAGStruct1"),
    :schema_element => [
      ["vNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNCFLAG")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HIFCType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HIFCType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HIFCTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HIFCTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HIFCTables"),
    :schema_element => [
      ["table1", ["LST_HIFCTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HIFCTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HIFCTable1"),
    :schema_element => [
      ["item", ["LST_HIFCStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HIFCStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HIFCStruct1"),
    :schema_element => [
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")], [0, 1]],
      ["pARTIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "PARTIND")], [0, 1]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")], [0, 1]],
      ["dEFHND", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFHND")], [0, 1]],
      ["sERVINFO", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVINFO")], [0, 1]],
      ["tRIGPT", [nil, XSD::QName.new(NsV900R008C02SPC200, "TRIGPT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCAPSCSCFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAPSCSCFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HCAPSCSCFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCAPSCSCFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAPSCSCFTables"),
    :schema_element => [
      ["table1", ["LST_HCAPSCSCFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCAPSCSCFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAPSCSCFTable1"),
    :schema_element => [
      ["item", ["LST_HCAPSCSCFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCAPSCSCFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAPSCSCFStruct1"),
    :schema_element => [
      ["sCSCF", [nil, XSD::QName.new(NsV900R008C02SPC200, "SCSCF")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSPSHAREType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSPSHAREType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HSPSHARETables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSPSHARETables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSPSHARETables"),
    :schema_element => [
      ["table1", ["LST_HSPSHARETable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSPSHARETable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSPSHARETable1"),
    :schema_element => [
      ["item", ["LST_HSPSHAREStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSPSHAREStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSPSHAREStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HDYNDATAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HDYNDATAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HDYNDATATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HDYNDATATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HDYNDATATables"),
    :schema_element => [
      ["table1", ["LST_HDYNDATATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HDYNDATATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HDYNDATATable1"),
    :schema_element => [
      ["item", ["LST_HDYNDATAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HDYNDATAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HDYNDATAStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["iMSUSERST", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSUSERST")], [0, 1]],
      ["pENDINGFLG", [nil, XSD::QName.new(NsV900R008C02SPC200, "PENDINGFLG")], [0, 1]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HASSUBDATAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSUBDATAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HASSUBDATATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HASSUBDATATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSUBDATATables"),
    :schema_element => [
      ["table1", ["LST_HASSUBDATATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HASSUBDATATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSUBDATATable1"),
    :schema_element => [
      ["item", ["LST_HASSUBDATAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HASSUBDATAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSUBDATAStruct1"),
    :schema_element => [
      ["sUBASID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBASID")], [0, 1]],
      ["dATATYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "DATATYPE")], [0, 1]],
      ["aSNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "ASNAME")], [0, 1]],
      ["sRVIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "SRVIND")], [0, 1]],
      ["aLIASID", [nil, XSD::QName.new(NsV900R008C02SPC200, "ALIASID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPSIType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPSIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HPSITables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPSITables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPSITables"),
    :schema_element => [
      ["table1", ["LST_HPSITable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPSITable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPSITable1"),
    :schema_element => [
      ["item", ["LST_HPSIStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPSIStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPSIStruct1"),
    :schema_element => [
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["iRSID", [nil, XSD::QName.new(NsV900R008C02SPC200, "IRSID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HHDAINFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HHDAINFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HHDAINFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HHDAINFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HHDAINFTables"),
    :schema_element => [
      ["table1", ["LST_HHDAINFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HHDAINFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HHDAINFTable1"),
    :schema_element => [
      ["item", ["LST_HHDAINFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HHDAINFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HHDAINFStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["hUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "HUSERNAME")], [0, 1]],
      ["pWD", [nil, XSD::QName.new(NsV900R008C02SPC200, "PWD")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HIMPUTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HIMPUTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HIMPUTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HIMPUTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HIMPUTPLTables"),
    :schema_element => [
      ["table1", ["LST_HIMPUTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HIMPUTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HIMPUTPLTable1"),
    :schema_element => [
      ["item", ["LST_HIMPUTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HIMPUTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HIMPUTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["vNTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNTPLID")]],
      ["nATPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATPLID")]],
      ["bAR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BAR")]],
      ["rEGAUTH", [nil, XSD::QName.new(NsV900R008C02SPC200, "REGAUTH")]],
      ["vNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNCFLAG")]],
      ["nNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "NNCFLAG")]],
      ["sERPRVID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERPRVID")]],
      ["lRI", [nil, XSD::QName.new(NsV900R008C02SPC200, "LRI")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPUSITPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPUSITPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HPUSITPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPUSITPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPUSITPLTables"),
    :schema_element => [
      ["table1", ["LST_HPUSITPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPUSITPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPUSITPLTable1"),
    :schema_element => [
      ["item", ["LST_HPUSITPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPUSITPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPUSITPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["aS", [nil, XSD::QName.new(NsV900R008C02SPC200, "AS")]],
      ["bAR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BAR")]],
      ["aCTSTATE", [nil, XSD::QName.new(NsV900R008C02SPC200, "ACTSTATE")]],
      ["sERPRVID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERPRVID")]],
      ["lRI", [nil, XSD::QName.new(NsV900R008C02SPC200, "LRI")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HIFCTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HIFCTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HIFCTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HIFCTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HIFCTPLTables"),
    :schema_element => [
      ["table1", ["LST_HIFCTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HIFCTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HIFCTPLTable1"),
    :schema_element => [
      ["item", ["LST_HIFCTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HIFCTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HIFCTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")]],
      ["pARTIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "PARTIND")]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")]],
      ["dEFHND", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFHND")]],
      ["sERVINFO", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVINFO")]],
      ["tRIGPT", [nil, XSD::QName.new(NsV900R008C02SPC200, "TRIGPT")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSPTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSPTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HSPTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSPTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSPTPLTables"),
    :schema_element => [
      ["table1", ["LST_HSPTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSPTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSPTPLTable1"),
    :schema_element => [
      ["item", ["LST_HSPTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSPTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSPTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["mEDIAID", [nil, XSD::QName.new(NsV900R008C02SPC200, "MEDIAID")]],
      ["iFCLIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "IFCLIST")]],
      ["sIFCLIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCLIST")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HAKATPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HAKATPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HAKATPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HAKATPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HAKATPLTables"),
    :schema_element => [
      ["table1", ["LST_HAKATPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HAKATPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HAKATPLTable1"),
    :schema_element => [
      ["item", ["LST_HAKATPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HAKATPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HAKATPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")]],
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")]],
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")]],
      ["oPC", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPC")]],
      ["oPCK4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPCK4SNO")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCAPTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAPTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HCAPTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCAPTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAPTPLTables"),
    :schema_element => [
      ["table1", ["LST_HCAPTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCAPTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAPTPLTable1"),
    :schema_element => [
      ["item", ["LST_HCAPTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCAPTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAPTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["mCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "MCAP")]],
      ["oCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "OCAP")]],
      ["sCSCFLIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "SCSCFLIST")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HTPLINFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HTPLINFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HTPLINFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HTPLINFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HTPLINFTables"),
    :schema_element => [
      ["table1", ["LST_HTPLINFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HTPLINFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HTPLINFTable1"),
    :schema_element => [
      ["item", ["LST_HTPLINFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HTPLINFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HTPLINFStruct1"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPSIDYNDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPSIDYNDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HPSIDYNDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPSIDYNDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPSIDYNDTables"),
    :schema_element => [
      ["table1", ["LST_HPSIDYNDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPSIDYNDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPSIDYNDTable1"),
    :schema_element => [
      ["item", ["LST_HPSIDYNDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPSIDYNDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPSIDYNDStruct1"),
    :schema_element => [
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["aCTSTATE", [nil, XSD::QName.new(NsV900R008C02SPC200, "ACTSTATE")], [0, 1]],
      ["rEGSTATE", [nil, XSD::QName.new(NsV900R008C02SPC200, "REGSTATE")], [0, 1]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HAUTHINFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HAUTHINFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HAUTHINFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HAUTHINFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HAUTHINFTables"),
    :schema_element => [
      ["table1", ["LST_HAUTHINFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HAUTHINFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HAUTHINFTable1"),
    :schema_element => [
      ["item", ["LST_HAUTHINFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HAUTHINFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HAUTHINFStruct1"),
    :schema_element => [
      ["aKAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "AKAFLAG")]],
      ["eAAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "EAAFLAG")]],
      ["sDAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "SDAFLAG")]],
      ["tAAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "TAAFLAG")]],
      ["eIAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "EIAFLAG")]],
      ["hDAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "HDAFLAG")]],
      ["nBAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "NBAFLAG")]],
      ["cAAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "CAAFLAG")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNATPLIDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HNATPLIDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNATPLIDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLIDTables"),
    :schema_element => [
      ["table1", ["LST_HNATPLIDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNATPLIDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLIDTable1"),
    :schema_element => [
      ["item", ["LST_HNATPLIDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNATPLIDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLIDStruct1"),
    :schema_element => [
      ["nATPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNNCFLAGType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNNCFLAGType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HNNCFLAGTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNNCFLAGTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNNCFLAGTables"),
    :schema_element => [
      ["table1", ["LST_HNNCFLAGTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNNCFLAGTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNNCFLAGTable1"),
    :schema_element => [
      ["item", ["LST_HNNCFLAGStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNNCFLAGStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNNCFLAGStruct1"),
    :schema_element => [
      ["nNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "NNCFLAG")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNNRLIType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNNRLIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HNNRLITables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNNRLITables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNNRLITables"),
    :schema_element => [
      ["table1", ["LST_HNNRLITable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNNRLITable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNNRLITable1"),
    :schema_element => [
      ["item", ["LST_HNNRLIStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNNRLIStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNNRLIStruct1"),
    :schema_element => [
      ["rLINDEX", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLINDEX")], [0, 1]],
      ["rLI", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLI")], [0, 1]],
      ["rLT", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLT")], [0, 1]],
      ["dEFRLI", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFRLI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HASSPIDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSPIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HASSPIDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HASSPIDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSPIDTables"),
    :schema_element => [
      ["table1", ["LST_HASSPIDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HASSPIDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSPIDTable1"),
    :schema_element => [
      ["item", ["LST_HASSPIDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HASSPIDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSPIDStruct1"),
    :schema_element => [
      ["aSSPID", [nil, XSD::QName.new(NsV900R008C02SPC200, "ASSPID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSRVINDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSRVINDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HSRVINDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSRVINDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSRVINDTables"),
    :schema_element => [
      ["table1", ["LST_HSRVINDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSRVINDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSRVINDTable1"),
    :schema_element => [
      ["item", ["LST_HSRVINDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSRVINDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSRVINDStruct1"),
    :schema_element => [
      ["sRVIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "SRVIND")], [0, 1]],
      ["rEPTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "REPTYPE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HREPDATAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HREPDATAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HREPDATATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HREPDATATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HREPDATATables"),
    :schema_element => [
      ["table1", ["LST_HREPDATATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HREPDATATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HREPDATATable1"),
    :schema_element => [
      ["item", ["LST_HREPDATAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HREPDATAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HREPDATAStruct1"),
    :schema_element => [
      ["rEPDATA", [nil, XSD::QName.new(NsV900R008C02SPC200, "REPDATA")]],
      ["rEPTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "REPTYPE")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HDALIType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HDALIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HDALITables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HDALITables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HDALITables"),
    :schema_element => [
      ["table1", ["LST_HDALITable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HDALITable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HDALITable1"),
    :schema_element => [
      ["item", ["LST_HDALIStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HDALIStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HDALIStruct1"),
    :schema_element => [
      ["iMSALI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSALI")]],
      ["nASSALI", [nil, XSD::QName.new(NsV900R008C02SPC200, "NASSALI")]],
      ["iPV4ADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "IPV4ADDR")]],
      ["iPV6ADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "IPV6ADDR")]],
      ["sIPADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIPADDR")]],
      ["nASSSTATUS", [nil, XSD::QName.new(NsV900R008C02SPC200, "NASSSTATUS")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HMSIDType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HMSIDType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HMSIDTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HMSIDTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HMSIDTables"),
    :schema_element => [
      ["table1", ["LST_HMSIDTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HMSIDTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HMSIDTable1"),
    :schema_element => [
      ["item", ["LST_HMSIDStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HMSIDStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HMSIDStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")], [0, 1]],
      ["iSDN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ISDN")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HASSOCType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSOCType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HASSOCTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HASSOCTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSOCTables"),
    :schema_element => [
      ["table1", ["LST_HASSOCTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HASSOCTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSOCTable1"),
    :schema_element => [
      ["item", ["LST_HASSOCStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HASSOCStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSOCStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNBAINFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNBAINFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HNBAINFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNBAINFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNBAINFTables"),
    :schema_element => [
      ["table1", ["LST_HNBAINFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNBAINFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNBAINFTable1"),
    :schema_element => [
      ["item", ["LST_HNBAINFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNBAINFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNBAINFStruct1"),
    :schema_element => [
      ["lINEIDIDX", [nil, XSD::QName.new(NsV900R008C02SPC200, "LINEIDIDX")]],
      ["lINEID", [nil, XSD::QName.new(NsV900R008C02SPC200, "LINEID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCHGTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCHGTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HCHGTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCHGTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCHGTPLTables"),
    :schema_element => [
      ["table1", ["LST_HCHGTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCHGTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCHGTPLTable1"),
    :schema_element => [
      ["item", ["LST_HCHGTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCHGTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCHGTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["pECF", [nil, XSD::QName.new(NsV900R008C02SPC200, "PECF")]],
      ["sECF", [nil, XSD::QName.new(NsV900R008C02SPC200, "SECF")]],
      ["pCCF", [nil, XSD::QName.new(NsV900R008C02SPC200, "PCCF")]],
      ["sCCF", [nil, XSD::QName.new(NsV900R008C02SPC200, "SCCF")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HVNTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HVNTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HVNTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLTables"),
    :schema_element => [
      ["table1", ["LST_HVNTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HVNTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLTable1"),
    :schema_element => [
      ["item", ["LST_HVNTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HVNTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["mATCHTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "MATCHTYPE")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HVNTPLADDRType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLADDRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HVNTPLADDRTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HVNTPLADDRTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLADDRTables"),
    :schema_element => [
      ["table1", ["LST_HVNTPLADDRTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HVNTPLADDRTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLADDRTable1"),
    :schema_element => [
      ["item", ["LST_HVNTPLADDRStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HVNTPLADDRStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLADDRStruct1"),
    :schema_element => [
      ["vN", [nil, XSD::QName.new(NsV900R008C02SPC200, "VN")]],
      ["vNTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNTYPE")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNATPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HNATPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNATPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLTables"),
    :schema_element => [
      ["table1", ["LST_HNATPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNATPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLTable1"),
    :schema_element => [
      ["item", ["LST_HNATPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNATPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["mATCHTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "MATCHTYPE")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNATPLADDRType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLADDRType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HNATPLADDRTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNATPLADDRTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLADDRTables"),
    :schema_element => [
      ["table1", ["LST_HNATPLADDRTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNATPLADDRTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLADDRTable1"),
    :schema_element => [
      ["item", ["LST_HNATPLADDRStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNATPLADDRStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLADDRStruct1"),
    :schema_element => [
      ["nA", [nil, XSD::QName.new(NsV900R008C02SPC200, "NA")]],
      ["nATYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATYPE")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HOCSITPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HOCSITPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HOCSITPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HOCSITPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HOCSITPLTables"),
    :schema_element => [
      ["table1", ["LST_HOCSITPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HOCSITPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HOCSITPLTable1"),
    :schema_element => [
      ["item", ["LST_HOCSITPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HOCSITPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HOCSITPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["gSMSCFADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "GSMSCFADDR")]],
      ["sK", [nil, XSD::QName.new(NsV900R008C02SPC200, "SK")]],
      ["dEFCALL", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFCALL")]],
      ["iMSSF", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSSF")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HTCSITPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HTCSITPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HTCSITPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HTCSITPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HTCSITPLTables"),
    :schema_element => [
      ["table1", ["LST_HTCSITPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HTCSITPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HTCSITPLTable1"),
    :schema_element => [
      ["item", ["LST_HTCSITPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HTCSITPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HTCSITPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["gSMSCFADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "GSMSCFADDR")]],
      ["sK", [nil, XSD::QName.new(NsV900R008C02SPC200, "SK")]],
      ["dEFCALL", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFCALL")]],
      ["iMSSF", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSSF")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCSIType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCSIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HCSITables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCSITables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCSITables"),
    :schema_element => [
      ["table1", ["LST_HCSITable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCSITable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCSITable1"),
    :schema_element => [
      ["item", ["LST_HCSIStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCSIStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCSIStruct1"),
    :schema_element => [
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")], [0, 1]],
      ["iSDN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ISDN")], [0, 1]],
      ["cSITYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "CSITYPE")], [0, 1]],
      ["cSITPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "CSITPLID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSERPRVType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSERPRVType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HSERPRVTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSERPRVTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSERPRVTables"),
    :schema_element => [
      ["table1", ["LST_HSERPRVTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSERPRVTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSERPRVTable1"),
    :schema_element => [
      ["item", ["LST_HSERPRVStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSERPRVStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSERPRVStruct1"),
    :schema_element => [
      ["sERPRVID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERPRVID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HTAAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HTAAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HTAATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HTAATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HTAATables"),
    :schema_element => [
      ["table1", ["LST_HTAATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HTAATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HTAATable1"),
    :schema_element => [
      ["item", ["LST_HTAAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HTAAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HTAAStruct1"),
    :schema_element => [
      ["tAAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "TAAFLAG")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HUSRPRIORType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HUSRPRIORType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HUSRPRIORTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HUSRPRIORTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HUSRPRIORTables"),
    :schema_element => [
      ["table1", ["LST_HUSRPRIORTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HUSRPRIORTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HUSRPRIORTable1"),
    :schema_element => [
      ["item", ["LST_HUSRPRIORStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HUSRPRIORStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HUSRPRIORStruct1"),
    :schema_element => [
      ["uSRPRIOR", [nil, XSD::QName.new(NsV900R008C02SPC200, "USRPRIOR")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSDAINFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSDAINFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HSDAINFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSDAINFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSDAINFTables"),
    :schema_element => [
      ["table1", ["LST_HSDAINFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSDAINFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSDAINFTable1"),
    :schema_element => [
      ["item", ["LST_HSDAINFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSDAINFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSDAINFStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["hUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "HUSERNAME")], [0, 1]],
      ["pWD", [nil, XSD::QName.new(NsV900R008C02SPC200, "PWD")], [0, 1]],
      ["rEALM", [nil, XSD::QName.new(NsV900R008C02SPC200, "REALM")], [0, 1]],
      ["hA1", [nil, XSD::QName.new(NsV900R008C02SPC200, "HA1")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HLRIType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HLRIType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HLRITables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HLRITables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HLRITables"),
    :schema_element => [
      ["table1", ["LST_HLRITable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HLRITable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HLRITable1"),
    :schema_element => [
      ["item", ["LST_HLRIStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HLRIStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HLRIStruct1"),
    :schema_element => [
      ["lRI", [nil, XSD::QName.new(NsV900R008C02SPC200, "LRI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSIFCType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HSIFCTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSIFCTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCTables"),
    :schema_element => [
      ["table1", ["LST_HSIFCTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSIFCTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCTable1"),
    :schema_element => [
      ["item", ["LST_HSIFCStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSIFCStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCStruct1"),
    :schema_element => [
      ["sIFCID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSIFCTPLType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCTPLType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HSIFCTPLTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSIFCTPLTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCTPLTables"),
    :schema_element => [
      ["table1", ["LST_HSIFCTPLTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSIFCTPLTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCTPLTable1"),
    :schema_element => [
      ["item", ["LST_HSIFCTPLStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSIFCTPLStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCTPLStruct1"),
    :schema_element => [
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSIFCINFType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCINFType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HSIFCINFTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSIFCINFTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCINFTables"),
    :schema_element => [
      ["table1", ["LST_HSIFCINFTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSIFCINFTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCINFTable1"),
    :schema_element => [
      ["item", ["LST_HSIFCINFStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSIFCINFStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCINFStruct1"),
    :schema_element => [
      ["iFCNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "IFCNAME")]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")]],
      ["pARTIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "PARTIND")]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")]],
      ["dEFHND", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFHND")]],
      ["sERVINFO", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVINFO")]],
      ["tRIGPT", [nil, XSD::QName.new(NsV900R008C02SPC200, "TRIGPT")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HESRNType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HESRNType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HESRNTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HESRNTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HESRNTables"),
    :schema_element => [
      ["table1", ["LST_HESRNTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HESRNTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HESRNTable1"),
    :schema_element => [
      ["item", ["LST_HESRNStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HESRNStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HESRNStruct1"),
    :schema_element => [
      ["eSRN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ESRN")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HONEKEYType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HONEKEYType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HONEKEYTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HONEKEYTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HONEKEYTables"),
    :schema_element => [
      ["table1", ["LST_HONEKEYTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HONEKEYTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HONEKEYTable1"),
    :schema_element => [
      ["item", ["LST_HONEKEYStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HONEKEYStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HONEKEYStruct1"),
    :schema_element => [
      ["wUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "WUSERNAME")]],
      ["hTOKEN", [nil, XSD::QName.new(NsV900R008C02SPC200, "HTOKEN")]],
      ["aP", [nil, XSD::QName.new(NsV900R008C02SPC200, "AP")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCAAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HCAATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCAATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAATables"),
    :schema_element => [
      ["table1", ["LST_HCAATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCAATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAATable1"),
    :schema_element => [
      ["item", ["LST_HCAAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCAAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAAStruct1"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["cAVEAKAFLG", [nil, XSD::QName.new(NsV900R008C02SPC200, "CAVEAKAFLG")]],
      ["uIMID", [nil, XSD::QName.new(NsV900R008C02SPC200, "UIMID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPBXUType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPBXUType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HPBXUTables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPBXUTables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPBXUTables"),
    :schema_element => [
      ["table1", ["LST_HPBXUTable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPBXUTable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPBXUTable1"),
    :schema_element => [
      ["item", ["LST_HPBXUStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPBXUStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPBXUStruct1"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")]],
      ["pBXUSERFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "PBXUSERFLAG")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPREPDATAType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPREPDATAType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]],
      ["resultData", ["LST_HPREPDATATables", XSD::QName.new(NsV900R008C02SPC200, "ResultData")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPREPDATATables,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPREPDATATables"),
    :schema_element => [
      ["table1", ["LST_HPREPDATATable1", XSD::QName.new(NsV900R008C02SPC200, "Table1")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPREPDATATable1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPREPDATATable1"),
    :schema_element => [
      ["item", ["LST_HPREPDATAStruct1[]", XSD::QName.new(NsV900R008C02SPC200, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPREPDATAStruct1,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "LST_HPREPDATAStruct1"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]],
      ["sELFSERVICE", [nil, XSD::QName.new(NsV900R008C02SPC200, "SELFSERVICE")]],
      ["sMSCADDRESS", [nil, XSD::QName.new(NsV900R008C02SPC200, "SMSCADDRESS")]],
      ["lOCATIONINFORMATION", [nil, XSD::QName.new(NsV900R008C02SPC200, "LOCATIONINFORMATION")]],
      ["nPINDICATOR", [nil, XSD::QName.new(NsV900R008C02SPC200, "NPINDICATOR")]],
      ["cICINDICATOR", [nil, XSD::QName.new(NsV900R008C02SPC200, "CICINDICATOR")]],
      ["bINDINDICATOR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BINDINDICATOR")]]
    ]
  )

  LiteralRegistry.register(
    :class => OperationFault,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "OperationFault"),
    :schema_element => [
      ["faultReason", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ResultType,
    :schema_type => XSD::QName.new(NsV900R008C02SPC200, "ResultType"),
    :schema_element => [
      ["resultCode", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultCode")]],
      ["resultDesc", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "ResultDesc")]]
    ]
  )

  LiteralRegistry.register(
    :class => RequestCommonInfoType,
    :schema_name => XSD::QName.new(NsHSSV900R008C02SPC200, "RequestCommonInfo"),
    :schema_element => [
      ["sessionID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "SessionID")]],
      ["mEID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "MEID")]],
      ["sourceMEID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "SourceMEID")]],
      ["serialID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "SerialID")]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsHSSV900R008C02SPC200, "UserName")]],
      ["sync", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "Sync")]],
      ["reserve", ["SOAP::SOAPString", XSD::QName.new(NsHSSV900R008C02SPC200, "Reserve")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ResponseCommonInfoType,
    :schema_name => XSD::QName.new(NsHSSV900R008C02SPC200, "ResponseCommonInfo"),
    :schema_element => [
      ["commandName", ["SOAP::SOAPString", XSD::QName.new(NsHSSV900R008C02SPC200, "CommandName")]],
      ["sessionID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "SessionID")]],
      ["requestID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "RequestID")]],
      ["mEID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "MEID")]],
      ["sourceMEID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "SourceMEID")]],
      ["serialID", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsHSSV900R008C02SPC200, "SerialID")]],
      ["timeStamp", ["SOAP::SOAPString", XSD::QName.new(NsHSSV900R008C02SPC200, "TimeStamp")]],
      ["svrType", ["SOAP::SOAPString", XSD::QName.new(NsHSSV900R008C02SPC200, "SvrType")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_OP,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_OP"),
    :schema_element => [
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")]],
      ["oPVALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPVALUE")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_OPResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_OPResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_OP,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_OP"),
    :schema_element => [
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_OPResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_OPResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_OP,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_OP"),
    :schema_element => [
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")]],
      ["oPVALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPVALUE")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_OPResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_OPResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_OP,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_OP"),
    :schema_element => [
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_OPResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_OPResponse"),
    :schema_element => [
      ["result", ["LST_OPType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_OP,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_OP"),
    :schema_element => [
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")]],
      ["oPVALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPVALUE")]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_OPResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_OPResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_AMF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_AMF"),
    :schema_element => [
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")]],
      ["aMFVALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFVALUE")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_AMFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_AMFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_AMF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_AMF"),
    :schema_element => [
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_AMFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_AMFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_AMF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_AMF"),
    :schema_element => [
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")]],
      ["aMFVALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFVALUE")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_AMFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_AMFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_AMF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_AMF"),
    :schema_element => [
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_AMFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_AMFResponse"),
    :schema_element => [
      ["result", ["LST_AMFType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_AMF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_AMF"),
    :schema_element => [
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")]],
      ["aMFVALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFVALUE")]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_AMFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_AMFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_K4,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_K4"),
    :schema_element => [
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")]],
      ["k4VALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4VALUE")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_K4Response,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_K4Response"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_K4,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_K4"),
    :schema_element => [
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_K4Response,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_K4Response"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_K4,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_K4"),
    :schema_element => [
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")]],
      ["k4VALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4VALUE")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_K4Response,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_K4Response"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_K4,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_K4"),
    :schema_element => [
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_K4Response,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_K4Response"),
    :schema_element => [
      ["result", ["LST_K4Type", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_K4,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_K4"),
    :schema_element => [
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")]],
      ["k4VALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4VALUE")]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_K4Response,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_K4Response"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_KI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_KI"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["k", [nil, XSD::QName.new(NsV900R008C02SPC200, "K")]],
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")]],
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")]],
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")]],
      ["oPC", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPC")], [0, 1]],
      ["oPCK4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPCK4SNO")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_KIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_KIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_KI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_KI"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_KIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_KIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_KI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_KI"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["k", [nil, XSD::QName.new(NsV900R008C02SPC200, "K")], [0, 1]],
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")], [0, 1]],
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")], [0, 1]],
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")], [0, 1]],
      ["oPC", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPC")], [0, 1]],
      ["oPCK4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPCK4SNO")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_KIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_KIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_KI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_KI"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_KIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_KIResponse"),
    :schema_element => [
      ["result", ["LST_KIType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_KI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_KI"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["k", [nil, XSD::QName.new(NsV900R008C02SPC200, "K")]],
      ["k4VALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4VALUE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_KIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_KIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_OPC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_OPC"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["oPC", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPC")]],
      ["oPCK4VALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPCK4VALUE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_OPCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_OPCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_SUB,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_SUB"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")]],
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["iMPUTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPUTYPE")], [0, 1]],
      ["pBXUSERFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "PBXUSERFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_SUBResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_SUBResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_SUB,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_SUB"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_SUBResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_SUBResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_SUBID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_SUBID"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")]],
      ["nEWSUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "NEWSUBID")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_SUBIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_SUBIDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SUB,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_SUB"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")], [0, 1]],
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SUBResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_SUBResponse"),
    :schema_element => [
      ["result", ["LST_SUBType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_IMPI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_IMPI"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")]],
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["iMPUTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPUTYPE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_IMPIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_IMPIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_IMPI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_IMPI"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_IMPIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_IMPIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_IMPI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_IMPI"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["nEWIMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "NEWIMPI")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_IMPIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_IMPIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_IMPU,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_IMPU"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["iMPUTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPUTYPE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_IMPUResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_IMPUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_IMPU,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_IMPU"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_IMPUResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_IMPUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_IMPU,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_IMPU"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["nEWIMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "NEWIMPU")]],
      ["nEWIMPUTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "NEWIMPUTYPE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_IMPUResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_IMPUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_IMPUSHARE,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_IMPUSHARE"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["sHARED", [nil, XSD::QName.new(NsV900R008C02SPC200, "SHARED")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_IMPUSHAREResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_IMPUSHAREResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_IRS,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_IRS"),
    :schema_element => [
      ["iRSID", [nil, XSD::QName.new(NsV900R008C02SPC200, "IRSID")]],
      ["iMPULIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPULIST")], [0, 1]],
      ["pUSILIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSILIST")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_IRSResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_IRSResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_DEFIMPU,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_DEFIMPU"),
    :schema_element => [
      ["iRSID", [nil, XSD::QName.new(NsV900R008C02SPC200, "IRSID")]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_DEFIMPUResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_DEFIMPUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_CHARGID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_CHARGID"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]],
      ["cHARGTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "CHARGTPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_CHARGIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_CHARGIDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CHARGID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_CHARGID"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CHARGIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_CHARGIDResponse"),
    :schema_element => [
      ["result", ["LST_CHARGIDType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_BAR,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_BAR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["bAR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BAR")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_BARResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_BARResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_BAR,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_BAR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_BARResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_BARResponse"),
    :schema_element => [
      ["result", ["LST_BARType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_REGAUTH,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_REGAUTH"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["rEGAUTH", [nil, XSD::QName.new(NsV900R008C02SPC200, "REGAUTH")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_REGAUTHResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_REGAUTHResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_REGAUTH,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_REGAUTH"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_REGAUTHResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_REGAUTHResponse"),
    :schema_element => [
      ["result", ["LST_REGAUTHType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_VNTPLID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_VNTPLID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["vNTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNTPLID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_VNTPLIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_VNTPLIDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VNTPLID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VNTPLIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLIDResponse"),
    :schema_element => [
      ["result", ["LST_VNTPLIDType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_MEDIAID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_MEDIAID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["mEDIAID", [nil, XSD::QName.new(NsV900R008C02SPC200, "MEDIAID")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_MEDIAIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_MEDIAIDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_MEDIAID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_MEDIAID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_MEDIAIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_MEDIAIDResponse"),
    :schema_element => [
      ["result", ["LST_MEDIAIDType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_MOCAP,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_MOCAP"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")], [0, 1]],
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]],
      ["mCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "MCAP")], [0, 1]],
      ["oCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "OCAP")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_MOCAPResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_MOCAPResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_MOCAP,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_MOCAP"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")], [0, 1]],
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_MOCAPResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_MOCAPResponse"),
    :schema_element => [
      ["result", ["LST_MOCAPType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_EIA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_EIA"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["eIAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "EIAFLAG")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_EIAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_EIAResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_EIA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_EIA"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_EIAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_EIAResponse"),
    :schema_element => [
      ["result", ["LST_EIAType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_EAA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_EAA"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["eAAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "EAAFLAG")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_EAAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_EAAResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_EAA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_EAA"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_EAAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_EAAResponse"),
    :schema_element => [
      ["result", ["LST_EAAType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_AS,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_AS"),
    :schema_element => [
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")]],
      ["aS", [nil, XSD::QName.new(NsV900R008C02SPC200, "AS")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_ASResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_ASResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_AS,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_AS"),
    :schema_element => [
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_ASResponse"),
    :schema_element => [
      ["result", ["LST_ASType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_VNCFLAG,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_VNCFLAG"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["vNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNCFLAG")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_VNCFLAGResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_VNCFLAGResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VNCFLAG,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_VNCFLAG"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VNCFLAGResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_VNCFLAGResponse"),
    :schema_element => [
      ["result", ["LST_VNCFLAGType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_IFC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_IFC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")]],
      ["pARTIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "PARTIND")], [0, 1]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")]],
      ["dEFHND", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFHND")], [0, 1]],
      ["sERVINFO", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVINFO")], [0, 1]],
      ["tRIGPT", [nil, XSD::QName.new(NsV900R008C02SPC200, "TRIGPT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_IFCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_IFCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_IFC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_IFC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_IFCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_IFCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_IFC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_IFC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")]],
      ["nEWPRI", [nil, XSD::QName.new(NsV900R008C02SPC200, "NEWPRI")], [0, 1]],
      ["pARTIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "PARTIND")], [0, 1]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")], [0, 1]],
      ["dEFHND", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFHND")], [0, 1]],
      ["sERVINFO", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVINFO")], [0, 1]],
      ["tRIGPT", [nil, XSD::QName.new(NsV900R008C02SPC200, "TRIGPT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_IFCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_IFCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IFC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_IFC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IFCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_IFCResponse"),
    :schema_element => [
      ["result", ["LST_IFCType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CAPSCSCF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_CAPSCSCF"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")], [0, 1]],
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]],
      ["sCSCF", [nil, XSD::QName.new(NsV900R008C02SPC200, "SCSCF")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CAPSCSCFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_CAPSCSCFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CAPSCSCF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_CAPSCSCF"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")], [0, 1]],
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]],
      ["sCSCF", [nil, XSD::QName.new(NsV900R008C02SPC200, "SCSCF")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CAPSCSCFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_CAPSCSCFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CAPSCSCF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_CAPSCSCF"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")], [0, 1]],
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CAPSCSCFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_CAPSCSCFResponse"),
    :schema_element => [
      ["result", ["LST_CAPSCSCFType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_SPSHARE,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_SPSHARE"),
    :schema_element => [
      ["bASEIMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "BASEIMPU")]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_SPSHAREResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_SPSHAREResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_SPSHARE,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_SPSHARE"),
    :schema_element => [
      ["iMPULIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPULIST")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_SPSHAREResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_SPSHAREResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SPSHARE,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_SPSHARE"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SPSHAREResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_SPSHAREResponse"),
    :schema_element => [
      ["result", ["LST_SPSHAREType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DRG_USER,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "DRG_USER"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DRG_USERResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "DRG_USERResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_DYNDATA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_DYNDATA"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_DYNDATAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_DYNDATAResponse"),
    :schema_element => [
      ["result", ["LST_DYNDATAType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSUBDATA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSUBDATA"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSUBDATAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSUBDATAResponse"),
    :schema_element => [
      ["result", ["LST_ASSUBDATAType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_PSI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_PSI"),
    :schema_element => [
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")]],
      ["pUSITYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSITYPE")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_PSIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_PSIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_PSI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_PSI"),
    :schema_element => [
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_PSIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_PSIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PSI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_PSI"),
    :schema_element => [
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PSIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_PSIResponse"),
    :schema_element => [
      ["result", ["LST_PSIType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HDAINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HDAINF"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["hUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "HUSERNAME")]],
      ["pWD", [nil, XSD::QName.new(NsV900R008C02SPC200, "PWD")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HDAINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HDAINFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HDAINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HDAINF"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HDAINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HDAINFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HDAINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HDAINF"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["hUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "HUSERNAME")], [0, 1]],
      ["pWD", [nil, XSD::QName.new(NsV900R008C02SPC200, "PWD")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HDAINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HDAINFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HDAINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HDAINF"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["hUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "HUSERNAME")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HDAINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HDAINFResponse"),
    :schema_element => [
      ["result", ["LST_HDAINFType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_HDAPWD,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_HDAPWD"),
    :schema_element => [
      ["hUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "HUSERNAME")]],
      ["pWD", [nil, XSD::QName.new(NsV900R008C02SPC200, "PWD")]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_HDAPWDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_HDAPWDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_IMPUTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_IMPUTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["vNTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNTPLID")], [0, 1]],
      ["nATPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATPLID")], [0, 1]],
      ["bAR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BAR")]],
      ["rEGAUTH", [nil, XSD::QName.new(NsV900R008C02SPC200, "REGAUTH")]],
      ["vNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNCFLAG")]],
      ["nNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "NNCFLAG")]],
      ["sERPRVID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERPRVID")], [0, 1]],
      ["lRI", [nil, XSD::QName.new(NsV900R008C02SPC200, "LRI")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_IMPUTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_IMPUTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_IMPUTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_IMPUTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_IMPUTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_IMPUTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_IMPUTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_IMPUTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["vNTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNTPLID")], [0, 1]],
      ["nATPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATPLID")], [0, 1]],
      ["bAR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BAR")], [0, 1]],
      ["rEGAUTH", [nil, XSD::QName.new(NsV900R008C02SPC200, "REGAUTH")], [0, 1]],
      ["vNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNCFLAG")], [0, 1]],
      ["nNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "NNCFLAG")], [0, 1]],
      ["sERPRVID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERPRVID")], [0, 1]],
      ["lRI", [nil, XSD::QName.new(NsV900R008C02SPC200, "LRI")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_IMPUTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_IMPUTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IMPUTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_IMPUTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IMPUTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_IMPUTPLResponse"),
    :schema_element => [
      ["result", ["LST_IMPUTPLType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_PUSITPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_PUSITPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["aS", [nil, XSD::QName.new(NsV900R008C02SPC200, "AS")], [0, 1]],
      ["bAR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BAR")]],
      ["aCTSTATE", [nil, XSD::QName.new(NsV900R008C02SPC200, "ACTSTATE")]],
      ["sERPRVID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERPRVID")], [0, 1]],
      ["lRI", [nil, XSD::QName.new(NsV900R008C02SPC200, "LRI")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_PUSITPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_PUSITPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_PUSITPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_PUSITPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_PUSITPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_PUSITPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_PUSITPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_PUSITPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["aS", [nil, XSD::QName.new(NsV900R008C02SPC200, "AS")], [0, 1]],
      ["bAR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BAR")], [0, 1]],
      ["aCTSTATE", [nil, XSD::QName.new(NsV900R008C02SPC200, "ACTSTATE")], [0, 1]],
      ["sERPRVID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERPRVID")], [0, 1]],
      ["lRI", [nil, XSD::QName.new(NsV900R008C02SPC200, "LRI")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_PUSITPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_PUSITPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PUSITPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_PUSITPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PUSITPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_PUSITPLResponse"),
    :schema_element => [
      ["result", ["LST_PUSITPLType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_IFCTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_IFCTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")]],
      ["pARTIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "PARTIND")], [0, 1]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")]],
      ["dEFHND", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFHND")], [0, 1]],
      ["sERVINFO", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVINFO")], [0, 1]],
      ["tRIGPT", [nil, XSD::QName.new(NsV900R008C02SPC200, "TRIGPT")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_IFCTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_IFCTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_IFCTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_IFCTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_IFCTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_IFCTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_IFCTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_IFCTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")], [0, 1]],
      ["pARTIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "PARTIND")], [0, 1]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")], [0, 1]],
      ["dEFHND", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFHND")], [0, 1]],
      ["sERVINFO", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVINFO")], [0, 1]],
      ["tRIGPT", [nil, XSD::QName.new(NsV900R008C02SPC200, "TRIGPT")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_IFCTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_IFCTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IFCTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_IFCTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_IFCTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_IFCTPLResponse"),
    :schema_element => [
      ["result", ["LST_IFCTPLType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_SPTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_SPTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["mEDIAID", [nil, XSD::QName.new(NsV900R008C02SPC200, "MEDIAID")], [0, 1]],
      ["iFCLIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "IFCLIST")], [0, 1]],
      ["sIFCLIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCLIST")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_SPTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_SPTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_SPTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_SPTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_SPTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_SPTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_SPTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_SPTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["mEDIAID", [nil, XSD::QName.new(NsV900R008C02SPC200, "MEDIAID")], [0, 1]],
      ["iFCLIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "IFCLIST")], [0, 1]],
      ["sIFCLIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCLIST")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_SPTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_SPTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SPTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_SPTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SPTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_SPTPLResponse"),
    :schema_element => [
      ["result", ["LST_SPTPLType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_AKATPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_AKATPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")]],
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")]],
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")]],
      ["oPC", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPC")], [0, 1]],
      ["oPCK4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPCK4SNO")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_AKATPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_AKATPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_AKATPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_AKATPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_AKATPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_AKATPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_AKATPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_AKATPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")], [0, 1]],
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")], [0, 1]],
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")], [0, 1]],
      ["oPC", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPC")], [0, 1]],
      ["oPCK4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPCK4SNO")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_AKATPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_AKATPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_AKATPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_AKATPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_AKATPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_AKATPLResponse"),
    :schema_element => [
      ["result", ["LST_AKATPLType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CAPTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_CAPTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["mCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "MCAP")], [0, 1]],
      ["oCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "OCAP")], [0, 1]],
      ["sCSCFLIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "SCSCFLIST")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CAPTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_CAPTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CAPTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_CAPTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CAPTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_CAPTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_CAPTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_CAPTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["mCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "MCAP")], [0, 1]],
      ["oCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "OCAP")], [0, 1]],
      ["sCSCFLIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "SCSCFLIST")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_CAPTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_CAPTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CAPTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_CAPTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CAPTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_CAPTPLResponse"),
    :schema_element => [
      ["result", ["LST_CAPTPLType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_TPLINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_TPLINF"),
    :schema_element => [
      ["tPLTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLTYPE")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_TPLINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_TPLINFResponse"),
    :schema_element => [
      ["result", ["LST_TPLINFType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_TPLIFC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_TPLIFC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["iFCTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "IFCTPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_TPLIFCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_TPLIFCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_TPLIMPU,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_TPLIMPU"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["iMPUTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPUTYPE")], [0, 1]],
      ["sPTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SPTPLID")], [0, 1]],
      ["iMPUTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPUTPLID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_TPLIMPUResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_TPLIMPUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_TPLKI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_TPLKI"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["k", [nil, XSD::QName.new(NsV900R008C02SPC200, "K")]],
      ["aKATPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "AKATPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_TPLKIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_TPLKIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_TPLPSI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_TPLPSI"),
    :schema_element => [
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")]],
      ["pUSITYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSITYPE")]],
      ["cAPTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "CAPTPLID")], [0, 1]],
      ["cHARGTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "CHARGTPLID")], [0, 1]],
      ["sPTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SPTPLID")], [0, 1]],
      ["pUSITPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSITPLID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_TPLPSIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_TPLPSIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_TPLPUSI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_TPLPUSI"),
    :schema_element => [
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")]],
      ["pUSITYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSITYPE")]],
      ["sPTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SPTPLID")], [0, 1]],
      ["pUSITPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSITPLID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_TPLPUSIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_TPLPUSIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_TPLSUB,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_TPLSUB"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")]],
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["iMPUTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPUTYPE")], [0, 1]],
      ["cAPTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "CAPTPLID")], [0, 1]],
      ["cHARGTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "CHARGTPLID")], [0, 1]],
      ["sPTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SPTPLID")], [0, 1]],
      ["iMPUTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPUTPLID")], [0, 1]],
      ["pBXUSERFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "PBXUSERFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_TPLSUBResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_TPLSUBResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_TPLIMPI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_TPLIMPI"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")]],
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["iMPUTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPUTYPE")], [0, 1]],
      ["cHARGTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "CHARGTPLID")], [0, 1]],
      ["sPTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SPTPLID")], [0, 1]],
      ["iMPUTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPUTPLID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_TPLIMPIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_TPLIMPIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PSIDYND,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_PSIDYND"),
    :schema_element => [
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_PSIDYNDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_PSIDYNDResponse"),
    :schema_element => [
      ["result", ["LST_PSIDYNDType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_AUTHINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_AUTHINF"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_AUTHINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_AUTHINFResponse"),
    :schema_element => [
      ["result", ["LST_AUTHINFType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_NATPLID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_NATPLID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["nATPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_NATPLIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_NATPLIDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NATPLID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NATPLIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLIDResponse"),
    :schema_element => [
      ["result", ["LST_NATPLIDType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_NNCFLAG,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_NNCFLAG"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["nNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "NNCFLAG")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_NNCFLAGResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_NNCFLAGResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NNCFLAG,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_NNCFLAG"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NNCFLAGResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_NNCFLAGResponse"),
    :schema_element => [
      ["result", ["LST_NNCFLAGType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_NNRLI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_NNRLI"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["rLINDEX", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLINDEX")]],
      ["rLI", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLI")]],
      ["rLT", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLT")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_NNRLIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_NNRLIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_NNRLI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_NNRLI"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["rLINDEX", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLINDEX")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_NNRLIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_NNRLIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_NNRLI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_NNRLI"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["rLINDEX", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLINDEX")]],
      ["rLI", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLI")], [0, 1]],
      ["rLT", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLT")], [0, 1]],
      ["sETDRLI", [nil, XSD::QName.new(NsV900R008C02SPC200, "SETDRLI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_NNRLIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_NNRLIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NNRLI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_NNRLI"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["rLINDEX", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLINDEX")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NNRLIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_NNRLIResponse"),
    :schema_element => [
      ["result", ["LST_NNRLIType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_ASSPID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_ASSPID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["aSSPID", [nil, XSD::QName.new(NsV900R008C02SPC200, "ASSPID")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_ASSPIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_ASSPIDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_ASSPID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_ASSPID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["aSSPID", [nil, XSD::QName.new(NsV900R008C02SPC200, "ASSPID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_ASSPIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_ASSPIDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSPID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSPID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSPIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSPIDResponse"),
    :schema_element => [
      ["result", ["LST_ASSPIDType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_ALIASPU,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_ALIASPU"),
    :schema_element => [
      ["aLIASID", [nil, XSD::QName.new(NsV900R008C02SPC200, "ALIASID")]],
      ["iMPULIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPULIST")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_ALIASPUResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_ALIASPUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_REPDATA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_REPDATA"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["rEPDATA", [nil, XSD::QName.new(NsV900R008C02SPC200, "REPDATA")], [0, 1]],
      ["sERVICEID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVICEID")], [0, 1]],
      ["sERVICEDATA", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVICEDATA")], [0, 1]],
      ["rEPTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "REPTYPE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_REPDATAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_REPDATAResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SRVIND,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_SRVIND"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["rEPTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "REPTYPE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SRVINDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_SRVINDResponse"),
    :schema_element => [
      ["result", ["LST_SRVINDType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_REPDATA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_REPDATA"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["rEPTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "REPTYPE")], [0, 1]],
      ["sRVIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "SRVIND")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_REPDATAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_REPDATAResponse"),
    :schema_element => [
      ["result", ["LST_REPDATAType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_DALI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_DALI"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_DALIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_DALIResponse"),
    :schema_element => [
      ["result", ["LST_DALIType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_IMSI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_IMSI"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]],
      ["iSDN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ISDN")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_IMSIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_IMSIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_IMSI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_IMSI"),
    :schema_element => [
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_IMSIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_IMSIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_IMSI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_IMSI"),
    :schema_element => [
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]],
      ["nEWIMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "NEWIMSI")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_IMSIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_IMSIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_ISDN,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_ISDN"),
    :schema_element => [
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]],
      ["iSDN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ISDN")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_ISDNResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_ISDNResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_ISDN,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_ISDN"),
    :schema_element => [
      ["iSDN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ISDN")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_ISDNResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_ISDNResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_ISDN,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_ISDN"),
    :schema_element => [
      ["iSDN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ISDN")]],
      ["nEWISDN", [nil, XSD::QName.new(NsV900R008C02SPC200, "NEWISDN")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_ISDNResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_ISDNResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_MSID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_MSID"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")], [0, 1]],
      ["iSDN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ISDN")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_MSIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_MSIDResponse"),
    :schema_element => [
      ["result", ["LST_MSIDType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_ASSOC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_ASSOC"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_ASSOCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_ASSOCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_ASSOC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_ASSOC"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_ASSOCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_ASSOCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSOC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSOC"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ASSOCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_ASSOCResponse"),
    :schema_element => [
      ["result", ["LST_ASSOCType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_NBAINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_NBAINF"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["lINEIDIDX", [nil, XSD::QName.new(NsV900R008C02SPC200, "LINEIDIDX")]],
      ["lINEID", [nil, XSD::QName.new(NsV900R008C02SPC200, "LINEID")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_NBAINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_NBAINFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_NBAINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_NBAINF"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["lINEIDIDX", [nil, XSD::QName.new(NsV900R008C02SPC200, "LINEIDIDX")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_NBAINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_NBAINFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NBAINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_NBAINF"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NBAINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_NBAINFResponse"),
    :schema_element => [
      ["result", ["LST_NBAINFType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CHGTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_CHGTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["pECF", [nil, XSD::QName.new(NsV900R008C02SPC200, "PECF")], [0, 1]],
      ["sECF", [nil, XSD::QName.new(NsV900R008C02SPC200, "SECF")], [0, 1]],
      ["pCCF", [nil, XSD::QName.new(NsV900R008C02SPC200, "PCCF")], [0, 1]],
      ["sCCF", [nil, XSD::QName.new(NsV900R008C02SPC200, "SCCF")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_CHGTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_CHGTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CHGTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_CHGTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_CHGTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_CHGTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_CHGTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_CHGTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["pECF", [nil, XSD::QName.new(NsV900R008C02SPC200, "PECF")], [0, 1]],
      ["sECF", [nil, XSD::QName.new(NsV900R008C02SPC200, "SECF")], [0, 1]],
      ["pCCF", [nil, XSD::QName.new(NsV900R008C02SPC200, "PCCF")], [0, 1]],
      ["sCCF", [nil, XSD::QName.new(NsV900R008C02SPC200, "SCCF")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_CHGTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_CHGTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CHGTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_CHGTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CHGTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_CHGTPLResponse"),
    :schema_element => [
      ["result", ["LST_CHGTPLType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_VNTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_VNTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["mATCHTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "MATCHTYPE")]],
      ["vN", [nil, XSD::QName.new(NsV900R008C02SPC200, "VN")]],
      ["vNTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNTYPE")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_VNTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_VNTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_VNTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_VNTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_VNTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_VNTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_VNTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_VNTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["mATCHTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "MATCHTYPE")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_VNTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_VNTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VNTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VNTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLResponse"),
    :schema_element => [
      ["result", ["LST_VNTPLType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_VNTPLADDR,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_VNTPLADDR"),
    :schema_element => [
      ["vNTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNTPLID")]],
      ["vN", [nil, XSD::QName.new(NsV900R008C02SPC200, "VN")]],
      ["vNTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNTYPE")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_VNTPLADDRResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_VNTPLADDRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_VNTPLADDR,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_VNTPLADDR"),
    :schema_element => [
      ["vNTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNTPLID")]],
      ["vN", [nil, XSD::QName.new(NsV900R008C02SPC200, "VN")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_VNTPLADDRResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_VNTPLADDRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VNTPLADDR,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLADDR"),
    :schema_element => [
      ["vNTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNTPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_VNTPLADDRResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_VNTPLADDRResponse"),
    :schema_element => [
      ["result", ["LST_VNTPLADDRType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_NATPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_NATPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["mATCHTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "MATCHTYPE")]],
      ["nA", [nil, XSD::QName.new(NsV900R008C02SPC200, "NA")]],
      ["nATYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATYPE")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_NATPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_NATPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_NATPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_NATPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_NATPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_NATPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_NATPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_NATPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["mATCHTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "MATCHTYPE")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_NATPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_NATPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NATPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NATPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLResponse"),
    :schema_element => [
      ["result", ["LST_NATPLType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_NATPLADDR,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_NATPLADDR"),
    :schema_element => [
      ["nATPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATPLID")]],
      ["nA", [nil, XSD::QName.new(NsV900R008C02SPC200, "NA")]],
      ["nATYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATYPE")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_NATPLADDRResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_NATPLADDRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_NATPLADDR,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_NATPLADDR"),
    :schema_element => [
      ["nATPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATPLID")]],
      ["nA", [nil, XSD::QName.new(NsV900R008C02SPC200, "NA")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_NATPLADDRResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_NATPLADDRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NATPLADDR,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLADDR"),
    :schema_element => [
      ["nATPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_NATPLADDRResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_NATPLADDRResponse"),
    :schema_element => [
      ["result", ["LST_NATPLADDRType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_OCSITPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_OCSITPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["gSMSCFADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "GSMSCFADDR")]],
      ["sK", [nil, XSD::QName.new(NsV900R008C02SPC200, "SK")]],
      ["dEFCALL", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFCALL")]],
      ["iMSSF", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSSF")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_OCSITPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_OCSITPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_OCSITPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_OCSITPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_OCSITPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_OCSITPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_OCSITPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_OCSITPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["gSMSCFADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "GSMSCFADDR")], [0, 1]],
      ["sK", [nil, XSD::QName.new(NsV900R008C02SPC200, "SK")], [0, 1]],
      ["dEFCALL", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFCALL")], [0, 1]],
      ["iMSSF", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSSF")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_OCSITPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_OCSITPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_OCSITPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_OCSITPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_OCSITPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_OCSITPLResponse"),
    :schema_element => [
      ["result", ["LST_OCSITPLType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_TCSITPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_TCSITPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["gSMSCFADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "GSMSCFADDR")]],
      ["sK", [nil, XSD::QName.new(NsV900R008C02SPC200, "SK")]],
      ["dEFCALL", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFCALL")]],
      ["iMSSF", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSSF")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_TCSITPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_TCSITPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_TCSITPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_TCSITPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_TCSITPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_TCSITPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_TCSITPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_TCSITPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["gSMSCFADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "GSMSCFADDR")], [0, 1]],
      ["sK", [nil, XSD::QName.new(NsV900R008C02SPC200, "SK")], [0, 1]],
      ["dEFCALL", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFCALL")], [0, 1]],
      ["iMSSF", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSSF")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_TCSITPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_TCSITPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_TCSITPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_TCSITPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_TCSITPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_TCSITPLResponse"),
    :schema_element => [
      ["result", ["LST_TCSITPLType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_CSI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_CSI"),
    :schema_element => [
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]],
      ["iSDN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ISDN")]],
      ["cSITYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "CSITYPE")]],
      ["cSITPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "CSITPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_CSIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_CSIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CSI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_CSI"),
    :schema_element => [
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]],
      ["cSITYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "CSITYPE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_CSIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_CSIResponse"),
    :schema_element => [
      ["result", ["LST_CSIType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_SERPRV,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_SERPRV"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["sERPRVID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERPRVID")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_SERPRVResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_SERPRVResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_SERPRV,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_SERPRV"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_SERPRVResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_SERPRVResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_SERPRV,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_SERPRV"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["sERPRVID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERPRVID")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_SERPRVResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_SERPRVResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SERPRV,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_SERPRV"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SERPRVResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_SERPRVResponse"),
    :schema_element => [
      ["result", ["LST_SERPRVType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_TAA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_TAA"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["tAAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "TAAFLAG")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_TAAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_TAAResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_TAA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_TAA"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_TAAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_TAAResponse"),
    :schema_element => [
      ["result", ["LST_TAAType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_USRPRIOR,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_USRPRIOR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["uSRPRIOR", [nil, XSD::QName.new(NsV900R008C02SPC200, "USRPRIOR")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_USRPRIORResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_USRPRIORResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_USRPRIOR,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_USRPRIOR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_USRPRIORResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_USRPRIORResponse"),
    :schema_element => [
      ["result", ["LST_USRPRIORType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_SDAINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_SDAINF"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["hUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "HUSERNAME")]],
      ["pWD", [nil, XSD::QName.new(NsV900R008C02SPC200, "PWD")]],
      ["rEALM", [nil, XSD::QName.new(NsV900R008C02SPC200, "REALM")]],
      ["hA1", [nil, XSD::QName.new(NsV900R008C02SPC200, "HA1")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_SDAINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_SDAINFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_SDAINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_SDAINF"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_SDAINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_SDAINFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_SDAINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_SDAINF"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["hUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "HUSERNAME")], [0, 1]],
      ["pWD", [nil, XSD::QName.new(NsV900R008C02SPC200, "PWD")], [0, 1]],
      ["rEALM", [nil, XSD::QName.new(NsV900R008C02SPC200, "REALM")], [0, 1]],
      ["hA1", [nil, XSD::QName.new(NsV900R008C02SPC200, "HA1")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_SDAINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_SDAINFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SDAINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_SDAINF"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["hUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "HUSERNAME")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SDAINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_SDAINFResponse"),
    :schema_element => [
      ["result", ["LST_SDAINFType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_SDAPWD,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_SDAPWD"),
    :schema_element => [
      ["hUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "HUSERNAME")]],
      ["pWD", [nil, XSD::QName.new(NsV900R008C02SPC200, "PWD")]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_SDAPWDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_SDAPWDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_LRI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_LRI"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["lRI", [nil, XSD::QName.new(NsV900R008C02SPC200, "LRI")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_LRIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_LRIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_LRI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_LRI"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_LRIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_LRIResponse"),
    :schema_element => [
      ["result", ["LST_LRIType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_SIFC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_SIFC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["sIFCID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCID")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_SIFCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_SIFCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_SIFC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_SIFC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["sIFCID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_SIFCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_SIFCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_SIFC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_SIFC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["oSIFCID", [nil, XSD::QName.new(NsV900R008C02SPC200, "OSIFCID")]],
      ["nSIFCID", [nil, XSD::QName.new(NsV900R008C02SPC200, "NSIFCID")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_SIFCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_SIFCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SIFC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SIFCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCResponse"),
    :schema_element => [
      ["result", ["LST_SIFCType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_ALLIFC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_ALLIFC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_ALLIFCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_ALLIFCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_SIFCTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_SIFCTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_SIFCTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_SIFCTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_SIFCTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_SIFCTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_SIFCTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_SIFCTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_SIFCTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_SIFCTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_SIFCTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_SIFCTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SIFCTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SIFCTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCTPLResponse"),
    :schema_element => [
      ["result", ["LST_SIFCTPLType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_SIFCINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_SIFCINF"),
    :schema_element => [
      ["sIFCTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCTPLID")]],
      ["iFCNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "IFCNAME")], [0, 1]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")]],
      ["pARTIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "PARTIND")], [0, 1]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")]],
      ["dEFHND", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFHND")], [0, 1]],
      ["sERVINFO", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVINFO")], [0, 1]],
      ["tRIGPT", [nil, XSD::QName.new(NsV900R008C02SPC200, "TRIGPT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_SIFCINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_SIFCINFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_SIFCINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_SIFCINF"),
    :schema_element => [
      ["sIFCTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCTPLID")]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_SIFCINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_SIFCINFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_SIFCINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_SIFCINF"),
    :schema_element => [
      ["sIFCTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCTPLID")]],
      ["iFCNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "IFCNAME")], [0, 1]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")]],
      ["pARTIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "PARTIND")], [0, 1]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")], [0, 1]],
      ["dEFHND", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFHND")], [0, 1]],
      ["sERVINFO", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVINFO")], [0, 1]],
      ["tRIGPT", [nil, XSD::QName.new(NsV900R008C02SPC200, "TRIGPT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_SIFCINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_SIFCINFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SIFCINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCINF"),
    :schema_element => [
      ["sIFCTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCTPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_SIFCINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_SIFCINFResponse"),
    :schema_element => [
      ["result", ["LST_SIFCINFType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_ESRN,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_ESRN"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["eSRN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ESRN")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_ESRNResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_ESRNResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ESRN,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_ESRN"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ESRNResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_ESRNResponse"),
    :schema_element => [
      ["result", ["LST_ESRNType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_ONEKEY,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_ONEKEY"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["wUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "WUSERNAME")]],
      ["hTOKEN", [nil, XSD::QName.new(NsV900R008C02SPC200, "HTOKEN")]],
      ["aP", [nil, XSD::QName.new(NsV900R008C02SPC200, "AP")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_ONEKEYResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_ONEKEYResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_ONEKEY,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_ONEKEY"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["wUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "WUSERNAME")], [0, 1]],
      ["hTOKEN", [nil, XSD::QName.new(NsV900R008C02SPC200, "HTOKEN")], [0, 1]],
      ["aP", [nil, XSD::QName.new(NsV900R008C02SPC200, "AP")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_ONEKEYResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_ONEKEYResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ONEKEY,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_ONEKEY"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_ONEKEYResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_ONEKEYResponse"),
    :schema_element => [
      ["result", ["LST_ONEKEYType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_ONEKEY,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_ONEKEY"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_ONEKEYResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_ONEKEYResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_ASIFC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_ASIFC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_ASIFCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_ASIFCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HOP,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HOP"),
    :schema_element => [
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")]],
      ["oPVALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPVALUE")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HOPResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HOPResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HOP,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HOP"),
    :schema_element => [
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HOPResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HOPResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HOP,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HOP"),
    :schema_element => [
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")]],
      ["oPVALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPVALUE")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HOPResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HOPResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HOP,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HOP"),
    :schema_element => [
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HOPResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HOPResponse"),
    :schema_element => [
      ["result", ["LST_HOPType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_HOP,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_HOP"),
    :schema_element => [
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")]],
      ["oPVALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPVALUE")]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_HOPResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_HOPResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HAMF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HAMF"),
    :schema_element => [
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")]],
      ["aMFVALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFVALUE")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HAMFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HAMFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HAMF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HAMF"),
    :schema_element => [
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HAMFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HAMFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HAMF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HAMF"),
    :schema_element => [
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")]],
      ["aMFVALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFVALUE")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HAMFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HAMFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HAMF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HAMF"),
    :schema_element => [
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HAMFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HAMFResponse"),
    :schema_element => [
      ["result", ["LST_HAMFType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_HAMF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_HAMF"),
    :schema_element => [
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")]],
      ["aMFVALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFVALUE")]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_HAMFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_HAMFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HK4,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HK4"),
    :schema_element => [
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")]],
      ["k4VALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4VALUE")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HK4Response,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HK4Response"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HK4,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HK4"),
    :schema_element => [
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HK4Response,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HK4Response"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HK4,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HK4"),
    :schema_element => [
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")]],
      ["k4VALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4VALUE")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HK4Response,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HK4Response"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HK4,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HK4"),
    :schema_element => [
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HK4Response,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HK4Response"),
    :schema_element => [
      ["result", ["LST_HK4Type", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_HK4,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_HK4"),
    :schema_element => [
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")]],
      ["k4VALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4VALUE")]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_HK4Response,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_HK4Response"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HKI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HKI"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["k", [nil, XSD::QName.new(NsV900R008C02SPC200, "K")]],
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")]],
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")]],
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")]],
      ["oPC", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPC")], [0, 1]],
      ["oPCK4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPCK4SNO")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HKIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HKIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HKI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HKI"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HKIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HKIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HKI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HKI"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["k", [nil, XSD::QName.new(NsV900R008C02SPC200, "K")], [0, 1]],
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")], [0, 1]],
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")], [0, 1]],
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")], [0, 1]],
      ["oPC", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPC")], [0, 1]],
      ["oPCK4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPCK4SNO")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HKIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HKIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HKI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HKI"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HKIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HKIResponse"),
    :schema_element => [
      ["result", ["LST_HKIType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_HKI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_HKI"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["k", [nil, XSD::QName.new(NsV900R008C02SPC200, "K")]],
      ["k4VALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4VALUE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_HKIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_HKIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_HOPC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_HOPC"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["oPC", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPC")]],
      ["oPCK4VALUE", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPCK4VALUE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_HOPCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_HOPCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HSUB,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HSUB"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")]],
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["iMPUTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPUTYPE")], [0, 1]],
      ["pBXUSERFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "PBXUSERFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HSUBResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HSUBResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HSUB,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HSUB"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HSUBResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HSUBResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HSUBID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HSUBID"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")]],
      ["nEWSUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "NEWSUBID")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HSUBIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HSUBIDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSUB,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HSUB"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")], [0, 1]],
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSUBResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HSUBResponse"),
    :schema_element => [
      ["result", ["LST_HSUBType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HIMPI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HIMPI"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")]],
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["iMPUTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPUTYPE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HIMPIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HIMPIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HIMPI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HIMPI"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HIMPIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HIMPIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HIMPI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HIMPI"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["nEWIMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "NEWIMPI")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HIMPIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HIMPIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HIMPU,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HIMPU"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["iMPUTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPUTYPE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HIMPUResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HIMPUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HIMPU,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HIMPU"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HIMPUResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HIMPUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HIMPU,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HIMPU"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["nEWIMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "NEWIMPU")]],
      ["nEWIMPUTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "NEWIMPUTYPE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HIMPUResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HIMPUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HIMPUSHARE,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HIMPUSHARE"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["sHARED", [nil, XSD::QName.new(NsV900R008C02SPC200, "SHARED")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HIMPUSHAREResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HIMPUSHAREResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HIRS,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HIRS"),
    :schema_element => [
      ["iRSID", [nil, XSD::QName.new(NsV900R008C02SPC200, "IRSID")]],
      ["iMPULIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPULIST")], [0, 1]],
      ["pUSILIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSILIST")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HIRSResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HIRSResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HDEFIMPU,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HDEFIMPU"),
    :schema_element => [
      ["iRSID", [nil, XSD::QName.new(NsV900R008C02SPC200, "IRSID")]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HDEFIMPUResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HDEFIMPUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HCHARGID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HCHARGID"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]],
      ["cHARGTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "CHARGTPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HCHARGIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HCHARGIDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCHARGID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HCHARGID"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCHARGIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HCHARGIDResponse"),
    :schema_element => [
      ["result", ["LST_HCHARGIDType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HBAR,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HBAR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["bAR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BAR")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HBARResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HBARResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HBAR,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HBAR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HBARResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HBARResponse"),
    :schema_element => [
      ["result", ["LST_HBARType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HREGAUTH,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HREGAUTH"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["rEGAUTH", [nil, XSD::QName.new(NsV900R008C02SPC200, "REGAUTH")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HREGAUTHResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HREGAUTHResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HREGAUTH,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HREGAUTH"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HREGAUTHResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HREGAUTHResponse"),
    :schema_element => [
      ["result", ["LST_HREGAUTHType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HVNTPLID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HVNTPLID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["vNTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNTPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HVNTPLIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HVNTPLIDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HVNTPLID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HVNTPLIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLIDResponse"),
    :schema_element => [
      ["result", ["LST_HVNTPLIDType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HMEDIAID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HMEDIAID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["mEDIAID", [nil, XSD::QName.new(NsV900R008C02SPC200, "MEDIAID")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HMEDIAIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HMEDIAIDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HMEDIAID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HMEDIAID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HMEDIAIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HMEDIAIDResponse"),
    :schema_element => [
      ["result", ["LST_HMEDIAIDType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HMOCAP,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HMOCAP"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")], [0, 1]],
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]],
      ["mCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "MCAP")], [0, 1]],
      ["oCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "OCAP")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HMOCAPResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HMOCAPResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HMOCAP,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HMOCAP"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")], [0, 1]],
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HMOCAPResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HMOCAPResponse"),
    :schema_element => [
      ["result", ["LST_HMOCAPType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HEIA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HEIA"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["eIAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "EIAFLAG")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HEIAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HEIAResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HEIA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HEIA"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HEIAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HEIAResponse"),
    :schema_element => [
      ["result", ["LST_HEIAType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HEAA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HEAA"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["eAAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "EAAFLAG")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HEAAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HEAAResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HEAA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HEAA"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HEAAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HEAAResponse"),
    :schema_element => [
      ["result", ["LST_HEAAType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HAS,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HAS"),
    :schema_element => [
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")]],
      ["aS", [nil, XSD::QName.new(NsV900R008C02SPC200, "AS")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HASResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HASResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HAS,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HAS"),
    :schema_element => [
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HASResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HASResponse"),
    :schema_element => [
      ["result", ["LST_HASType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HVNCFLAG,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HVNCFLAG"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["vNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNCFLAG")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HVNCFLAGResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HVNCFLAGResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HVNCFLAG,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNCFLAG"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HVNCFLAGResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNCFLAGResponse"),
    :schema_element => [
      ["result", ["LST_HVNCFLAGType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HIFC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HIFC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")]],
      ["pARTIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "PARTIND")], [0, 1]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")]],
      ["dEFHND", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFHND")], [0, 1]],
      ["sERVINFO", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVINFO")], [0, 1]],
      ["tRIGPT", [nil, XSD::QName.new(NsV900R008C02SPC200, "TRIGPT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HIFCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HIFCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HIFC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HIFC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HIFCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HIFCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HIFC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HIFC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")]],
      ["nEWPRI", [nil, XSD::QName.new(NsV900R008C02SPC200, "NEWPRI")], [0, 1]],
      ["pARTIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "PARTIND")], [0, 1]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")], [0, 1]],
      ["dEFHND", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFHND")], [0, 1]],
      ["sERVINFO", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVINFO")], [0, 1]],
      ["tRIGPT", [nil, XSD::QName.new(NsV900R008C02SPC200, "TRIGPT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HIFCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HIFCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HIFC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HIFC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HIFCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HIFCResponse"),
    :schema_element => [
      ["result", ["LST_HIFCType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HCAPSCSCF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HCAPSCSCF"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")], [0, 1]],
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]],
      ["sCSCF", [nil, XSD::QName.new(NsV900R008C02SPC200, "SCSCF")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HCAPSCSCFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HCAPSCSCFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HCAPSCSCF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HCAPSCSCF"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")], [0, 1]],
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]],
      ["sCSCF", [nil, XSD::QName.new(NsV900R008C02SPC200, "SCSCF")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HCAPSCSCFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HCAPSCSCFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCAPSCSCF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAPSCSCF"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")], [0, 1]],
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCAPSCSCFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAPSCSCFResponse"),
    :schema_element => [
      ["result", ["LST_HCAPSCSCFType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HSPSHARE,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HSPSHARE"),
    :schema_element => [
      ["bASEIMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "BASEIMPU")]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HSPSHAREResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HSPSHAREResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HSPSHARE,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HSPSHARE"),
    :schema_element => [
      ["iMPULIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPULIST")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HSPSHAREResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HSPSHAREResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSPSHARE,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HSPSHARE"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSPSHAREResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HSPSHAREResponse"),
    :schema_element => [
      ["result", ["LST_HSPSHAREType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DRG_HUSER,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "DRG_HUSER"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DRG_HUSERResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "DRG_HUSERResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HDYNDATA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HDYNDATA"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HDYNDATAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HDYNDATAResponse"),
    :schema_element => [
      ["result", ["LST_HDYNDATAType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HASSUBDATA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSUBDATA"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HASSUBDATAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSUBDATAResponse"),
    :schema_element => [
      ["result", ["LST_HASSUBDATAType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HPSI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HPSI"),
    :schema_element => [
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")]],
      ["pUSITYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSITYPE")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HPSIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HPSIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HPSI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HPSI"),
    :schema_element => [
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HPSIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HPSIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPSI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HPSI"),
    :schema_element => [
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPSIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HPSIResponse"),
    :schema_element => [
      ["result", ["LST_HPSIType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HHDAINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HHDAINF"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["hUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "HUSERNAME")]],
      ["pWD", [nil, XSD::QName.new(NsV900R008C02SPC200, "PWD")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HHDAINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HHDAINFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HHDAINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HHDAINF"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HHDAINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HHDAINFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HHDAINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HHDAINF"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["hUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "HUSERNAME")], [0, 1]],
      ["pWD", [nil, XSD::QName.new(NsV900R008C02SPC200, "PWD")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HHDAINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HHDAINFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HHDAINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HHDAINF"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["hUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "HUSERNAME")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HHDAINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HHDAINFResponse"),
    :schema_element => [
      ["result", ["LST_HHDAINFType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_HHDAPWD,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_HHDAPWD"),
    :schema_element => [
      ["hUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "HUSERNAME")]],
      ["pWD", [nil, XSD::QName.new(NsV900R008C02SPC200, "PWD")]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_HHDAPWDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_HHDAPWDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HIMPUTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HIMPUTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["vNTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNTPLID")], [0, 1]],
      ["nATPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATPLID")], [0, 1]],
      ["bAR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BAR")]],
      ["rEGAUTH", [nil, XSD::QName.new(NsV900R008C02SPC200, "REGAUTH")]],
      ["vNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNCFLAG")]],
      ["nNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "NNCFLAG")]],
      ["sERPRVID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERPRVID")], [0, 1]],
      ["lRI", [nil, XSD::QName.new(NsV900R008C02SPC200, "LRI")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HIMPUTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HIMPUTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HIMPUTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HIMPUTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HIMPUTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HIMPUTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HIMPUTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HIMPUTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["vNTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNTPLID")], [0, 1]],
      ["nATPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATPLID")], [0, 1]],
      ["bAR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BAR")], [0, 1]],
      ["rEGAUTH", [nil, XSD::QName.new(NsV900R008C02SPC200, "REGAUTH")], [0, 1]],
      ["vNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNCFLAG")], [0, 1]],
      ["nNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "NNCFLAG")], [0, 1]],
      ["sERPRVID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERPRVID")], [0, 1]],
      ["lRI", [nil, XSD::QName.new(NsV900R008C02SPC200, "LRI")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HIMPUTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HIMPUTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HIMPUTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HIMPUTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HIMPUTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HIMPUTPLResponse"),
    :schema_element => [
      ["result", ["LST_HIMPUTPLType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HPUSITPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HPUSITPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["aS", [nil, XSD::QName.new(NsV900R008C02SPC200, "AS")], [0, 1]],
      ["bAR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BAR")]],
      ["aCTSTATE", [nil, XSD::QName.new(NsV900R008C02SPC200, "ACTSTATE")]],
      ["sERPRVID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERPRVID")], [0, 1]],
      ["lRI", [nil, XSD::QName.new(NsV900R008C02SPC200, "LRI")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HPUSITPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HPUSITPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HPUSITPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HPUSITPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HPUSITPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HPUSITPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HPUSITPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HPUSITPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["aS", [nil, XSD::QName.new(NsV900R008C02SPC200, "AS")], [0, 1]],
      ["bAR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BAR")], [0, 1]],
      ["aCTSTATE", [nil, XSD::QName.new(NsV900R008C02SPC200, "ACTSTATE")], [0, 1]],
      ["sERPRVID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERPRVID")], [0, 1]],
      ["lRI", [nil, XSD::QName.new(NsV900R008C02SPC200, "LRI")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HPUSITPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HPUSITPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPUSITPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HPUSITPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPUSITPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HPUSITPLResponse"),
    :schema_element => [
      ["result", ["LST_HPUSITPLType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HIFCTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HIFCTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")]],
      ["pARTIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "PARTIND")], [0, 1]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")]],
      ["dEFHND", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFHND")], [0, 1]],
      ["sERVINFO", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVINFO")], [0, 1]],
      ["tRIGPT", [nil, XSD::QName.new(NsV900R008C02SPC200, "TRIGPT")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HIFCTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HIFCTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HIFCTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HIFCTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HIFCTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HIFCTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HIFCTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HIFCTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")], [0, 1]],
      ["pARTIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "PARTIND")], [0, 1]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")], [0, 1]],
      ["dEFHND", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFHND")], [0, 1]],
      ["sERVINFO", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVINFO")], [0, 1]],
      ["tRIGPT", [nil, XSD::QName.new(NsV900R008C02SPC200, "TRIGPT")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HIFCTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HIFCTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HIFCTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HIFCTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HIFCTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HIFCTPLResponse"),
    :schema_element => [
      ["result", ["LST_HIFCTPLType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HSPTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HSPTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["mEDIAID", [nil, XSD::QName.new(NsV900R008C02SPC200, "MEDIAID")], [0, 1]],
      ["iFCLIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "IFCLIST")], [0, 1]],
      ["sIFCLIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCLIST")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HSPTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HSPTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HSPTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HSPTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HSPTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HSPTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HSPTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HSPTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["mEDIAID", [nil, XSD::QName.new(NsV900R008C02SPC200, "MEDIAID")], [0, 1]],
      ["iFCLIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "IFCLIST")], [0, 1]],
      ["sIFCLIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCLIST")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HSPTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HSPTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSPTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HSPTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSPTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HSPTPLResponse"),
    :schema_element => [
      ["result", ["LST_HSPTPLType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HAKATPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HAKATPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")]],
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")]],
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")]],
      ["oPC", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPC")], [0, 1]],
      ["oPCK4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPCK4SNO")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HAKATPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HAKATPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HAKATPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HAKATPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HAKATPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HAKATPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HAKATPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HAKATPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["k4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "K4SNO")], [0, 1]],
      ["oPSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPSNO")], [0, 1]],
      ["aMFSNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "AMFSNO")], [0, 1]],
      ["oPC", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPC")], [0, 1]],
      ["oPCK4SNO", [nil, XSD::QName.new(NsV900R008C02SPC200, "OPCK4SNO")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HAKATPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HAKATPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HAKATPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HAKATPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HAKATPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HAKATPLResponse"),
    :schema_element => [
      ["result", ["LST_HAKATPLType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HCAPTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HCAPTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["mCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "MCAP")], [0, 1]],
      ["oCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "OCAP")], [0, 1]],
      ["sCSCFLIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "SCSCFLIST")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HCAPTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HCAPTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HCAPTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HCAPTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HCAPTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HCAPTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HCAPTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HCAPTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["mCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "MCAP")], [0, 1]],
      ["oCAP", [nil, XSD::QName.new(NsV900R008C02SPC200, "OCAP")], [0, 1]],
      ["sCSCFLIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "SCSCFLIST")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HCAPTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HCAPTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCAPTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAPTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCAPTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAPTPLResponse"),
    :schema_element => [
      ["result", ["LST_HCAPTPLType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HTPLINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HTPLINF"),
    :schema_element => [
      ["tPLTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLTYPE")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HTPLINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HTPLINFResponse"),
    :schema_element => [
      ["result", ["LST_HTPLINFType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HTPLIFC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HTPLIFC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["iFCTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "IFCTPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HTPLIFCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HTPLIFCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HTPLIMPU,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HTPLIMPU"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["iMPUTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPUTYPE")], [0, 1]],
      ["sPTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SPTPLID")], [0, 1]],
      ["iMPUTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPUTPLID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HTPLIMPUResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HTPLIMPUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HTPLKI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HTPLKI"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["k", [nil, XSD::QName.new(NsV900R008C02SPC200, "K")]],
      ["aKATPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "AKATPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HTPLKIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HTPLKIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HTPLPSI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HTPLPSI"),
    :schema_element => [
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")]],
      ["pUSITYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSITYPE")]],
      ["cAPTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "CAPTPLID")], [0, 1]],
      ["cHARGTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "CHARGTPLID")], [0, 1]],
      ["sPTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SPTPLID")], [0, 1]],
      ["pUSITPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSITPLID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HTPLPSIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HTPLPSIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HTPLPUSI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HTPLPUSI"),
    :schema_element => [
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")]],
      ["pUSITYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSITYPE")]],
      ["sPTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SPTPLID")], [0, 1]],
      ["pUSITPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSITPLID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HTPLPUSIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HTPLPUSIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HTPLSUB,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HTPLSUB"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")]],
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["iMPUTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPUTYPE")], [0, 1]],
      ["cAPTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "CAPTPLID")], [0, 1]],
      ["cHARGTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "CHARGTPLID")], [0, 1]],
      ["sPTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SPTPLID")], [0, 1]],
      ["iMPUTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPUTPLID")], [0, 1]],
      ["pBXUSERFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "PBXUSERFLAG")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HTPLSUBResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HTPLSUBResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HTPLIMPI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HTPLIMPI"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")]],
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["iMPUTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPUTYPE")], [0, 1]],
      ["cHARGTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "CHARGTPLID")], [0, 1]],
      ["sPTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SPTPLID")], [0, 1]],
      ["iMPUTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPUTPLID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HTPLIMPIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HTPLIMPIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPSIDYND,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HPSIDYND"),
    :schema_element => [
      ["pISI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PISI")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPSIDYNDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HPSIDYNDResponse"),
    :schema_element => [
      ["result", ["LST_HPSIDYNDType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HAUTHINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HAUTHINF"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HAUTHINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HAUTHINFResponse"),
    :schema_element => [
      ["result", ["LST_HAUTHINFType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HNATPLID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HNATPLID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["nATPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HNATPLIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HNATPLIDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNATPLID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNATPLIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLIDResponse"),
    :schema_element => [
      ["result", ["LST_HNATPLIDType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HNNCFLAG,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HNNCFLAG"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["nNCFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "NNCFLAG")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HNNCFLAGResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HNNCFLAGResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNNCFLAG,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HNNCFLAG"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNNCFLAGResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HNNCFLAGResponse"),
    :schema_element => [
      ["result", ["LST_HNNCFLAGType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HNNRLI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HNNRLI"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["rLINDEX", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLINDEX")]],
      ["rLI", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLI")]],
      ["rLT", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLT")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HNNRLIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HNNRLIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HNNRLI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HNNRLI"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["rLINDEX", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLINDEX")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HNNRLIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HNNRLIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HNNRLI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HNNRLI"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["rLINDEX", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLINDEX")]],
      ["rLI", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLI")], [0, 1]],
      ["rLT", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLT")], [0, 1]],
      ["sETDRLI", [nil, XSD::QName.new(NsV900R008C02SPC200, "SETDRLI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HNNRLIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HNNRLIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNNRLI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HNNRLI"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["rLINDEX", [nil, XSD::QName.new(NsV900R008C02SPC200, "RLINDEX")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNNRLIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HNNRLIResponse"),
    :schema_element => [
      ["result", ["LST_HNNRLIType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HASSPID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HASSPID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["aSSPID", [nil, XSD::QName.new(NsV900R008C02SPC200, "ASSPID")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HASSPIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HASSPIDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HASSPID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HASSPID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["aSSPID", [nil, XSD::QName.new(NsV900R008C02SPC200, "ASSPID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HASSPIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HASSPIDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HASSPID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSPID"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HASSPIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSPIDResponse"),
    :schema_element => [
      ["result", ["LST_HASSPIDType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HALIASPU,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HALIASPU"),
    :schema_element => [
      ["aLIASID", [nil, XSD::QName.new(NsV900R008C02SPC200, "ALIASID")]],
      ["iMPULIST", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPULIST")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HALIASPUResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HALIASPUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HREPDATA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HREPDATA"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["rEPDATA", [nil, XSD::QName.new(NsV900R008C02SPC200, "REPDATA")], [0, 1]],
      ["sERVICEID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVICEID")], [0, 1]],
      ["sERVICEDATA", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVICEDATA")], [0, 1]],
      ["rEPTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "REPTYPE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HREPDATAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HREPDATAResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSRVIND,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HSRVIND"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["rEPTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "REPTYPE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSRVINDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HSRVINDResponse"),
    :schema_element => [
      ["result", ["LST_HSRVINDType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HREPDATA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HREPDATA"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["rEPTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "REPTYPE")], [0, 1]],
      ["sRVIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "SRVIND")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HREPDATAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HREPDATAResponse"),
    :schema_element => [
      ["result", ["LST_HREPDATAType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HDALI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HDALI"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HDALIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HDALIResponse"),
    :schema_element => [
      ["result", ["LST_HDALIType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HIMSI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HIMSI"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]],
      ["iSDN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ISDN")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HIMSIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HIMSIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HIMSI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HIMSI"),
    :schema_element => [
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HIMSIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HIMSIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HIMSI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HIMSI"),
    :schema_element => [
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]],
      ["nEWIMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "NEWIMSI")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HIMSIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HIMSIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HISDN,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HISDN"),
    :schema_element => [
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]],
      ["iSDN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ISDN")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HISDNResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HISDNResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HISDN,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HISDN"),
    :schema_element => [
      ["iSDN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ISDN")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HISDNResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HISDNResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HISDN,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HISDN"),
    :schema_element => [
      ["iSDN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ISDN")]],
      ["nEWISDN", [nil, XSD::QName.new(NsV900R008C02SPC200, "NEWISDN")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HISDNResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HISDNResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HMSID,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HMSID"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")], [0, 1]],
      ["iSDN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ISDN")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HMSIDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HMSIDResponse"),
    :schema_element => [
      ["result", ["LST_HMSIDType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HASSOC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HASSOC"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HASSOCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HASSOCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HASSOC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HASSOC"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HASSOCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HASSOCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HASSOC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSOC"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HASSOCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HASSOCResponse"),
    :schema_element => [
      ["result", ["LST_HASSOCType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HNBAINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HNBAINF"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["lINEIDIDX", [nil, XSD::QName.new(NsV900R008C02SPC200, "LINEIDIDX")]],
      ["lINEID", [nil, XSD::QName.new(NsV900R008C02SPC200, "LINEID")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HNBAINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HNBAINFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HNBAINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HNBAINF"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["lINEIDIDX", [nil, XSD::QName.new(NsV900R008C02SPC200, "LINEIDIDX")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HNBAINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HNBAINFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNBAINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HNBAINF"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNBAINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HNBAINFResponse"),
    :schema_element => [
      ["result", ["LST_HNBAINFType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HCHGTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HCHGTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["pECF", [nil, XSD::QName.new(NsV900R008C02SPC200, "PECF")], [0, 1]],
      ["sECF", [nil, XSD::QName.new(NsV900R008C02SPC200, "SECF")], [0, 1]],
      ["pCCF", [nil, XSD::QName.new(NsV900R008C02SPC200, "PCCF")], [0, 1]],
      ["sCCF", [nil, XSD::QName.new(NsV900R008C02SPC200, "SCCF")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HCHGTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HCHGTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HCHGTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HCHGTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HCHGTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HCHGTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HCHGTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HCHGTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["pECF", [nil, XSD::QName.new(NsV900R008C02SPC200, "PECF")], [0, 1]],
      ["sECF", [nil, XSD::QName.new(NsV900R008C02SPC200, "SECF")], [0, 1]],
      ["pCCF", [nil, XSD::QName.new(NsV900R008C02SPC200, "PCCF")], [0, 1]],
      ["sCCF", [nil, XSD::QName.new(NsV900R008C02SPC200, "SCCF")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HCHGTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HCHGTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCHGTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HCHGTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCHGTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HCHGTPLResponse"),
    :schema_element => [
      ["result", ["LST_HCHGTPLType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HVNTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HVNTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["mATCHTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "MATCHTYPE")]],
      ["vN", [nil, XSD::QName.new(NsV900R008C02SPC200, "VN")]],
      ["vNTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNTYPE")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HVNTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HVNTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HVNTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HVNTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HVNTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HVNTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HVNTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HVNTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["mATCHTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "MATCHTYPE")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HVNTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HVNTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HVNTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HVNTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLResponse"),
    :schema_element => [
      ["result", ["LST_HVNTPLType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HVNTPLADDR,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HVNTPLADDR"),
    :schema_element => [
      ["vNTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNTPLID")]],
      ["vN", [nil, XSD::QName.new(NsV900R008C02SPC200, "VN")]],
      ["vNTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNTYPE")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HVNTPLADDRResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HVNTPLADDRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HVNTPLADDR,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HVNTPLADDR"),
    :schema_element => [
      ["vNTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNTPLID")]],
      ["vN", [nil, XSD::QName.new(NsV900R008C02SPC200, "VN")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HVNTPLADDRResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HVNTPLADDRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HVNTPLADDR,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLADDR"),
    :schema_element => [
      ["vNTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "VNTPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HVNTPLADDRResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HVNTPLADDRResponse"),
    :schema_element => [
      ["result", ["LST_HVNTPLADDRType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HNATPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HNATPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["mATCHTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "MATCHTYPE")]],
      ["nA", [nil, XSD::QName.new(NsV900R008C02SPC200, "NA")]],
      ["nATYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATYPE")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HNATPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HNATPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HNATPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HNATPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HNATPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HNATPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HNATPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HNATPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["mATCHTYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "MATCHTYPE")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HNATPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HNATPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNATPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNATPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLResponse"),
    :schema_element => [
      ["result", ["LST_HNATPLType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HNATPLADDR,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HNATPLADDR"),
    :schema_element => [
      ["nATPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATPLID")]],
      ["nA", [nil, XSD::QName.new(NsV900R008C02SPC200, "NA")]],
      ["nATYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATYPE")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HNATPLADDRResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HNATPLADDRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HNATPLADDR,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HNATPLADDR"),
    :schema_element => [
      ["nATPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATPLID")]],
      ["nA", [nil, XSD::QName.new(NsV900R008C02SPC200, "NA")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HNATPLADDRResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HNATPLADDRResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNATPLADDR,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLADDR"),
    :schema_element => [
      ["nATPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "NATPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HNATPLADDRResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HNATPLADDRResponse"),
    :schema_element => [
      ["result", ["LST_HNATPLADDRType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HOCSITPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HOCSITPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["gSMSCFADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "GSMSCFADDR")]],
      ["sK", [nil, XSD::QName.new(NsV900R008C02SPC200, "SK")]],
      ["dEFCALL", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFCALL")]],
      ["iMSSF", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSSF")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HOCSITPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HOCSITPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HOCSITPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HOCSITPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HOCSITPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HOCSITPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HOCSITPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HOCSITPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["gSMSCFADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "GSMSCFADDR")], [0, 1]],
      ["sK", [nil, XSD::QName.new(NsV900R008C02SPC200, "SK")], [0, 1]],
      ["dEFCALL", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFCALL")], [0, 1]],
      ["iMSSF", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSSF")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HOCSITPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HOCSITPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HOCSITPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HOCSITPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HOCSITPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HOCSITPLResponse"),
    :schema_element => [
      ["result", ["LST_HOCSITPLType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HTCSITPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HTCSITPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["gSMSCFADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "GSMSCFADDR")]],
      ["sK", [nil, XSD::QName.new(NsV900R008C02SPC200, "SK")]],
      ["dEFCALL", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFCALL")]],
      ["iMSSF", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSSF")]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HTCSITPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HTCSITPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HTCSITPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HTCSITPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HTCSITPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HTCSITPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HTCSITPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HTCSITPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["gSMSCFADDR", [nil, XSD::QName.new(NsV900R008C02SPC200, "GSMSCFADDR")], [0, 1]],
      ["sK", [nil, XSD::QName.new(NsV900R008C02SPC200, "SK")], [0, 1]],
      ["dEFCALL", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFCALL")], [0, 1]],
      ["iMSSF", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSSF")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HTCSITPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HTCSITPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HTCSITPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HTCSITPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HTCSITPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HTCSITPLResponse"),
    :schema_element => [
      ["result", ["LST_HTCSITPLType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HCSI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HCSI"),
    :schema_element => [
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]],
      ["iSDN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ISDN")]],
      ["cSITYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "CSITYPE")]],
      ["cSITPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "CSITPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HCSIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HCSIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCSI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HCSI"),
    :schema_element => [
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]],
      ["cSITYPE", [nil, XSD::QName.new(NsV900R008C02SPC200, "CSITYPE")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCSIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HCSIResponse"),
    :schema_element => [
      ["result", ["LST_HCSIType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HSERPRV,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HSERPRV"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["sERPRVID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERPRVID")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HSERPRVResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HSERPRVResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HSERPRV,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HSERPRV"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HSERPRVResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HSERPRVResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HSERPRV,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HSERPRV"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["sERPRVID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERPRVID")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HSERPRVResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HSERPRVResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSERPRV,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HSERPRV"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSERPRVResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HSERPRVResponse"),
    :schema_element => [
      ["result", ["LST_HSERPRVType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HTAA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HTAA"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["tAAFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "TAAFLAG")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HTAAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HTAAResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HTAA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HTAA"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HTAAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HTAAResponse"),
    :schema_element => [
      ["result", ["LST_HTAAType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HUSRPRIOR,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HUSRPRIOR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["uSRPRIOR", [nil, XSD::QName.new(NsV900R008C02SPC200, "USRPRIOR")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HUSRPRIORResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HUSRPRIORResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HUSRPRIOR,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HUSRPRIOR"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HUSRPRIORResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HUSRPRIORResponse"),
    :schema_element => [
      ["result", ["LST_HUSRPRIORType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HSDAINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HSDAINF"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["hUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "HUSERNAME")], [0, 1]],
      ["pWD", [nil, XSD::QName.new(NsV900R008C02SPC200, "PWD")], [0, 1]],
      ["rEALM", [nil, XSD::QName.new(NsV900R008C02SPC200, "REALM")]],
      ["hA1", [nil, XSD::QName.new(NsV900R008C02SPC200, "HA1")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HSDAINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HSDAINFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HSDAINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HSDAINF"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HSDAINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HSDAINFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HSDAINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HSDAINF"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["hUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "HUSERNAME")], [0, 1]],
      ["pWD", [nil, XSD::QName.new(NsV900R008C02SPC200, "PWD")], [0, 1]],
      ["rEALM", [nil, XSD::QName.new(NsV900R008C02SPC200, "REALM")], [0, 1]],
      ["hA1", [nil, XSD::QName.new(NsV900R008C02SPC200, "HA1")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HSDAINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HSDAINFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSDAINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HSDAINF"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")], [0, 1]],
      ["hUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "HUSERNAME")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSDAINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HSDAINFResponse"),
    :schema_element => [
      ["result", ["LST_HSDAINFType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_HSDAPWD,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_HSDAPWD"),
    :schema_element => [
      ["hUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "HUSERNAME")]],
      ["pWD", [nil, XSD::QName.new(NsV900R008C02SPC200, "PWD")]]
    ]
  )

  LiteralRegistry.register(
    :class => CHK_HSDAPWDResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "CHK_HSDAPWDResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HLRI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HLRI"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["lRI", [nil, XSD::QName.new(NsV900R008C02SPC200, "LRI")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HLRIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HLRIResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HLRI,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HLRI"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HLRIResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HLRIResponse"),
    :schema_element => [
      ["result", ["LST_HLRIType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HSIFC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HSIFC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["sIFCID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCID")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HSIFCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HSIFCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HSIFC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HSIFC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["sIFCID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HSIFCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HSIFCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HSIFC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HSIFC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["oSIFCID", [nil, XSD::QName.new(NsV900R008C02SPC200, "OSIFCID")]],
      ["nSIFCID", [nil, XSD::QName.new(NsV900R008C02SPC200, "NSIFCID")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HSIFCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HSIFCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSIFC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")], [0, 1]],
      ["pUSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "PUSI")], [0, 1]],
      ["sIFCID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSIFCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCResponse"),
    :schema_element => [
      ["result", ["LST_HSIFCType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HALLIFC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HALLIFC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HALLIFCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HALLIFCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HSIFCTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HSIFCTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HSIFCTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HSIFCTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HSIFCTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HSIFCTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HSIFCTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HSIFCTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HSIFCTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HSIFCTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]],
      ["tPLNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLNAME")], [0, 1]],
      ["cOMMENT", [nil, XSD::QName.new(NsV900R008C02SPC200, "COMMENT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HSIFCTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HSIFCTPLResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSIFCTPL,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCTPL"),
    :schema_element => [
      ["tPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "TPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSIFCTPLResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCTPLResponse"),
    :schema_element => [
      ["result", ["LST_HSIFCTPLType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HSIFCINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HSIFCINF"),
    :schema_element => [
      ["sIFCTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCTPLID")]],
      ["iFCNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "IFCNAME")], [0, 1]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")]],
      ["pARTIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "PARTIND")], [0, 1]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")]],
      ["dEFHND", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFHND")], [0, 1]],
      ["sERVINFO", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVINFO")], [0, 1]],
      ["tRIGPT", [nil, XSD::QName.new(NsV900R008C02SPC200, "TRIGPT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HSIFCINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HSIFCINFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HSIFCINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HSIFCINF"),
    :schema_element => [
      ["sIFCTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCTPLID")]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HSIFCINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HSIFCINFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HSIFCINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HSIFCINF"),
    :schema_element => [
      ["sIFCTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCTPLID")]],
      ["iFCNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "IFCNAME")], [0, 1]],
      ["pRIORITY", [nil, XSD::QName.new(NsV900R008C02SPC200, "PRIORITY")]],
      ["pARTIND", [nil, XSD::QName.new(NsV900R008C02SPC200, "PARTIND")], [0, 1]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")], [0, 1]],
      ["dEFHND", [nil, XSD::QName.new(NsV900R008C02SPC200, "DEFHND")], [0, 1]],
      ["sERVINFO", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVINFO")], [0, 1]],
      ["tRIGPT", [nil, XSD::QName.new(NsV900R008C02SPC200, "TRIGPT")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HSIFCINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HSIFCINFResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSIFCINF,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCINF"),
    :schema_element => [
      ["sIFCTPLID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SIFCTPLID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HSIFCINFResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HSIFCINFResponse"),
    :schema_element => [
      ["result", ["LST_HSIFCINFType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HESRN,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HESRN"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["eSRN", [nil, XSD::QName.new(NsV900R008C02SPC200, "ESRN")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HESRNResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HESRNResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HESRN,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HESRN"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HESRNResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HESRNResponse"),
    :schema_element => [
      ["result", ["LST_HESRNType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HONEKEY,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HONEKEY"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["wUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "WUSERNAME")]],
      ["hTOKEN", [nil, XSD::QName.new(NsV900R008C02SPC200, "HTOKEN")]],
      ["aP", [nil, XSD::QName.new(NsV900R008C02SPC200, "AP")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HONEKEYResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HONEKEYResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HONEKEY,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HONEKEY"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["wUSERNAME", [nil, XSD::QName.new(NsV900R008C02SPC200, "WUSERNAME")], [0, 1]],
      ["hTOKEN", [nil, XSD::QName.new(NsV900R008C02SPC200, "HTOKEN")], [0, 1]],
      ["aP", [nil, XSD::QName.new(NsV900R008C02SPC200, "AP")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HONEKEYResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HONEKEYResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HONEKEY,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HONEKEY"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HONEKEYResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HONEKEYResponse"),
    :schema_element => [
      ["result", ["LST_HONEKEYType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HONEKEY,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HONEKEY"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HONEKEYResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HONEKEYResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HASIFC,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HASIFC"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["sERVER", [nil, XSD::QName.new(NsV900R008C02SPC200, "SERVER")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HASIFCResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HASIFCResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HCAA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HCAA"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]],
      ["cAVEAKAFLG", [nil, XSD::QName.new(NsV900R008C02SPC200, "CAVEAKAFLG")]],
      ["uIMID", [nil, XSD::QName.new(NsV900R008C02SPC200, "UIMID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HCAAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HCAAResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCAA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAA"),
    :schema_element => [
      ["iMPI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPI")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HCAAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HCAAResponse"),
    :schema_element => [
      ["result", ["LST_HCAAType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HPBXU,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HPBXU"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")]],
      ["pBXUSERFLAG", [nil, XSD::QName.new(NsV900R008C02SPC200, "PBXUSERFLAG")]]
    ]
  )

  LiteralRegistry.register(
    :class => SET_HPBXUResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "SET_HPBXUResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPBXU,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HPBXU"),
    :schema_element => [
      ["sUBID", [nil, XSD::QName.new(NsV900R008C02SPC200, "SUBID")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPBXUResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HPBXUResponse"),
    :schema_element => [
      ["result", ["LST_HPBXUType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HPREPDATA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HPREPDATA"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")]],
      ["sELFSERVICE", [nil, XSD::QName.new(NsV900R008C02SPC200, "SELFSERVICE")]],
      ["sMSCADDRESS", [nil, XSD::QName.new(NsV900R008C02SPC200, "SMSCADDRESS")], [0, 1]],
      ["lOCATIONINFORMATION", [nil, XSD::QName.new(NsV900R008C02SPC200, "LOCATIONINFORMATION")], [0, 1]],
      ["nPINDICATOR", [nil, XSD::QName.new(NsV900R008C02SPC200, "NPINDICATOR")]],
      ["cICINDICATOR", [nil, XSD::QName.new(NsV900R008C02SPC200, "CICINDICATOR")]],
      ["bINDINDICATOR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BINDINDICATOR")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ADD_HPREPDATAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "ADD_HPREPDATAResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HPREPDATA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HPREPDATA"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => RMV_HPREPDATAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "RMV_HPREPDATAResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HPREPDATA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HPREPDATA"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]],
      ["iMSI", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMSI")], [0, 1]],
      ["sELFSERVICE", [nil, XSD::QName.new(NsV900R008C02SPC200, "SELFSERVICE")], [0, 1]],
      ["sMSCADDRESS", [nil, XSD::QName.new(NsV900R008C02SPC200, "SMSCADDRESS")], [0, 1]],
      ["lOCATIONINFORMATION", [nil, XSD::QName.new(NsV900R008C02SPC200, "LOCATIONINFORMATION")], [0, 1]],
      ["nPINDICATOR", [nil, XSD::QName.new(NsV900R008C02SPC200, "NPINDICATOR")], [0, 1]],
      ["cICINDICATOR", [nil, XSD::QName.new(NsV900R008C02SPC200, "CICINDICATOR")], [0, 1]],
      ["bINDINDICATOR", [nil, XSD::QName.new(NsV900R008C02SPC200, "BINDINDICATOR")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MOD_HPREPDATAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "MOD_HPREPDATAResponse"),
    :schema_element => [
      ["result", ["ResultType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPREPDATA,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HPREPDATA"),
    :schema_element => [
      ["iMPU", [nil, XSD::QName.new(NsV900R008C02SPC200, "IMPU")]]
    ]
  )

  LiteralRegistry.register(
    :class => LST_HPREPDATAResponse,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "LST_HPREPDATAResponse"),
    :schema_element => [
      ["result", ["LST_HPREPDATAType", XSD::QName.new(NsV900R008C02SPC200, "Result")]]
    ]
  )

  LiteralRegistry.register(
    :class => Authentication,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "Authentication"),
    :schema_element => [
      ["username", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "Username")]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsV900R008C02SPC200, "Password")]]
    ]
  )

  LiteralRegistry.register(
    :class => OperationFault,
    :schema_name => XSD::QName.new(NsV900R008C02SPC200, "OperationFault"),
    :schema_element => [
      ["faultReason", "SOAP::SOAPString"]
    ]
  )
end
