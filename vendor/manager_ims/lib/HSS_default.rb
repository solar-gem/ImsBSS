require 'xsd/qname'

# {http://www.huawei.com/IMS/HSSV900R008C02SPC200}RequestCommonInfoType
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

# {http://www.huawei.com/IMS/HSSV900R008C02SPC200}ResponseCommonInfoType
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

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_OPType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_OPTables
class LST_OPType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_OPTables
#   table1 - LST_OPTable1
class LST_OPTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_OPTable1
class LST_OPTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_OPStruct1
#   oPSNO - (any)
#   oPVALUE - (any)
class LST_OPStruct1
  attr_accessor :oPSNO
  attr_accessor :oPVALUE

  def initialize(oPSNO = nil, oPVALUE = nil)
    @oPSNO = oPSNO
    @oPVALUE = oPVALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AMFType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_AMFTables
class LST_AMFType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AMFTables
#   table1 - LST_AMFTable1
class LST_AMFTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AMFTable1
class LST_AMFTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AMFStruct1
#   aMFSNO - (any)
#   aMFVALUE - (any)
class LST_AMFStruct1
  attr_accessor :aMFSNO
  attr_accessor :aMFVALUE

  def initialize(aMFSNO = nil, aMFVALUE = nil)
    @aMFSNO = aMFSNO
    @aMFVALUE = aMFVALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_K4Type
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_K4Tables
class LST_K4Type
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_K4Tables
#   table1 - LST_K4Table1
class LST_K4Tables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_K4Table1
class LST_K4Table1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_K4Struct1
#   k4SNO - (any)
#   k4VALUE - (any)
class LST_K4Struct1
  attr_accessor :k4SNO
  attr_accessor :k4VALUE

  def initialize(k4SNO = nil, k4VALUE = nil)
    @k4SNO = k4SNO
    @k4VALUE = k4VALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_KIType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_KITables
class LST_KIType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_KITables
#   table1 - LST_KITable1
class LST_KITables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_KITable1
class LST_KITable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_KIStruct1
#   k - (any)
#   k4SNO - (any)
#   oPSNO - (any)
#   aMFSNO - (any)
#   oPC - (any)
#   oPCK4SNO - (any)
class LST_KIStruct1
  attr_accessor :k
  attr_accessor :k4SNO
  attr_accessor :oPSNO
  attr_accessor :aMFSNO
  attr_accessor :oPC
  attr_accessor :oPCK4SNO

  def initialize(k = nil, k4SNO = nil, oPSNO = nil, aMFSNO = nil, oPC = nil, oPCK4SNO = nil)
    @k = k
    @k4SNO = k4SNO
    @oPSNO = oPSNO
    @aMFSNO = aMFSNO
    @oPC = oPC
    @oPCK4SNO = oPCK4SNO
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SUBType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_SUBTables
class LST_SUBType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SUBTables
#   table1 - LST_SUBTable1
class LST_SUBTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SUBTable1
class LST_SUBTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SUBStruct1
#   sUBID - (any)
#   iMPI - (any)
#   iMPU - (any)
#   sHARED - (any)
#   iRSID - (any)
#   aLIASID - (any)
#   dEFIMPU - (any)
class LST_SUBStruct1
  attr_accessor :sUBID
  attr_accessor :iMPI
  attr_accessor :iMPU
  attr_accessor :sHARED
  attr_accessor :iRSID
  attr_accessor :aLIASID
  attr_accessor :dEFIMPU

  def initialize(sUBID = nil, iMPI = nil, iMPU = nil, sHARED = nil, iRSID = nil, aLIASID = nil, dEFIMPU = nil)
    @sUBID = sUBID
    @iMPI = iMPI
    @iMPU = iMPU
    @sHARED = sHARED
    @iRSID = iRSID
    @aLIASID = aLIASID
    @dEFIMPU = dEFIMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CHARGIDType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_CHARGIDTables
class LST_CHARGIDType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CHARGIDTables
#   table1 - LST_CHARGIDTable1
class LST_CHARGIDTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CHARGIDTable1
class LST_CHARGIDTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CHARGIDStruct1
#   cHARGTPLID - (any)
class LST_CHARGIDStruct1
  attr_accessor :cHARGTPLID

  def initialize(cHARGTPLID = nil)
    @cHARGTPLID = cHARGTPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_BARType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_BARTables
class LST_BARType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_BARTables
#   table1 - LST_BARTable1
class LST_BARTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_BARTable1
class LST_BARTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_BARStruct1
#   bAR - (any)
class LST_BARStruct1
  attr_accessor :bAR

  def initialize(bAR = nil)
    @bAR = bAR
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_REGAUTHType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_REGAUTHTables
class LST_REGAUTHType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_REGAUTHTables
#   table1 - LST_REGAUTHTable1
class LST_REGAUTHTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_REGAUTHTable1
class LST_REGAUTHTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_REGAUTHStruct1
#   rEGAUTH - (any)
class LST_REGAUTHStruct1
  attr_accessor :rEGAUTH

  def initialize(rEGAUTH = nil)
    @rEGAUTH = rEGAUTH
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNTPLIDType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_VNTPLIDTables
class LST_VNTPLIDType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNTPLIDTables
#   table1 - LST_VNTPLIDTable1
class LST_VNTPLIDTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNTPLIDTable1
class LST_VNTPLIDTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNTPLIDStruct1
#   tPLID - (any)
class LST_VNTPLIDStruct1
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_MEDIAIDType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_MEDIAIDTables
class LST_MEDIAIDType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_MEDIAIDTables
#   table1 - LST_MEDIAIDTable1
class LST_MEDIAIDTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_MEDIAIDTable1
class LST_MEDIAIDTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_MEDIAIDStruct1
#   mEDIAID - (any)
class LST_MEDIAIDStruct1
  attr_accessor :mEDIAID

  def initialize(mEDIAID = nil)
    @mEDIAID = mEDIAID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_MOCAPType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_MOCAPTables
class LST_MOCAPType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_MOCAPTables
#   table1 - LST_MOCAPTable1
class LST_MOCAPTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_MOCAPTable1
class LST_MOCAPTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_MOCAPStruct1
#   mCAP - (any)
#   oCAP - (any)
class LST_MOCAPStruct1
  attr_accessor :mCAP
  attr_accessor :oCAP

  def initialize(mCAP = nil, oCAP = nil)
    @mCAP = mCAP
    @oCAP = oCAP
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_EIAType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_EIATables
class LST_EIAType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_EIATables
#   table1 - LST_EIATable1
class LST_EIATables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_EIATable1
class LST_EIATable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_EIAStruct1
#   iMPI - (any)
#   iMSI - (any)
#   iPV4ADDR - (any)
#   iPV6ADDR - (any)
class LST_EIAStruct1
  attr_accessor :iMPI
  attr_accessor :iMSI
  attr_accessor :iPV4ADDR
  attr_accessor :iPV6ADDR

  def initialize(iMPI = nil, iMSI = nil, iPV4ADDR = nil, iPV6ADDR = nil)
    @iMPI = iMPI
    @iMSI = iMSI
    @iPV4ADDR = iPV4ADDR
    @iPV6ADDR = iPV6ADDR
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_EAAType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_EAATables
class LST_EAAType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_EAATables
#   table1 - LST_EAATable1
class LST_EAATables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_EAATable1
class LST_EAATable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_EAAStruct1
#   iMPI - (any)
#   iMSI - (any)
class LST_EAAStruct1
  attr_accessor :iMPI
  attr_accessor :iMSI

  def initialize(iMPI = nil, iMSI = nil)
    @iMPI = iMPI
    @iMSI = iMSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_ASTables
class LST_ASType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASTables
#   table1 - LST_ASTable1
class LST_ASTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASTable1
class LST_ASTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASStruct1
#   aS - (any)
class LST_ASStruct1
  attr_accessor :aS

  def initialize(aS = nil)
    @aS = aS
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNCFLAGType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_VNCFLAGTables
class LST_VNCFLAGType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNCFLAGTables
#   table1 - LST_VNCFLAGTable1
class LST_VNCFLAGTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNCFLAGTable1
class LST_VNCFLAGTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNCFLAGStruct1
#   vNCFLAG - (any)
class LST_VNCFLAGStruct1
  attr_accessor :vNCFLAG

  def initialize(vNCFLAG = nil)
    @vNCFLAG = vNCFLAG
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_IFCType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_IFCTables
class LST_IFCType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_IFCTables
#   table1 - LST_IFCTable1
class LST_IFCTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_IFCTable1
class LST_IFCTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_IFCStruct1
#   pRIORITY - (any)
#   pARTIND - (any)
#   sERVER - (any)
#   dEFHND - (any)
#   sERVINFO - (any)
#   tRIGPT - (any)
class LST_IFCStruct1
  attr_accessor :pRIORITY
  attr_accessor :pARTIND
  attr_accessor :sERVER
  attr_accessor :dEFHND
  attr_accessor :sERVINFO
  attr_accessor :tRIGPT

  def initialize(pRIORITY = nil, pARTIND = nil, sERVER = nil, dEFHND = nil, sERVINFO = nil, tRIGPT = nil)
    @pRIORITY = pRIORITY
    @pARTIND = pARTIND
    @sERVER = sERVER
    @dEFHND = dEFHND
    @sERVINFO = sERVINFO
    @tRIGPT = tRIGPT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CAPSCSCFType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_CAPSCSCFTables
class LST_CAPSCSCFType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CAPSCSCFTables
#   table1 - LST_CAPSCSCFTable1
class LST_CAPSCSCFTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CAPSCSCFTable1
class LST_CAPSCSCFTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CAPSCSCFStruct1
#   sCSCF - (any)
class LST_CAPSCSCFStruct1
  attr_accessor :sCSCF

  def initialize(sCSCF = nil)
    @sCSCF = sCSCF
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SPSHAREType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_SPSHARETables
class LST_SPSHAREType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SPSHARETables
#   table1 - LST_SPSHARETable1
class LST_SPSHARETables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SPSHARETable1
class LST_SPSHARETable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SPSHAREStruct1
#   iMPU - (any)
class LST_SPSHAREStruct1
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_DYNDATAType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_DYNDATATables
class LST_DYNDATAType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_DYNDATATables
#   table1 - LST_DYNDATATable1
class LST_DYNDATATables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_DYNDATATable1
class LST_DYNDATATable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_DYNDATAStruct1
#   iMPI - (any)
#   iMPU - (any)
#   iMSUSERST - (any)
#   pENDINGFLG - (any)
#   sERVER - (any)
class LST_DYNDATAStruct1
  attr_accessor :iMPI
  attr_accessor :iMPU
  attr_accessor :iMSUSERST
  attr_accessor :pENDINGFLG
  attr_accessor :sERVER

  def initialize(iMPI = nil, iMPU = nil, iMSUSERST = nil, pENDINGFLG = nil, sERVER = nil)
    @iMPI = iMPI
    @iMPU = iMPU
    @iMSUSERST = iMSUSERST
    @pENDINGFLG = pENDINGFLG
    @sERVER = sERVER
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASSUBDATAType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_ASSUBDATATables
class LST_ASSUBDATAType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASSUBDATATables
#   table1 - LST_ASSUBDATATable1
class LST_ASSUBDATATables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASSUBDATATable1
class LST_ASSUBDATATable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASSUBDATAStruct1
#   sUBASID - (any)
#   dATATYPE - (any)
#   aSNAME - (any)
#   sRVIND - (any)
#   aLIASID - (any)
class LST_ASSUBDATAStruct1
  attr_accessor :sUBASID
  attr_accessor :dATATYPE
  attr_accessor :aSNAME
  attr_accessor :sRVIND
  attr_accessor :aLIASID

  def initialize(sUBASID = nil, dATATYPE = nil, aSNAME = nil, sRVIND = nil, aLIASID = nil)
    @sUBASID = sUBASID
    @dATATYPE = dATATYPE
    @aSNAME = aSNAME
    @sRVIND = sRVIND
    @aLIASID = aLIASID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_PSIType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_PSITables
class LST_PSIType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_PSITables
#   table1 - LST_PSITable1
class LST_PSITables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_PSITable1
class LST_PSITable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_PSIStruct1
#   pISI - (any)
#   pUSI - (any)
#   iRSID - (any)
class LST_PSIStruct1
  attr_accessor :pISI
  attr_accessor :pUSI
  attr_accessor :iRSID

  def initialize(pISI = nil, pUSI = nil, iRSID = nil)
    @pISI = pISI
    @pUSI = pUSI
    @iRSID = iRSID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HDAINFType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HDAINFTables
class LST_HDAINFType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HDAINFTables
#   table1 - LST_HDAINFTable1
class LST_HDAINFTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HDAINFTable1
class LST_HDAINFTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HDAINFStruct1
#   iMPI - (any)
#   hUSERNAME - (any)
#   pWD - (any)
class LST_HDAINFStruct1
  attr_accessor :iMPI
  attr_accessor :hUSERNAME
  attr_accessor :pWD

  def initialize(iMPI = nil, hUSERNAME = nil, pWD = nil)
    @iMPI = iMPI
    @hUSERNAME = hUSERNAME
    @pWD = pWD
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_IMPUTPLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_IMPUTPLTables
class LST_IMPUTPLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_IMPUTPLTables
#   table1 - LST_IMPUTPLTable1
class LST_IMPUTPLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_IMPUTPLTable1
class LST_IMPUTPLTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_IMPUTPLStruct1
#   tPLNAME - (any)
#   vNTPLID - (any)
#   nATPLID - (any)
#   bAR - (any)
#   rEGAUTH - (any)
#   vNCFLAG - (any)
#   nNCFLAG - (any)
#   sERPRVID - (any)
#   lRI - (any)
#   cOMMENT - (any)
class LST_IMPUTPLStruct1
  attr_accessor :tPLNAME
  attr_accessor :vNTPLID
  attr_accessor :nATPLID
  attr_accessor :bAR
  attr_accessor :rEGAUTH
  attr_accessor :vNCFLAG
  attr_accessor :nNCFLAG
  attr_accessor :sERPRVID
  attr_accessor :lRI
  attr_accessor :cOMMENT

  def initialize(tPLNAME = nil, vNTPLID = nil, nATPLID = nil, bAR = nil, rEGAUTH = nil, vNCFLAG = nil, nNCFLAG = nil, sERPRVID = nil, lRI = nil, cOMMENT = nil)
    @tPLNAME = tPLNAME
    @vNTPLID = vNTPLID
    @nATPLID = nATPLID
    @bAR = bAR
    @rEGAUTH = rEGAUTH
    @vNCFLAG = vNCFLAG
    @nNCFLAG = nNCFLAG
    @sERPRVID = sERPRVID
    @lRI = lRI
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_PUSITPLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_PUSITPLTables
class LST_PUSITPLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_PUSITPLTables
#   table1 - LST_PUSITPLTable1
class LST_PUSITPLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_PUSITPLTable1
class LST_PUSITPLTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_PUSITPLStruct1
#   tPLNAME - (any)
#   aS - (any)
#   bAR - (any)
#   aCTSTATE - (any)
#   sERPRVID - (any)
#   lRI - (any)
#   cOMMENT - (any)
class LST_PUSITPLStruct1
  attr_accessor :tPLNAME
  attr_accessor :aS
  attr_accessor :bAR
  attr_accessor :aCTSTATE
  attr_accessor :sERPRVID
  attr_accessor :lRI
  attr_accessor :cOMMENT

  def initialize(tPLNAME = nil, aS = nil, bAR = nil, aCTSTATE = nil, sERPRVID = nil, lRI = nil, cOMMENT = nil)
    @tPLNAME = tPLNAME
    @aS = aS
    @bAR = bAR
    @aCTSTATE = aCTSTATE
    @sERPRVID = sERPRVID
    @lRI = lRI
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_IFCTPLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_IFCTPLTables
class LST_IFCTPLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_IFCTPLTables
#   table1 - LST_IFCTPLTable1
class LST_IFCTPLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_IFCTPLTable1
class LST_IFCTPLTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_IFCTPLStruct1
#   tPLNAME - (any)
#   pRIORITY - (any)
#   pARTIND - (any)
#   sERVER - (any)
#   dEFHND - (any)
#   sERVINFO - (any)
#   tRIGPT - (any)
#   cOMMENT - (any)
class LST_IFCTPLStruct1
  attr_accessor :tPLNAME
  attr_accessor :pRIORITY
  attr_accessor :pARTIND
  attr_accessor :sERVER
  attr_accessor :dEFHND
  attr_accessor :sERVINFO
  attr_accessor :tRIGPT
  attr_accessor :cOMMENT

  def initialize(tPLNAME = nil, pRIORITY = nil, pARTIND = nil, sERVER = nil, dEFHND = nil, sERVINFO = nil, tRIGPT = nil, cOMMENT = nil)
    @tPLNAME = tPLNAME
    @pRIORITY = pRIORITY
    @pARTIND = pARTIND
    @sERVER = sERVER
    @dEFHND = dEFHND
    @sERVINFO = sERVINFO
    @tRIGPT = tRIGPT
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SPTPLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_SPTPLTables
class LST_SPTPLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SPTPLTables
#   table1 - LST_SPTPLTable1
class LST_SPTPLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SPTPLTable1
class LST_SPTPLTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SPTPLStruct1
#   tPLNAME - (any)
#   mEDIAID - (any)
#   iFCLIST - (any)
#   sIFCLIST - (any)
#   cOMMENT - (any)
class LST_SPTPLStruct1
  attr_accessor :tPLNAME
  attr_accessor :mEDIAID
  attr_accessor :iFCLIST
  attr_accessor :sIFCLIST
  attr_accessor :cOMMENT

  def initialize(tPLNAME = nil, mEDIAID = nil, iFCLIST = nil, sIFCLIST = nil, cOMMENT = nil)
    @tPLNAME = tPLNAME
    @mEDIAID = mEDIAID
    @iFCLIST = iFCLIST
    @sIFCLIST = sIFCLIST
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AKATPLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_AKATPLTables
class LST_AKATPLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AKATPLTables
#   table1 - LST_AKATPLTable1
class LST_AKATPLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AKATPLTable1
class LST_AKATPLTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AKATPLStruct1
#   tPLNAME - (any)
#   k4SNO - (any)
#   oPSNO - (any)
#   aMFSNO - (any)
#   oPC - (any)
#   oPCK4SNO - (any)
#   cOMMENT - (any)
class LST_AKATPLStruct1
  attr_accessor :tPLNAME
  attr_accessor :k4SNO
  attr_accessor :oPSNO
  attr_accessor :aMFSNO
  attr_accessor :oPC
  attr_accessor :oPCK4SNO
  attr_accessor :cOMMENT

  def initialize(tPLNAME = nil, k4SNO = nil, oPSNO = nil, aMFSNO = nil, oPC = nil, oPCK4SNO = nil, cOMMENT = nil)
    @tPLNAME = tPLNAME
    @k4SNO = k4SNO
    @oPSNO = oPSNO
    @aMFSNO = aMFSNO
    @oPC = oPC
    @oPCK4SNO = oPCK4SNO
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CAPTPLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_CAPTPLTables
class LST_CAPTPLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CAPTPLTables
#   table1 - LST_CAPTPLTable1
class LST_CAPTPLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CAPTPLTable1
class LST_CAPTPLTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CAPTPLStruct1
#   tPLNAME - (any)
#   mCAP - (any)
#   oCAP - (any)
#   sCSCFLIST - (any)
#   cOMMENT - (any)
class LST_CAPTPLStruct1
  attr_accessor :tPLNAME
  attr_accessor :mCAP
  attr_accessor :oCAP
  attr_accessor :sCSCFLIST
  attr_accessor :cOMMENT

  def initialize(tPLNAME = nil, mCAP = nil, oCAP = nil, sCSCFLIST = nil, cOMMENT = nil)
    @tPLNAME = tPLNAME
    @mCAP = mCAP
    @oCAP = oCAP
    @sCSCFLIST = sCSCFLIST
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_TPLINFType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_TPLINFTables
class LST_TPLINFType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_TPLINFTables
#   table1 - LST_TPLINFTable1
class LST_TPLINFTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_TPLINFTable1
class LST_TPLINFTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_TPLINFStruct1
#   tPLID - (any)
#   tPLNAME - (any)
class LST_TPLINFStruct1
  attr_accessor :tPLID
  attr_accessor :tPLNAME

  def initialize(tPLID = nil, tPLNAME = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_PSIDYNDType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_PSIDYNDTables
class LST_PSIDYNDType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_PSIDYNDTables
#   table1 - LST_PSIDYNDTable1
class LST_PSIDYNDTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_PSIDYNDTable1
class LST_PSIDYNDTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_PSIDYNDStruct1
#   pISI - (any)
#   pUSI - (any)
#   aCTSTATE - (any)
#   rEGSTATE - (any)
#   sERVER - (any)
class LST_PSIDYNDStruct1
  attr_accessor :pISI
  attr_accessor :pUSI
  attr_accessor :aCTSTATE
  attr_accessor :rEGSTATE
  attr_accessor :sERVER

  def initialize(pISI = nil, pUSI = nil, aCTSTATE = nil, rEGSTATE = nil, sERVER = nil)
    @pISI = pISI
    @pUSI = pUSI
    @aCTSTATE = aCTSTATE
    @rEGSTATE = rEGSTATE
    @sERVER = sERVER
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AUTHINFType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_AUTHINFTables
class LST_AUTHINFType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AUTHINFTables
#   table1 - LST_AUTHINFTable1
class LST_AUTHINFTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AUTHINFTable1
class LST_AUTHINFTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AUTHINFStruct1
#   aKAFLAG - (any)
#   eAAFLAG - (any)
#   sDAFLAG - (any)
#   tAAFLAG - (any)
#   eIAFLAG - (any)
#   hDAFLAG - (any)
#   nBAFLAG - (any)
#   cAAFLAG - (any)
class LST_AUTHINFStruct1
  attr_accessor :aKAFLAG
  attr_accessor :eAAFLAG
  attr_accessor :sDAFLAG
  attr_accessor :tAAFLAG
  attr_accessor :eIAFLAG
  attr_accessor :hDAFLAG
  attr_accessor :nBAFLAG
  attr_accessor :cAAFLAG

  def initialize(aKAFLAG = nil, eAAFLAG = nil, sDAFLAG = nil, tAAFLAG = nil, eIAFLAG = nil, hDAFLAG = nil, nBAFLAG = nil, cAAFLAG = nil)
    @aKAFLAG = aKAFLAG
    @eAAFLAG = eAAFLAG
    @sDAFLAG = sDAFLAG
    @tAAFLAG = tAAFLAG
    @eIAFLAG = eIAFLAG
    @hDAFLAG = hDAFLAG
    @nBAFLAG = nBAFLAG
    @cAAFLAG = cAAFLAG
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NATPLIDType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_NATPLIDTables
class LST_NATPLIDType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NATPLIDTables
#   table1 - LST_NATPLIDTable1
class LST_NATPLIDTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NATPLIDTable1
class LST_NATPLIDTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NATPLIDStruct1
#   nATPLID - (any)
class LST_NATPLIDStruct1
  attr_accessor :nATPLID

  def initialize(nATPLID = nil)
    @nATPLID = nATPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NNCFLAGType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_NNCFLAGTables
class LST_NNCFLAGType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NNCFLAGTables
#   table1 - LST_NNCFLAGTable1
class LST_NNCFLAGTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NNCFLAGTable1
class LST_NNCFLAGTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NNCFLAGStruct1
#   nNCFLAG - (any)
class LST_NNCFLAGStruct1
  attr_accessor :nNCFLAG

  def initialize(nNCFLAG = nil)
    @nNCFLAG = nNCFLAG
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NNRLIType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_NNRLITables
class LST_NNRLIType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NNRLITables
#   table1 - LST_NNRLITable1
class LST_NNRLITables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NNRLITable1
class LST_NNRLITable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NNRLIStruct1
#   rLINDEX - (any)
#   rLI - (any)
#   rLT - (any)
#   dEFRLI - (any)
class LST_NNRLIStruct1
  attr_accessor :rLINDEX
  attr_accessor :rLI
  attr_accessor :rLT
  attr_accessor :dEFRLI

  def initialize(rLINDEX = nil, rLI = nil, rLT = nil, dEFRLI = nil)
    @rLINDEX = rLINDEX
    @rLI = rLI
    @rLT = rLT
    @dEFRLI = dEFRLI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASSPIDType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_ASSPIDTables
class LST_ASSPIDType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASSPIDTables
#   table1 - LST_ASSPIDTable1
class LST_ASSPIDTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASSPIDTable1
class LST_ASSPIDTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASSPIDStruct1
#   aSSPID - (any)
class LST_ASSPIDStruct1
  attr_accessor :aSSPID

  def initialize(aSSPID = nil)
    @aSSPID = aSSPID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SRVINDType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_SRVINDTables
class LST_SRVINDType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SRVINDTables
#   table1 - LST_SRVINDTable1
class LST_SRVINDTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SRVINDTable1
class LST_SRVINDTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SRVINDStruct1
#   sRVIND - (any)
#   rEPTYPE - (any)
class LST_SRVINDStruct1
  attr_accessor :sRVIND
  attr_accessor :rEPTYPE

  def initialize(sRVIND = nil, rEPTYPE = nil)
    @sRVIND = sRVIND
    @rEPTYPE = rEPTYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_REPDATAType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_REPDATATables
class LST_REPDATAType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_REPDATATables
#   table1 - LST_REPDATATable1
class LST_REPDATATables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_REPDATATable1
class LST_REPDATATable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_REPDATAStruct1
#   rEPDATA - (any)
#   rEPTYPE - (any)
class LST_REPDATAStruct1
  attr_accessor :rEPDATA
  attr_accessor :rEPTYPE

  def initialize(rEPDATA = nil, rEPTYPE = nil)
    @rEPDATA = rEPDATA
    @rEPTYPE = rEPTYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_DALIType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_DALITables
class LST_DALIType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_DALITables
#   table1 - LST_DALITable1
class LST_DALITables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_DALITable1
class LST_DALITable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_DALIStruct1
#   iMSALI - (any)
#   nASSALI - (any)
#   iPV4ADDR - (any)
#   iPV6ADDR - (any)
#   sIPADDR - (any)
#   nASSSTATUS - (any)
class LST_DALIStruct1
  attr_accessor :iMSALI
  attr_accessor :nASSALI
  attr_accessor :iPV4ADDR
  attr_accessor :iPV6ADDR
  attr_accessor :sIPADDR
  attr_accessor :nASSSTATUS

  def initialize(iMSALI = nil, nASSALI = nil, iPV4ADDR = nil, iPV6ADDR = nil, sIPADDR = nil, nASSSTATUS = nil)
    @iMSALI = iMSALI
    @nASSALI = nASSALI
    @iPV4ADDR = iPV4ADDR
    @iPV6ADDR = iPV6ADDR
    @sIPADDR = sIPADDR
    @nASSSTATUS = nASSSTATUS
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_MSIDType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_MSIDTables
class LST_MSIDType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_MSIDTables
#   table1 - LST_MSIDTable1
class LST_MSIDTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_MSIDTable1
class LST_MSIDTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_MSIDStruct1
#   iMPI - (any)
#   iMSI - (any)
#   iSDN - (any)
class LST_MSIDStruct1
  attr_accessor :iMPI
  attr_accessor :iMSI
  attr_accessor :iSDN

  def initialize(iMPI = nil, iMSI = nil, iSDN = nil)
    @iMPI = iMPI
    @iMSI = iMSI
    @iSDN = iSDN
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASSOCType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_ASSOCTables
class LST_ASSOCType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASSOCTables
#   table1 - LST_ASSOCTable1
class LST_ASSOCTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASSOCTable1
class LST_ASSOCTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASSOCStruct1
#   iMPI - (any)
#   iMSI - (any)
class LST_ASSOCStruct1
  attr_accessor :iMPI
  attr_accessor :iMSI

  def initialize(iMPI = nil, iMSI = nil)
    @iMPI = iMPI
    @iMSI = iMSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NBAINFType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_NBAINFTables
class LST_NBAINFType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NBAINFTables
#   table1 - LST_NBAINFTable1
class LST_NBAINFTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NBAINFTable1
class LST_NBAINFTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NBAINFStruct1
#   lINEIDIDX - (any)
#   lINEID - (any)
class LST_NBAINFStruct1
  attr_accessor :lINEIDIDX
  attr_accessor :lINEID

  def initialize(lINEIDIDX = nil, lINEID = nil)
    @lINEIDIDX = lINEIDIDX
    @lINEID = lINEID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CHGTPLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_CHGTPLTables
class LST_CHGTPLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CHGTPLTables
#   table1 - LST_CHGTPLTable1
class LST_CHGTPLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CHGTPLTable1
class LST_CHGTPLTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CHGTPLStruct1
#   tPLNAME - (any)
#   pECF - (any)
#   sECF - (any)
#   pCCF - (any)
#   sCCF - (any)
#   cOMMENT - (any)
class LST_CHGTPLStruct1
  attr_accessor :tPLNAME
  attr_accessor :pECF
  attr_accessor :sECF
  attr_accessor :pCCF
  attr_accessor :sCCF
  attr_accessor :cOMMENT

  def initialize(tPLNAME = nil, pECF = nil, sECF = nil, pCCF = nil, sCCF = nil, cOMMENT = nil)
    @tPLNAME = tPLNAME
    @pECF = pECF
    @sECF = sECF
    @pCCF = pCCF
    @sCCF = sCCF
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNTPLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_VNTPLTables
class LST_VNTPLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNTPLTables
#   table1 - LST_VNTPLTable1
class LST_VNTPLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNTPLTable1
class LST_VNTPLTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNTPLStruct1
#   tPLNAME - (any)
#   mATCHTYPE - (any)
#   cOMMENT - (any)
class LST_VNTPLStruct1
  attr_accessor :tPLNAME
  attr_accessor :mATCHTYPE
  attr_accessor :cOMMENT

  def initialize(tPLNAME = nil, mATCHTYPE = nil, cOMMENT = nil)
    @tPLNAME = tPLNAME
    @mATCHTYPE = mATCHTYPE
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNTPLADDRType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_VNTPLADDRTables
class LST_VNTPLADDRType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNTPLADDRTables
#   table1 - LST_VNTPLADDRTable1
class LST_VNTPLADDRTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNTPLADDRTable1
class LST_VNTPLADDRTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNTPLADDRStruct1
#   vN - (any)
#   vNTYPE - (any)
class LST_VNTPLADDRStruct1
  attr_accessor :vN
  attr_accessor :vNTYPE

  def initialize(vN = nil, vNTYPE = nil)
    @vN = vN
    @vNTYPE = vNTYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NATPLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_NATPLTables
class LST_NATPLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NATPLTables
#   table1 - LST_NATPLTable1
class LST_NATPLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NATPLTable1
class LST_NATPLTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NATPLStruct1
#   tPLNAME - (any)
#   mATCHTYPE - (any)
#   cOMMENT - (any)
class LST_NATPLStruct1
  attr_accessor :tPLNAME
  attr_accessor :mATCHTYPE
  attr_accessor :cOMMENT

  def initialize(tPLNAME = nil, mATCHTYPE = nil, cOMMENT = nil)
    @tPLNAME = tPLNAME
    @mATCHTYPE = mATCHTYPE
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NATPLADDRType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_NATPLADDRTables
class LST_NATPLADDRType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NATPLADDRTables
#   table1 - LST_NATPLADDRTable1
class LST_NATPLADDRTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NATPLADDRTable1
class LST_NATPLADDRTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NATPLADDRStruct1
#   nA - (any)
#   nATYPE - (any)
class LST_NATPLADDRStruct1
  attr_accessor :nA
  attr_accessor :nATYPE

  def initialize(nA = nil, nATYPE = nil)
    @nA = nA
    @nATYPE = nATYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_OCSITPLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_OCSITPLTables
class LST_OCSITPLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_OCSITPLTables
#   table1 - LST_OCSITPLTable1
class LST_OCSITPLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_OCSITPLTable1
class LST_OCSITPLTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_OCSITPLStruct1
#   tPLNAME - (any)
#   gSMSCFADDR - (any)
#   sK - (any)
#   dEFCALL - (any)
#   iMSSF - (any)
#   cOMMENT - (any)
class LST_OCSITPLStruct1
  attr_accessor :tPLNAME
  attr_accessor :gSMSCFADDR
  attr_accessor :sK
  attr_accessor :dEFCALL
  attr_accessor :iMSSF
  attr_accessor :cOMMENT

  def initialize(tPLNAME = nil, gSMSCFADDR = nil, sK = nil, dEFCALL = nil, iMSSF = nil, cOMMENT = nil)
    @tPLNAME = tPLNAME
    @gSMSCFADDR = gSMSCFADDR
    @sK = sK
    @dEFCALL = dEFCALL
    @iMSSF = iMSSF
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_TCSITPLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_TCSITPLTables
class LST_TCSITPLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_TCSITPLTables
#   table1 - LST_TCSITPLTable1
class LST_TCSITPLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_TCSITPLTable1
class LST_TCSITPLTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_TCSITPLStruct1
#   tPLNAME - (any)
#   gSMSCFADDR - (any)
#   sK - (any)
#   dEFCALL - (any)
#   iMSSF - (any)
#   cOMMENT - (any)
class LST_TCSITPLStruct1
  attr_accessor :tPLNAME
  attr_accessor :gSMSCFADDR
  attr_accessor :sK
  attr_accessor :dEFCALL
  attr_accessor :iMSSF
  attr_accessor :cOMMENT

  def initialize(tPLNAME = nil, gSMSCFADDR = nil, sK = nil, dEFCALL = nil, iMSSF = nil, cOMMENT = nil)
    @tPLNAME = tPLNAME
    @gSMSCFADDR = gSMSCFADDR
    @sK = sK
    @dEFCALL = dEFCALL
    @iMSSF = iMSSF
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CSIType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_CSITables
class LST_CSIType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CSITables
#   table1 - LST_CSITable1
class LST_CSITables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CSITable1
class LST_CSITable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CSIStruct1
#   iMSI - (any)
#   iSDN - (any)
#   cSITYPE - (any)
#   cSITPLID - (any)
class LST_CSIStruct1
  attr_accessor :iMSI
  attr_accessor :iSDN
  attr_accessor :cSITYPE
  attr_accessor :cSITPLID

  def initialize(iMSI = nil, iSDN = nil, cSITYPE = nil, cSITPLID = nil)
    @iMSI = iMSI
    @iSDN = iSDN
    @cSITYPE = cSITYPE
    @cSITPLID = cSITPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SERPRVType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_SERPRVTables
class LST_SERPRVType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SERPRVTables
#   table1 - LST_SERPRVTable1
class LST_SERPRVTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SERPRVTable1
class LST_SERPRVTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SERPRVStruct1
#   sERPRVID - (any)
class LST_SERPRVStruct1
  attr_accessor :sERPRVID

  def initialize(sERPRVID = nil)
    @sERPRVID = sERPRVID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_TAAType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_TAATables
class LST_TAAType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_TAATables
#   table1 - LST_TAATable1
class LST_TAATables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_TAATable1
class LST_TAATable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_TAAStruct1
#   tAAFLAG - (any)
class LST_TAAStruct1
  attr_accessor :tAAFLAG

  def initialize(tAAFLAG = nil)
    @tAAFLAG = tAAFLAG
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_USRPRIORType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_USRPRIORTables
class LST_USRPRIORType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_USRPRIORTables
#   table1 - LST_USRPRIORTable1
class LST_USRPRIORTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_USRPRIORTable1
class LST_USRPRIORTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_USRPRIORStruct1
#   uSRPRIOR - (any)
class LST_USRPRIORStruct1
  attr_accessor :uSRPRIOR

  def initialize(uSRPRIOR = nil)
    @uSRPRIOR = uSRPRIOR
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SDAINFType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_SDAINFTables
class LST_SDAINFType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SDAINFTables
#   table1 - LST_SDAINFTable1
class LST_SDAINFTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SDAINFTable1
class LST_SDAINFTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SDAINFStruct1
#   iMPI - (any)
#   hUSERNAME - (any)
#   pWD - (any)
#   rEALM - (any)
#   hA1 - (any)
class LST_SDAINFStruct1
  attr_accessor :iMPI
  attr_accessor :hUSERNAME
  attr_accessor :pWD
  attr_accessor :rEALM
  attr_accessor :hA1

  def initialize(iMPI = nil, hUSERNAME = nil, pWD = nil, rEALM = nil, hA1 = nil)
    @iMPI = iMPI
    @hUSERNAME = hUSERNAME
    @pWD = pWD
    @rEALM = rEALM
    @hA1 = hA1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_LRIType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_LRITables
class LST_LRIType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_LRITables
#   table1 - LST_LRITable1
class LST_LRITables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_LRITable1
class LST_LRITable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_LRIStruct1
#   lRI - (any)
class LST_LRIStruct1
  attr_accessor :lRI

  def initialize(lRI = nil)
    @lRI = lRI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SIFCType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_SIFCTables
class LST_SIFCType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SIFCTables
#   table1 - LST_SIFCTable1
class LST_SIFCTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SIFCTable1
class LST_SIFCTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SIFCStruct1
#   sIFCID - (any)
class LST_SIFCStruct1
  attr_accessor :sIFCID

  def initialize(sIFCID = nil)
    @sIFCID = sIFCID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SIFCTPLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_SIFCTPLTables
class LST_SIFCTPLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SIFCTPLTables
#   table1 - LST_SIFCTPLTable1
class LST_SIFCTPLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SIFCTPLTable1
class LST_SIFCTPLTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SIFCTPLStruct1
#   tPLNAME - (any)
#   cOMMENT - (any)
class LST_SIFCTPLStruct1
  attr_accessor :tPLNAME
  attr_accessor :cOMMENT

  def initialize(tPLNAME = nil, cOMMENT = nil)
    @tPLNAME = tPLNAME
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SIFCINFType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_SIFCINFTables
class LST_SIFCINFType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SIFCINFTables
#   table1 - LST_SIFCINFTable1
class LST_SIFCINFTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SIFCINFTable1
class LST_SIFCINFTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SIFCINFStruct1
#   iFCNAME - (any)
#   pRIORITY - (any)
#   pARTIND - (any)
#   sERVER - (any)
#   dEFHND - (any)
#   sERVINFO - (any)
#   tRIGPT - (any)
class LST_SIFCINFStruct1
  attr_accessor :iFCNAME
  attr_accessor :pRIORITY
  attr_accessor :pARTIND
  attr_accessor :sERVER
  attr_accessor :dEFHND
  attr_accessor :sERVINFO
  attr_accessor :tRIGPT

  def initialize(iFCNAME = nil, pRIORITY = nil, pARTIND = nil, sERVER = nil, dEFHND = nil, sERVINFO = nil, tRIGPT = nil)
    @iFCNAME = iFCNAME
    @pRIORITY = pRIORITY
    @pARTIND = pARTIND
    @sERVER = sERVER
    @dEFHND = dEFHND
    @sERVINFO = sERVINFO
    @tRIGPT = tRIGPT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ESRNType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_ESRNTables
class LST_ESRNType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ESRNTables
#   table1 - LST_ESRNTable1
class LST_ESRNTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ESRNTable1
class LST_ESRNTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ESRNStruct1
#   eSRN - (any)
class LST_ESRNStruct1
  attr_accessor :eSRN

  def initialize(eSRN = nil)
    @eSRN = eSRN
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ONEKEYType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_ONEKEYTables
class LST_ONEKEYType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ONEKEYTables
#   table1 - LST_ONEKEYTable1
class LST_ONEKEYTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ONEKEYTable1
class LST_ONEKEYTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ONEKEYStruct1
#   wUSERNAME - (any)
#   hTOKEN - (any)
#   aP - (any)
class LST_ONEKEYStruct1
  attr_accessor :wUSERNAME
  attr_accessor :hTOKEN
  attr_accessor :aP

  def initialize(wUSERNAME = nil, hTOKEN = nil, aP = nil)
    @wUSERNAME = wUSERNAME
    @hTOKEN = hTOKEN
    @aP = aP
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HOPType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HOPTables
class LST_HOPType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HOPTables
#   table1 - LST_HOPTable1
class LST_HOPTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HOPTable1
class LST_HOPTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HOPStruct1
#   oPSNO - (any)
#   oPVALUE - (any)
class LST_HOPStruct1
  attr_accessor :oPSNO
  attr_accessor :oPVALUE

  def initialize(oPSNO = nil, oPVALUE = nil)
    @oPSNO = oPSNO
    @oPVALUE = oPVALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAMFType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HAMFTables
class LST_HAMFType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAMFTables
#   table1 - LST_HAMFTable1
class LST_HAMFTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAMFTable1
class LST_HAMFTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAMFStruct1
#   aMFSNO - (any)
#   aMFVALUE - (any)
class LST_HAMFStruct1
  attr_accessor :aMFSNO
  attr_accessor :aMFVALUE

  def initialize(aMFSNO = nil, aMFVALUE = nil)
    @aMFSNO = aMFSNO
    @aMFVALUE = aMFVALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HK4Type
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HK4Tables
class LST_HK4Type
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HK4Tables
#   table1 - LST_HK4Table1
class LST_HK4Tables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HK4Table1
class LST_HK4Table1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HK4Struct1
#   k4SNO - (any)
#   k4VALUE - (any)
class LST_HK4Struct1
  attr_accessor :k4SNO
  attr_accessor :k4VALUE

  def initialize(k4SNO = nil, k4VALUE = nil)
    @k4SNO = k4SNO
    @k4VALUE = k4VALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HKIType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HKITables
class LST_HKIType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HKITables
#   table1 - LST_HKITable1
class LST_HKITables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HKITable1
class LST_HKITable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HKIStruct1
#   k - (any)
#   k4SNO - (any)
#   oPSNO - (any)
#   aMFSNO - (any)
#   oPC - (any)
#   oPCK4SNO - (any)
class LST_HKIStruct1
  attr_accessor :k
  attr_accessor :k4SNO
  attr_accessor :oPSNO
  attr_accessor :aMFSNO
  attr_accessor :oPC
  attr_accessor :oPCK4SNO

  def initialize(k = nil, k4SNO = nil, oPSNO = nil, aMFSNO = nil, oPC = nil, oPCK4SNO = nil)
    @k = k
    @k4SNO = k4SNO
    @oPSNO = oPSNO
    @aMFSNO = aMFSNO
    @oPC = oPC
    @oPCK4SNO = oPCK4SNO
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSUBType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HSUBTables
class LST_HSUBType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSUBTables
#   table1 - LST_HSUBTable1
class LST_HSUBTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSUBTable1
class LST_HSUBTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSUBStruct1
#   sUBID - (any)
#   iMPI - (any)
#   iMPU - (any)
#   sHARED - (any)
#   iRSID - (any)
#   aLIASID - (any)
#   dEFIMPU - (any)
class LST_HSUBStruct1
  attr_accessor :sUBID
  attr_accessor :iMPI
  attr_accessor :iMPU
  attr_accessor :sHARED
  attr_accessor :iRSID
  attr_accessor :aLIASID
  attr_accessor :dEFIMPU

  def initialize(sUBID = nil, iMPI = nil, iMPU = nil, sHARED = nil, iRSID = nil, aLIASID = nil, dEFIMPU = nil)
    @sUBID = sUBID
    @iMPI = iMPI
    @iMPU = iMPU
    @sHARED = sHARED
    @iRSID = iRSID
    @aLIASID = aLIASID
    @dEFIMPU = dEFIMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCHARGIDType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HCHARGIDTables
class LST_HCHARGIDType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCHARGIDTables
#   table1 - LST_HCHARGIDTable1
class LST_HCHARGIDTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCHARGIDTable1
class LST_HCHARGIDTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCHARGIDStruct1
#   cHARGTPLID - (any)
class LST_HCHARGIDStruct1
  attr_accessor :cHARGTPLID

  def initialize(cHARGTPLID = nil)
    @cHARGTPLID = cHARGTPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HBARType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HBARTables
class LST_HBARType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HBARTables
#   table1 - LST_HBARTable1
class LST_HBARTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HBARTable1
class LST_HBARTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HBARStruct1
#   bAR - (any)
class LST_HBARStruct1
  attr_accessor :bAR

  def initialize(bAR = nil)
    @bAR = bAR
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HREGAUTHType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HREGAUTHTables
class LST_HREGAUTHType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HREGAUTHTables
#   table1 - LST_HREGAUTHTable1
class LST_HREGAUTHTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HREGAUTHTable1
class LST_HREGAUTHTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HREGAUTHStruct1
#   rEGAUTH - (any)
class LST_HREGAUTHStruct1
  attr_accessor :rEGAUTH

  def initialize(rEGAUTH = nil)
    @rEGAUTH = rEGAUTH
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNTPLIDType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HVNTPLIDTables
class LST_HVNTPLIDType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNTPLIDTables
#   table1 - LST_HVNTPLIDTable1
class LST_HVNTPLIDTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNTPLIDTable1
class LST_HVNTPLIDTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNTPLIDStruct1
#   tPLID - (any)
class LST_HVNTPLIDStruct1
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HMEDIAIDType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HMEDIAIDTables
class LST_HMEDIAIDType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HMEDIAIDTables
#   table1 - LST_HMEDIAIDTable1
class LST_HMEDIAIDTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HMEDIAIDTable1
class LST_HMEDIAIDTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HMEDIAIDStruct1
#   mEDIAID - (any)
class LST_HMEDIAIDStruct1
  attr_accessor :mEDIAID

  def initialize(mEDIAID = nil)
    @mEDIAID = mEDIAID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HMOCAPType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HMOCAPTables
class LST_HMOCAPType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HMOCAPTables
#   table1 - LST_HMOCAPTable1
class LST_HMOCAPTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HMOCAPTable1
class LST_HMOCAPTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HMOCAPStruct1
#   mCAP - (any)
#   oCAP - (any)
class LST_HMOCAPStruct1
  attr_accessor :mCAP
  attr_accessor :oCAP

  def initialize(mCAP = nil, oCAP = nil)
    @mCAP = mCAP
    @oCAP = oCAP
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HEIAType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HEIATables
class LST_HEIAType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HEIATables
#   table1 - LST_HEIATable1
class LST_HEIATables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HEIATable1
class LST_HEIATable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HEIAStruct1
#   iMPI - (any)
#   iMSI - (any)
#   iPV4ADDR - (any)
#   iPV6ADDR - (any)
class LST_HEIAStruct1
  attr_accessor :iMPI
  attr_accessor :iMSI
  attr_accessor :iPV4ADDR
  attr_accessor :iPV6ADDR

  def initialize(iMPI = nil, iMSI = nil, iPV4ADDR = nil, iPV6ADDR = nil)
    @iMPI = iMPI
    @iMSI = iMSI
    @iPV4ADDR = iPV4ADDR
    @iPV6ADDR = iPV6ADDR
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HEAAType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HEAATables
class LST_HEAAType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HEAATables
#   table1 - LST_HEAATable1
class LST_HEAATables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HEAATable1
class LST_HEAATable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HEAAStruct1
#   iMPI - (any)
#   iMSI - (any)
class LST_HEAAStruct1
  attr_accessor :iMPI
  attr_accessor :iMSI

  def initialize(iMPI = nil, iMSI = nil)
    @iMPI = iMPI
    @iMSI = iMSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HASTables
class LST_HASType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASTables
#   table1 - LST_HASTable1
class LST_HASTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASTable1
class LST_HASTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASStruct1
#   aS - (any)
class LST_HASStruct1
  attr_accessor :aS

  def initialize(aS = nil)
    @aS = aS
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNCFLAGType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HVNCFLAGTables
class LST_HVNCFLAGType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNCFLAGTables
#   table1 - LST_HVNCFLAGTable1
class LST_HVNCFLAGTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNCFLAGTable1
class LST_HVNCFLAGTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNCFLAGStruct1
#   vNCFLAG - (any)
class LST_HVNCFLAGStruct1
  attr_accessor :vNCFLAG

  def initialize(vNCFLAG = nil)
    @vNCFLAG = vNCFLAG
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HIFCType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HIFCTables
class LST_HIFCType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HIFCTables
#   table1 - LST_HIFCTable1
class LST_HIFCTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HIFCTable1
class LST_HIFCTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HIFCStruct1
#   pRIORITY - (any)
#   pARTIND - (any)
#   sERVER - (any)
#   dEFHND - (any)
#   sERVINFO - (any)
#   tRIGPT - (any)
class LST_HIFCStruct1
  attr_accessor :pRIORITY
  attr_accessor :pARTIND
  attr_accessor :sERVER
  attr_accessor :dEFHND
  attr_accessor :sERVINFO
  attr_accessor :tRIGPT

  def initialize(pRIORITY = nil, pARTIND = nil, sERVER = nil, dEFHND = nil, sERVINFO = nil, tRIGPT = nil)
    @pRIORITY = pRIORITY
    @pARTIND = pARTIND
    @sERVER = sERVER
    @dEFHND = dEFHND
    @sERVINFO = sERVINFO
    @tRIGPT = tRIGPT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCAPSCSCFType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HCAPSCSCFTables
class LST_HCAPSCSCFType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCAPSCSCFTables
#   table1 - LST_HCAPSCSCFTable1
class LST_HCAPSCSCFTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCAPSCSCFTable1
class LST_HCAPSCSCFTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCAPSCSCFStruct1
#   sCSCF - (any)
class LST_HCAPSCSCFStruct1
  attr_accessor :sCSCF

  def initialize(sCSCF = nil)
    @sCSCF = sCSCF
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSPSHAREType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HSPSHARETables
class LST_HSPSHAREType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSPSHARETables
#   table1 - LST_HSPSHARETable1
class LST_HSPSHARETables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSPSHARETable1
class LST_HSPSHARETable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSPSHAREStruct1
#   iMPU - (any)
class LST_HSPSHAREStruct1
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HDYNDATAType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HDYNDATATables
class LST_HDYNDATAType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HDYNDATATables
#   table1 - LST_HDYNDATATable1
class LST_HDYNDATATables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HDYNDATATable1
class LST_HDYNDATATable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HDYNDATAStruct1
#   iMPI - (any)
#   iMPU - (any)
#   iMSUSERST - (any)
#   pENDINGFLG - (any)
#   sERVER - (any)
class LST_HDYNDATAStruct1
  attr_accessor :iMPI
  attr_accessor :iMPU
  attr_accessor :iMSUSERST
  attr_accessor :pENDINGFLG
  attr_accessor :sERVER

  def initialize(iMPI = nil, iMPU = nil, iMSUSERST = nil, pENDINGFLG = nil, sERVER = nil)
    @iMPI = iMPI
    @iMPU = iMPU
    @iMSUSERST = iMSUSERST
    @pENDINGFLG = pENDINGFLG
    @sERVER = sERVER
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASSUBDATAType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HASSUBDATATables
class LST_HASSUBDATAType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASSUBDATATables
#   table1 - LST_HASSUBDATATable1
class LST_HASSUBDATATables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASSUBDATATable1
class LST_HASSUBDATATable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASSUBDATAStruct1
#   sUBASID - (any)
#   dATATYPE - (any)
#   aSNAME - (any)
#   sRVIND - (any)
#   aLIASID - (any)
class LST_HASSUBDATAStruct1
  attr_accessor :sUBASID
  attr_accessor :dATATYPE
  attr_accessor :aSNAME
  attr_accessor :sRVIND
  attr_accessor :aLIASID

  def initialize(sUBASID = nil, dATATYPE = nil, aSNAME = nil, sRVIND = nil, aLIASID = nil)
    @sUBASID = sUBASID
    @dATATYPE = dATATYPE
    @aSNAME = aSNAME
    @sRVIND = sRVIND
    @aLIASID = aLIASID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPSIType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HPSITables
class LST_HPSIType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPSITables
#   table1 - LST_HPSITable1
class LST_HPSITables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPSITable1
class LST_HPSITable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPSIStruct1
#   pISI - (any)
#   pUSI - (any)
#   iRSID - (any)
class LST_HPSIStruct1
  attr_accessor :pISI
  attr_accessor :pUSI
  attr_accessor :iRSID

  def initialize(pISI = nil, pUSI = nil, iRSID = nil)
    @pISI = pISI
    @pUSI = pUSI
    @iRSID = iRSID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HHDAINFType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HHDAINFTables
class LST_HHDAINFType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HHDAINFTables
#   table1 - LST_HHDAINFTable1
class LST_HHDAINFTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HHDAINFTable1
class LST_HHDAINFTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HHDAINFStruct1
#   iMPI - (any)
#   hUSERNAME - (any)
#   pWD - (any)
class LST_HHDAINFStruct1
  attr_accessor :iMPI
  attr_accessor :hUSERNAME
  attr_accessor :pWD

  def initialize(iMPI = nil, hUSERNAME = nil, pWD = nil)
    @iMPI = iMPI
    @hUSERNAME = hUSERNAME
    @pWD = pWD
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HIMPUTPLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HIMPUTPLTables
class LST_HIMPUTPLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HIMPUTPLTables
#   table1 - LST_HIMPUTPLTable1
class LST_HIMPUTPLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HIMPUTPLTable1
class LST_HIMPUTPLTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HIMPUTPLStruct1
#   tPLNAME - (any)
#   vNTPLID - (any)
#   nATPLID - (any)
#   bAR - (any)
#   rEGAUTH - (any)
#   vNCFLAG - (any)
#   nNCFLAG - (any)
#   sERPRVID - (any)
#   lRI - (any)
#   cOMMENT - (any)
class LST_HIMPUTPLStruct1
  attr_accessor :tPLNAME
  attr_accessor :vNTPLID
  attr_accessor :nATPLID
  attr_accessor :bAR
  attr_accessor :rEGAUTH
  attr_accessor :vNCFLAG
  attr_accessor :nNCFLAG
  attr_accessor :sERPRVID
  attr_accessor :lRI
  attr_accessor :cOMMENT

  def initialize(tPLNAME = nil, vNTPLID = nil, nATPLID = nil, bAR = nil, rEGAUTH = nil, vNCFLAG = nil, nNCFLAG = nil, sERPRVID = nil, lRI = nil, cOMMENT = nil)
    @tPLNAME = tPLNAME
    @vNTPLID = vNTPLID
    @nATPLID = nATPLID
    @bAR = bAR
    @rEGAUTH = rEGAUTH
    @vNCFLAG = vNCFLAG
    @nNCFLAG = nNCFLAG
    @sERPRVID = sERPRVID
    @lRI = lRI
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPUSITPLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HPUSITPLTables
class LST_HPUSITPLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPUSITPLTables
#   table1 - LST_HPUSITPLTable1
class LST_HPUSITPLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPUSITPLTable1
class LST_HPUSITPLTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPUSITPLStruct1
#   tPLNAME - (any)
#   aS - (any)
#   bAR - (any)
#   aCTSTATE - (any)
#   sERPRVID - (any)
#   lRI - (any)
#   cOMMENT - (any)
class LST_HPUSITPLStruct1
  attr_accessor :tPLNAME
  attr_accessor :aS
  attr_accessor :bAR
  attr_accessor :aCTSTATE
  attr_accessor :sERPRVID
  attr_accessor :lRI
  attr_accessor :cOMMENT

  def initialize(tPLNAME = nil, aS = nil, bAR = nil, aCTSTATE = nil, sERPRVID = nil, lRI = nil, cOMMENT = nil)
    @tPLNAME = tPLNAME
    @aS = aS
    @bAR = bAR
    @aCTSTATE = aCTSTATE
    @sERPRVID = sERPRVID
    @lRI = lRI
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HIFCTPLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HIFCTPLTables
class LST_HIFCTPLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HIFCTPLTables
#   table1 - LST_HIFCTPLTable1
class LST_HIFCTPLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HIFCTPLTable1
class LST_HIFCTPLTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HIFCTPLStruct1
#   tPLNAME - (any)
#   pRIORITY - (any)
#   pARTIND - (any)
#   sERVER - (any)
#   dEFHND - (any)
#   sERVINFO - (any)
#   tRIGPT - (any)
#   cOMMENT - (any)
class LST_HIFCTPLStruct1
  attr_accessor :tPLNAME
  attr_accessor :pRIORITY
  attr_accessor :pARTIND
  attr_accessor :sERVER
  attr_accessor :dEFHND
  attr_accessor :sERVINFO
  attr_accessor :tRIGPT
  attr_accessor :cOMMENT

  def initialize(tPLNAME = nil, pRIORITY = nil, pARTIND = nil, sERVER = nil, dEFHND = nil, sERVINFO = nil, tRIGPT = nil, cOMMENT = nil)
    @tPLNAME = tPLNAME
    @pRIORITY = pRIORITY
    @pARTIND = pARTIND
    @sERVER = sERVER
    @dEFHND = dEFHND
    @sERVINFO = sERVINFO
    @tRIGPT = tRIGPT
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSPTPLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HSPTPLTables
class LST_HSPTPLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSPTPLTables
#   table1 - LST_HSPTPLTable1
class LST_HSPTPLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSPTPLTable1
class LST_HSPTPLTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSPTPLStruct1
#   tPLNAME - (any)
#   mEDIAID - (any)
#   iFCLIST - (any)
#   sIFCLIST - (any)
#   cOMMENT - (any)
class LST_HSPTPLStruct1
  attr_accessor :tPLNAME
  attr_accessor :mEDIAID
  attr_accessor :iFCLIST
  attr_accessor :sIFCLIST
  attr_accessor :cOMMENT

  def initialize(tPLNAME = nil, mEDIAID = nil, iFCLIST = nil, sIFCLIST = nil, cOMMENT = nil)
    @tPLNAME = tPLNAME
    @mEDIAID = mEDIAID
    @iFCLIST = iFCLIST
    @sIFCLIST = sIFCLIST
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAKATPLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HAKATPLTables
class LST_HAKATPLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAKATPLTables
#   table1 - LST_HAKATPLTable1
class LST_HAKATPLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAKATPLTable1
class LST_HAKATPLTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAKATPLStruct1
#   tPLNAME - (any)
#   k4SNO - (any)
#   oPSNO - (any)
#   aMFSNO - (any)
#   oPC - (any)
#   oPCK4SNO - (any)
#   cOMMENT - (any)
class LST_HAKATPLStruct1
  attr_accessor :tPLNAME
  attr_accessor :k4SNO
  attr_accessor :oPSNO
  attr_accessor :aMFSNO
  attr_accessor :oPC
  attr_accessor :oPCK4SNO
  attr_accessor :cOMMENT

  def initialize(tPLNAME = nil, k4SNO = nil, oPSNO = nil, aMFSNO = nil, oPC = nil, oPCK4SNO = nil, cOMMENT = nil)
    @tPLNAME = tPLNAME
    @k4SNO = k4SNO
    @oPSNO = oPSNO
    @aMFSNO = aMFSNO
    @oPC = oPC
    @oPCK4SNO = oPCK4SNO
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCAPTPLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HCAPTPLTables
class LST_HCAPTPLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCAPTPLTables
#   table1 - LST_HCAPTPLTable1
class LST_HCAPTPLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCAPTPLTable1
class LST_HCAPTPLTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCAPTPLStruct1
#   tPLNAME - (any)
#   mCAP - (any)
#   oCAP - (any)
#   sCSCFLIST - (any)
#   cOMMENT - (any)
class LST_HCAPTPLStruct1
  attr_accessor :tPLNAME
  attr_accessor :mCAP
  attr_accessor :oCAP
  attr_accessor :sCSCFLIST
  attr_accessor :cOMMENT

  def initialize(tPLNAME = nil, mCAP = nil, oCAP = nil, sCSCFLIST = nil, cOMMENT = nil)
    @tPLNAME = tPLNAME
    @mCAP = mCAP
    @oCAP = oCAP
    @sCSCFLIST = sCSCFLIST
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HTPLINFType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HTPLINFTables
class LST_HTPLINFType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HTPLINFTables
#   table1 - LST_HTPLINFTable1
class LST_HTPLINFTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HTPLINFTable1
class LST_HTPLINFTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HTPLINFStruct1
#   tPLID - (any)
#   tPLNAME - (any)
class LST_HTPLINFStruct1
  attr_accessor :tPLID
  attr_accessor :tPLNAME

  def initialize(tPLID = nil, tPLNAME = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPSIDYNDType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HPSIDYNDTables
class LST_HPSIDYNDType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPSIDYNDTables
#   table1 - LST_HPSIDYNDTable1
class LST_HPSIDYNDTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPSIDYNDTable1
class LST_HPSIDYNDTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPSIDYNDStruct1
#   pISI - (any)
#   pUSI - (any)
#   aCTSTATE - (any)
#   rEGSTATE - (any)
#   sERVER - (any)
class LST_HPSIDYNDStruct1
  attr_accessor :pISI
  attr_accessor :pUSI
  attr_accessor :aCTSTATE
  attr_accessor :rEGSTATE
  attr_accessor :sERVER

  def initialize(pISI = nil, pUSI = nil, aCTSTATE = nil, rEGSTATE = nil, sERVER = nil)
    @pISI = pISI
    @pUSI = pUSI
    @aCTSTATE = aCTSTATE
    @rEGSTATE = rEGSTATE
    @sERVER = sERVER
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAUTHINFType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HAUTHINFTables
class LST_HAUTHINFType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAUTHINFTables
#   table1 - LST_HAUTHINFTable1
class LST_HAUTHINFTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAUTHINFTable1
class LST_HAUTHINFTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAUTHINFStruct1
#   aKAFLAG - (any)
#   eAAFLAG - (any)
#   sDAFLAG - (any)
#   tAAFLAG - (any)
#   eIAFLAG - (any)
#   hDAFLAG - (any)
#   nBAFLAG - (any)
#   cAAFLAG - (any)
class LST_HAUTHINFStruct1
  attr_accessor :aKAFLAG
  attr_accessor :eAAFLAG
  attr_accessor :sDAFLAG
  attr_accessor :tAAFLAG
  attr_accessor :eIAFLAG
  attr_accessor :hDAFLAG
  attr_accessor :nBAFLAG
  attr_accessor :cAAFLAG

  def initialize(aKAFLAG = nil, eAAFLAG = nil, sDAFLAG = nil, tAAFLAG = nil, eIAFLAG = nil, hDAFLAG = nil, nBAFLAG = nil, cAAFLAG = nil)
    @aKAFLAG = aKAFLAG
    @eAAFLAG = eAAFLAG
    @sDAFLAG = sDAFLAG
    @tAAFLAG = tAAFLAG
    @eIAFLAG = eIAFLAG
    @hDAFLAG = hDAFLAG
    @nBAFLAG = nBAFLAG
    @cAAFLAG = cAAFLAG
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNATPLIDType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HNATPLIDTables
class LST_HNATPLIDType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNATPLIDTables
#   table1 - LST_HNATPLIDTable1
class LST_HNATPLIDTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNATPLIDTable1
class LST_HNATPLIDTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNATPLIDStruct1
#   nATPLID - (any)
class LST_HNATPLIDStruct1
  attr_accessor :nATPLID

  def initialize(nATPLID = nil)
    @nATPLID = nATPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNNCFLAGType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HNNCFLAGTables
class LST_HNNCFLAGType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNNCFLAGTables
#   table1 - LST_HNNCFLAGTable1
class LST_HNNCFLAGTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNNCFLAGTable1
class LST_HNNCFLAGTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNNCFLAGStruct1
#   nNCFLAG - (any)
class LST_HNNCFLAGStruct1
  attr_accessor :nNCFLAG

  def initialize(nNCFLAG = nil)
    @nNCFLAG = nNCFLAG
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNNRLIType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HNNRLITables
class LST_HNNRLIType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNNRLITables
#   table1 - LST_HNNRLITable1
class LST_HNNRLITables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNNRLITable1
class LST_HNNRLITable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNNRLIStruct1
#   rLINDEX - (any)
#   rLI - (any)
#   rLT - (any)
#   dEFRLI - (any)
class LST_HNNRLIStruct1
  attr_accessor :rLINDEX
  attr_accessor :rLI
  attr_accessor :rLT
  attr_accessor :dEFRLI

  def initialize(rLINDEX = nil, rLI = nil, rLT = nil, dEFRLI = nil)
    @rLINDEX = rLINDEX
    @rLI = rLI
    @rLT = rLT
    @dEFRLI = dEFRLI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASSPIDType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HASSPIDTables
class LST_HASSPIDType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASSPIDTables
#   table1 - LST_HASSPIDTable1
class LST_HASSPIDTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASSPIDTable1
class LST_HASSPIDTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASSPIDStruct1
#   aSSPID - (any)
class LST_HASSPIDStruct1
  attr_accessor :aSSPID

  def initialize(aSSPID = nil)
    @aSSPID = aSSPID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSRVINDType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HSRVINDTables
class LST_HSRVINDType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSRVINDTables
#   table1 - LST_HSRVINDTable1
class LST_HSRVINDTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSRVINDTable1
class LST_HSRVINDTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSRVINDStruct1
#   sRVIND - (any)
#   rEPTYPE - (any)
class LST_HSRVINDStruct1
  attr_accessor :sRVIND
  attr_accessor :rEPTYPE

  def initialize(sRVIND = nil, rEPTYPE = nil)
    @sRVIND = sRVIND
    @rEPTYPE = rEPTYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HREPDATAType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HREPDATATables
class LST_HREPDATAType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HREPDATATables
#   table1 - LST_HREPDATATable1
class LST_HREPDATATables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HREPDATATable1
class LST_HREPDATATable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HREPDATAStruct1
#   rEPDATA - (any)
#   rEPTYPE - (any)
class LST_HREPDATAStruct1
  attr_accessor :rEPDATA
  attr_accessor :rEPTYPE

  def initialize(rEPDATA = nil, rEPTYPE = nil)
    @rEPDATA = rEPDATA
    @rEPTYPE = rEPTYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HDALIType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HDALITables
class LST_HDALIType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HDALITables
#   table1 - LST_HDALITable1
class LST_HDALITables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HDALITable1
class LST_HDALITable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HDALIStruct1
#   iMSALI - (any)
#   nASSALI - (any)
#   iPV4ADDR - (any)
#   iPV6ADDR - (any)
#   sIPADDR - (any)
#   nASSSTATUS - (any)
class LST_HDALIStruct1
  attr_accessor :iMSALI
  attr_accessor :nASSALI
  attr_accessor :iPV4ADDR
  attr_accessor :iPV6ADDR
  attr_accessor :sIPADDR
  attr_accessor :nASSSTATUS

  def initialize(iMSALI = nil, nASSALI = nil, iPV4ADDR = nil, iPV6ADDR = nil, sIPADDR = nil, nASSSTATUS = nil)
    @iMSALI = iMSALI
    @nASSALI = nASSALI
    @iPV4ADDR = iPV4ADDR
    @iPV6ADDR = iPV6ADDR
    @sIPADDR = sIPADDR
    @nASSSTATUS = nASSSTATUS
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HMSIDType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HMSIDTables
class LST_HMSIDType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HMSIDTables
#   table1 - LST_HMSIDTable1
class LST_HMSIDTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HMSIDTable1
class LST_HMSIDTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HMSIDStruct1
#   iMPI - (any)
#   iMSI - (any)
#   iSDN - (any)
class LST_HMSIDStruct1
  attr_accessor :iMPI
  attr_accessor :iMSI
  attr_accessor :iSDN

  def initialize(iMPI = nil, iMSI = nil, iSDN = nil)
    @iMPI = iMPI
    @iMSI = iMSI
    @iSDN = iSDN
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASSOCType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HASSOCTables
class LST_HASSOCType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASSOCTables
#   table1 - LST_HASSOCTable1
class LST_HASSOCTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASSOCTable1
class LST_HASSOCTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASSOCStruct1
#   iMPI - (any)
#   iMSI - (any)
class LST_HASSOCStruct1
  attr_accessor :iMPI
  attr_accessor :iMSI

  def initialize(iMPI = nil, iMSI = nil)
    @iMPI = iMPI
    @iMSI = iMSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNBAINFType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HNBAINFTables
class LST_HNBAINFType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNBAINFTables
#   table1 - LST_HNBAINFTable1
class LST_HNBAINFTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNBAINFTable1
class LST_HNBAINFTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNBAINFStruct1
#   lINEIDIDX - (any)
#   lINEID - (any)
class LST_HNBAINFStruct1
  attr_accessor :lINEIDIDX
  attr_accessor :lINEID

  def initialize(lINEIDIDX = nil, lINEID = nil)
    @lINEIDIDX = lINEIDIDX
    @lINEID = lINEID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCHGTPLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HCHGTPLTables
class LST_HCHGTPLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCHGTPLTables
#   table1 - LST_HCHGTPLTable1
class LST_HCHGTPLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCHGTPLTable1
class LST_HCHGTPLTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCHGTPLStruct1
#   tPLNAME - (any)
#   pECF - (any)
#   sECF - (any)
#   pCCF - (any)
#   sCCF - (any)
#   cOMMENT - (any)
class LST_HCHGTPLStruct1
  attr_accessor :tPLNAME
  attr_accessor :pECF
  attr_accessor :sECF
  attr_accessor :pCCF
  attr_accessor :sCCF
  attr_accessor :cOMMENT

  def initialize(tPLNAME = nil, pECF = nil, sECF = nil, pCCF = nil, sCCF = nil, cOMMENT = nil)
    @tPLNAME = tPLNAME
    @pECF = pECF
    @sECF = sECF
    @pCCF = pCCF
    @sCCF = sCCF
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNTPLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HVNTPLTables
class LST_HVNTPLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNTPLTables
#   table1 - LST_HVNTPLTable1
class LST_HVNTPLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNTPLTable1
class LST_HVNTPLTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNTPLStruct1
#   tPLNAME - (any)
#   mATCHTYPE - (any)
#   cOMMENT - (any)
class LST_HVNTPLStruct1
  attr_accessor :tPLNAME
  attr_accessor :mATCHTYPE
  attr_accessor :cOMMENT

  def initialize(tPLNAME = nil, mATCHTYPE = nil, cOMMENT = nil)
    @tPLNAME = tPLNAME
    @mATCHTYPE = mATCHTYPE
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNTPLADDRType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HVNTPLADDRTables
class LST_HVNTPLADDRType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNTPLADDRTables
#   table1 - LST_HVNTPLADDRTable1
class LST_HVNTPLADDRTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNTPLADDRTable1
class LST_HVNTPLADDRTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNTPLADDRStruct1
#   vN - (any)
#   vNTYPE - (any)
class LST_HVNTPLADDRStruct1
  attr_accessor :vN
  attr_accessor :vNTYPE

  def initialize(vN = nil, vNTYPE = nil)
    @vN = vN
    @vNTYPE = vNTYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNATPLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HNATPLTables
class LST_HNATPLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNATPLTables
#   table1 - LST_HNATPLTable1
class LST_HNATPLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNATPLTable1
class LST_HNATPLTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNATPLStruct1
#   tPLNAME - (any)
#   mATCHTYPE - (any)
#   cOMMENT - (any)
class LST_HNATPLStruct1
  attr_accessor :tPLNAME
  attr_accessor :mATCHTYPE
  attr_accessor :cOMMENT

  def initialize(tPLNAME = nil, mATCHTYPE = nil, cOMMENT = nil)
    @tPLNAME = tPLNAME
    @mATCHTYPE = mATCHTYPE
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNATPLADDRType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HNATPLADDRTables
class LST_HNATPLADDRType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNATPLADDRTables
#   table1 - LST_HNATPLADDRTable1
class LST_HNATPLADDRTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNATPLADDRTable1
class LST_HNATPLADDRTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNATPLADDRStruct1
#   nA - (any)
#   nATYPE - (any)
class LST_HNATPLADDRStruct1
  attr_accessor :nA
  attr_accessor :nATYPE

  def initialize(nA = nil, nATYPE = nil)
    @nA = nA
    @nATYPE = nATYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HOCSITPLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HOCSITPLTables
class LST_HOCSITPLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HOCSITPLTables
#   table1 - LST_HOCSITPLTable1
class LST_HOCSITPLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HOCSITPLTable1
class LST_HOCSITPLTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HOCSITPLStruct1
#   tPLNAME - (any)
#   gSMSCFADDR - (any)
#   sK - (any)
#   dEFCALL - (any)
#   iMSSF - (any)
#   cOMMENT - (any)
class LST_HOCSITPLStruct1
  attr_accessor :tPLNAME
  attr_accessor :gSMSCFADDR
  attr_accessor :sK
  attr_accessor :dEFCALL
  attr_accessor :iMSSF
  attr_accessor :cOMMENT

  def initialize(tPLNAME = nil, gSMSCFADDR = nil, sK = nil, dEFCALL = nil, iMSSF = nil, cOMMENT = nil)
    @tPLNAME = tPLNAME
    @gSMSCFADDR = gSMSCFADDR
    @sK = sK
    @dEFCALL = dEFCALL
    @iMSSF = iMSSF
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HTCSITPLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HTCSITPLTables
class LST_HTCSITPLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HTCSITPLTables
#   table1 - LST_HTCSITPLTable1
class LST_HTCSITPLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HTCSITPLTable1
class LST_HTCSITPLTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HTCSITPLStruct1
#   tPLNAME - (any)
#   gSMSCFADDR - (any)
#   sK - (any)
#   dEFCALL - (any)
#   iMSSF - (any)
#   cOMMENT - (any)
class LST_HTCSITPLStruct1
  attr_accessor :tPLNAME
  attr_accessor :gSMSCFADDR
  attr_accessor :sK
  attr_accessor :dEFCALL
  attr_accessor :iMSSF
  attr_accessor :cOMMENT

  def initialize(tPLNAME = nil, gSMSCFADDR = nil, sK = nil, dEFCALL = nil, iMSSF = nil, cOMMENT = nil)
    @tPLNAME = tPLNAME
    @gSMSCFADDR = gSMSCFADDR
    @sK = sK
    @dEFCALL = dEFCALL
    @iMSSF = iMSSF
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCSIType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HCSITables
class LST_HCSIType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCSITables
#   table1 - LST_HCSITable1
class LST_HCSITables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCSITable1
class LST_HCSITable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCSIStruct1
#   iMSI - (any)
#   iSDN - (any)
#   cSITYPE - (any)
#   cSITPLID - (any)
class LST_HCSIStruct1
  attr_accessor :iMSI
  attr_accessor :iSDN
  attr_accessor :cSITYPE
  attr_accessor :cSITPLID

  def initialize(iMSI = nil, iSDN = nil, cSITYPE = nil, cSITPLID = nil)
    @iMSI = iMSI
    @iSDN = iSDN
    @cSITYPE = cSITYPE
    @cSITPLID = cSITPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSERPRVType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HSERPRVTables
class LST_HSERPRVType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSERPRVTables
#   table1 - LST_HSERPRVTable1
class LST_HSERPRVTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSERPRVTable1
class LST_HSERPRVTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSERPRVStruct1
#   sERPRVID - (any)
class LST_HSERPRVStruct1
  attr_accessor :sERPRVID

  def initialize(sERPRVID = nil)
    @sERPRVID = sERPRVID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HTAAType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HTAATables
class LST_HTAAType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HTAATables
#   table1 - LST_HTAATable1
class LST_HTAATables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HTAATable1
class LST_HTAATable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HTAAStruct1
#   tAAFLAG - (any)
class LST_HTAAStruct1
  attr_accessor :tAAFLAG

  def initialize(tAAFLAG = nil)
    @tAAFLAG = tAAFLAG
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HUSRPRIORType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HUSRPRIORTables
class LST_HUSRPRIORType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HUSRPRIORTables
#   table1 - LST_HUSRPRIORTable1
class LST_HUSRPRIORTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HUSRPRIORTable1
class LST_HUSRPRIORTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HUSRPRIORStruct1
#   uSRPRIOR - (any)
class LST_HUSRPRIORStruct1
  attr_accessor :uSRPRIOR

  def initialize(uSRPRIOR = nil)
    @uSRPRIOR = uSRPRIOR
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSDAINFType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HSDAINFTables
class LST_HSDAINFType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSDAINFTables
#   table1 - LST_HSDAINFTable1
class LST_HSDAINFTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSDAINFTable1
class LST_HSDAINFTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSDAINFStruct1
#   iMPI - (any)
#   hUSERNAME - (any)
#   pWD - (any)
#   rEALM - (any)
#   hA1 - (any)
class LST_HSDAINFStruct1
  attr_accessor :iMPI
  attr_accessor :hUSERNAME
  attr_accessor :pWD
  attr_accessor :rEALM
  attr_accessor :hA1

  def initialize(iMPI = nil, hUSERNAME = nil, pWD = nil, rEALM = nil, hA1 = nil)
    @iMPI = iMPI
    @hUSERNAME = hUSERNAME
    @pWD = pWD
    @rEALM = rEALM
    @hA1 = hA1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HLRIType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HLRITables
class LST_HLRIType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HLRITables
#   table1 - LST_HLRITable1
class LST_HLRITables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HLRITable1
class LST_HLRITable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HLRIStruct1
#   lRI - (any)
class LST_HLRIStruct1
  attr_accessor :lRI

  def initialize(lRI = nil)
    @lRI = lRI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSIFCType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HSIFCTables
class LST_HSIFCType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSIFCTables
#   table1 - LST_HSIFCTable1
class LST_HSIFCTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSIFCTable1
class LST_HSIFCTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSIFCStruct1
#   sIFCID - (any)
class LST_HSIFCStruct1
  attr_accessor :sIFCID

  def initialize(sIFCID = nil)
    @sIFCID = sIFCID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSIFCTPLType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HSIFCTPLTables
class LST_HSIFCTPLType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSIFCTPLTables
#   table1 - LST_HSIFCTPLTable1
class LST_HSIFCTPLTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSIFCTPLTable1
class LST_HSIFCTPLTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSIFCTPLStruct1
#   tPLNAME - (any)
#   cOMMENT - (any)
class LST_HSIFCTPLStruct1
  attr_accessor :tPLNAME
  attr_accessor :cOMMENT

  def initialize(tPLNAME = nil, cOMMENT = nil)
    @tPLNAME = tPLNAME
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSIFCINFType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HSIFCINFTables
class LST_HSIFCINFType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSIFCINFTables
#   table1 - LST_HSIFCINFTable1
class LST_HSIFCINFTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSIFCINFTable1
class LST_HSIFCINFTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSIFCINFStruct1
#   iFCNAME - (any)
#   pRIORITY - (any)
#   pARTIND - (any)
#   sERVER - (any)
#   dEFHND - (any)
#   sERVINFO - (any)
#   tRIGPT - (any)
class LST_HSIFCINFStruct1
  attr_accessor :iFCNAME
  attr_accessor :pRIORITY
  attr_accessor :pARTIND
  attr_accessor :sERVER
  attr_accessor :dEFHND
  attr_accessor :sERVINFO
  attr_accessor :tRIGPT

  def initialize(iFCNAME = nil, pRIORITY = nil, pARTIND = nil, sERVER = nil, dEFHND = nil, sERVINFO = nil, tRIGPT = nil)
    @iFCNAME = iFCNAME
    @pRIORITY = pRIORITY
    @pARTIND = pARTIND
    @sERVER = sERVER
    @dEFHND = dEFHND
    @sERVINFO = sERVINFO
    @tRIGPT = tRIGPT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HESRNType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HESRNTables
class LST_HESRNType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HESRNTables
#   table1 - LST_HESRNTable1
class LST_HESRNTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HESRNTable1
class LST_HESRNTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HESRNStruct1
#   eSRN - (any)
class LST_HESRNStruct1
  attr_accessor :eSRN

  def initialize(eSRN = nil)
    @eSRN = eSRN
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HONEKEYType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HONEKEYTables
class LST_HONEKEYType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HONEKEYTables
#   table1 - LST_HONEKEYTable1
class LST_HONEKEYTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HONEKEYTable1
class LST_HONEKEYTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HONEKEYStruct1
#   wUSERNAME - (any)
#   hTOKEN - (any)
#   aP - (any)
class LST_HONEKEYStruct1
  attr_accessor :wUSERNAME
  attr_accessor :hTOKEN
  attr_accessor :aP

  def initialize(wUSERNAME = nil, hTOKEN = nil, aP = nil)
    @wUSERNAME = wUSERNAME
    @hTOKEN = hTOKEN
    @aP = aP
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCAAType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HCAATables
class LST_HCAAType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCAATables
#   table1 - LST_HCAATable1
class LST_HCAATables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCAATable1
class LST_HCAATable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCAAStruct1
#   iMPI - (any)
#   cAVEAKAFLG - (any)
#   uIMID - (any)
class LST_HCAAStruct1
  attr_accessor :iMPI
  attr_accessor :cAVEAKAFLG
  attr_accessor :uIMID

  def initialize(iMPI = nil, cAVEAKAFLG = nil, uIMID = nil)
    @iMPI = iMPI
    @cAVEAKAFLG = cAVEAKAFLG
    @uIMID = uIMID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPBXUType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HPBXUTables
class LST_HPBXUType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPBXUTables
#   table1 - LST_HPBXUTable1
class LST_HPBXUTables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPBXUTable1
class LST_HPBXUTable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPBXUStruct1
#   sUBID - (any)
#   pBXUSERFLAG - (any)
class LST_HPBXUStruct1
  attr_accessor :sUBID
  attr_accessor :pBXUSERFLAG

  def initialize(sUBID = nil, pBXUSERFLAG = nil)
    @sUBID = sUBID
    @pBXUSERFLAG = pBXUSERFLAG
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPREPDATAType
#   resultCode - SOAP::SOAPString
#   resultDesc - SOAP::SOAPString
#   resultData - LST_HPREPDATATables
class LST_HPREPDATAType
  attr_accessor :resultCode
  attr_accessor :resultDesc
  attr_accessor :resultData

  def initialize(resultCode = nil, resultDesc = nil, resultData = nil)
    @resultCode = resultCode
    @resultDesc = resultDesc
    @resultData = resultData
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPREPDATATables
#   table1 - LST_HPREPDATATable1
class LST_HPREPDATATables
  attr_accessor :table1

  def initialize(table1 = nil)
    @table1 = table1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPREPDATATable1
class LST_HPREPDATATable1 < ::Array
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPREPDATAStruct1
#   iMPU - (any)
#   iMSI - (any)
#   sELFSERVICE - (any)
#   sMSCADDRESS - (any)
#   lOCATIONINFORMATION - (any)
#   nPINDICATOR - (any)
#   cICINDICATOR - (any)
#   bINDINDICATOR - (any)
class LST_HPREPDATAStruct1
  attr_accessor :iMPU
  attr_accessor :iMSI
  attr_accessor :sELFSERVICE
  attr_accessor :sMSCADDRESS
  attr_accessor :lOCATIONINFORMATION
  attr_accessor :nPINDICATOR
  attr_accessor :cICINDICATOR
  attr_accessor :bINDINDICATOR

  def initialize(iMPU = nil, iMSI = nil, sELFSERVICE = nil, sMSCADDRESS = nil, lOCATIONINFORMATION = nil, nPINDICATOR = nil, cICINDICATOR = nil, bINDINDICATOR = nil)
    @iMPU = iMPU
    @iMSI = iMSI
    @sELFSERVICE = sELFSERVICE
    @sMSCADDRESS = sMSCADDRESS
    @lOCATIONINFORMATION = lOCATIONINFORMATION
    @nPINDICATOR = nPINDICATOR
    @cICINDICATOR = cICINDICATOR
    @bINDINDICATOR = bINDINDICATOR
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#   faultReason - SOAP::SOAPString
class OperationFault < ::StandardError
  attr_accessor :faultReason

  def initialize(faultReason = nil)
    @faultReason = faultReason
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ResultType
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

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_OP
#   oPSNO - (any)
#   oPVALUE - (any)
class ADD_OP
  attr_accessor :oPSNO
  attr_accessor :oPVALUE

  def initialize(oPSNO = nil, oPVALUE = nil)
    @oPSNO = oPSNO
    @oPVALUE = oPVALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_OPResponse
#   result - ResultType
class ADD_OPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_OP
#   oPSNO - (any)
class RMV_OP
  attr_accessor :oPSNO

  def initialize(oPSNO = nil)
    @oPSNO = oPSNO
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_OPResponse
#   result - ResultType
class RMV_OPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_OP
#   oPSNO - (any)
#   oPVALUE - (any)
class MOD_OP
  attr_accessor :oPSNO
  attr_accessor :oPVALUE

  def initialize(oPSNO = nil, oPVALUE = nil)
    @oPSNO = oPSNO
    @oPVALUE = oPVALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_OPResponse
#   result - ResultType
class MOD_OPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_OP
#   oPSNO - (any)
class LST_OP
  attr_accessor :oPSNO

  def initialize(oPSNO = nil)
    @oPSNO = oPSNO
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_OPResponse
#   result - LST_OPType
class LST_OPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_OP
#   oPSNO - (any)
#   oPVALUE - (any)
class CHK_OP
  attr_accessor :oPSNO
  attr_accessor :oPVALUE

  def initialize(oPSNO = nil, oPVALUE = nil)
    @oPSNO = oPSNO
    @oPVALUE = oPVALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_OPResponse
#   result - ResultType
class CHK_OPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_AMF
#   aMFSNO - (any)
#   aMFVALUE - (any)
class ADD_AMF
  attr_accessor :aMFSNO
  attr_accessor :aMFVALUE

  def initialize(aMFSNO = nil, aMFVALUE = nil)
    @aMFSNO = aMFSNO
    @aMFVALUE = aMFVALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_AMFResponse
#   result - ResultType
class ADD_AMFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_AMF
#   aMFSNO - (any)
class RMV_AMF
  attr_accessor :aMFSNO

  def initialize(aMFSNO = nil)
    @aMFSNO = aMFSNO
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_AMFResponse
#   result - ResultType
class RMV_AMFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_AMF
#   aMFSNO - (any)
#   aMFVALUE - (any)
class MOD_AMF
  attr_accessor :aMFSNO
  attr_accessor :aMFVALUE

  def initialize(aMFSNO = nil, aMFVALUE = nil)
    @aMFSNO = aMFSNO
    @aMFVALUE = aMFVALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_AMFResponse
#   result - ResultType
class MOD_AMFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AMF
#   aMFSNO - (any)
class LST_AMF
  attr_accessor :aMFSNO

  def initialize(aMFSNO = nil)
    @aMFSNO = aMFSNO
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AMFResponse
#   result - LST_AMFType
class LST_AMFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_AMF
#   aMFSNO - (any)
#   aMFVALUE - (any)
class CHK_AMF
  attr_accessor :aMFSNO
  attr_accessor :aMFVALUE

  def initialize(aMFSNO = nil, aMFVALUE = nil)
    @aMFSNO = aMFSNO
    @aMFVALUE = aMFVALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_AMFResponse
#   result - ResultType
class CHK_AMFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_K4
#   k4SNO - (any)
#   k4VALUE - (any)
class ADD_K4
  attr_accessor :k4SNO
  attr_accessor :k4VALUE

  def initialize(k4SNO = nil, k4VALUE = nil)
    @k4SNO = k4SNO
    @k4VALUE = k4VALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_K4Response
#   result - ResultType
class ADD_K4Response
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_K4
#   k4SNO - (any)
class RMV_K4
  attr_accessor :k4SNO

  def initialize(k4SNO = nil)
    @k4SNO = k4SNO
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_K4Response
#   result - ResultType
class RMV_K4Response
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_K4
#   k4SNO - (any)
#   k4VALUE - (any)
class MOD_K4
  attr_accessor :k4SNO
  attr_accessor :k4VALUE

  def initialize(k4SNO = nil, k4VALUE = nil)
    @k4SNO = k4SNO
    @k4VALUE = k4VALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_K4Response
#   result - ResultType
class MOD_K4Response
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_K4
#   k4SNO - (any)
class LST_K4
  attr_accessor :k4SNO

  def initialize(k4SNO = nil)
    @k4SNO = k4SNO
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_K4Response
#   result - LST_K4Type
class LST_K4Response
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_K4
#   k4SNO - (any)
#   k4VALUE - (any)
class CHK_K4
  attr_accessor :k4SNO
  attr_accessor :k4VALUE

  def initialize(k4SNO = nil, k4VALUE = nil)
    @k4SNO = k4SNO
    @k4VALUE = k4VALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_K4Response
#   result - ResultType
class CHK_K4Response
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_KI
#   iMPI - (any)
#   k - (any)
#   k4SNO - (any)
#   oPSNO - (any)
#   aMFSNO - (any)
#   oPC - (any)
#   oPCK4SNO - (any)
class ADD_KI
  attr_accessor :iMPI
  attr_accessor :k
  attr_accessor :k4SNO
  attr_accessor :oPSNO
  attr_accessor :aMFSNO
  attr_accessor :oPC
  attr_accessor :oPCK4SNO

  def initialize(iMPI = nil, k = nil, k4SNO = nil, oPSNO = nil, aMFSNO = nil, oPC = nil, oPCK4SNO = nil)
    @iMPI = iMPI
    @k = k
    @k4SNO = k4SNO
    @oPSNO = oPSNO
    @aMFSNO = aMFSNO
    @oPC = oPC
    @oPCK4SNO = oPCK4SNO
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_KIResponse
#   result - ResultType
class ADD_KIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_KI
#   iMPI - (any)
class RMV_KI
  attr_accessor :iMPI

  def initialize(iMPI = nil)
    @iMPI = iMPI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_KIResponse
#   result - ResultType
class RMV_KIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_KI
#   iMPI - (any)
#   k - (any)
#   k4SNO - (any)
#   oPSNO - (any)
#   aMFSNO - (any)
#   oPC - (any)
#   oPCK4SNO - (any)
class MOD_KI
  attr_accessor :iMPI
  attr_accessor :k
  attr_accessor :k4SNO
  attr_accessor :oPSNO
  attr_accessor :aMFSNO
  attr_accessor :oPC
  attr_accessor :oPCK4SNO

  def initialize(iMPI = nil, k = nil, k4SNO = nil, oPSNO = nil, aMFSNO = nil, oPC = nil, oPCK4SNO = nil)
    @iMPI = iMPI
    @k = k
    @k4SNO = k4SNO
    @oPSNO = oPSNO
    @aMFSNO = aMFSNO
    @oPC = oPC
    @oPCK4SNO = oPCK4SNO
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_KIResponse
#   result - ResultType
class MOD_KIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_KI
#   iMPI - (any)
class LST_KI
  attr_accessor :iMPI

  def initialize(iMPI = nil)
    @iMPI = iMPI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_KIResponse
#   result - LST_KIType
class LST_KIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_KI
#   iMPI - (any)
#   k - (any)
#   k4VALUE - (any)
class CHK_KI
  attr_accessor :iMPI
  attr_accessor :k
  attr_accessor :k4VALUE

  def initialize(iMPI = nil, k = nil, k4VALUE = nil)
    @iMPI = iMPI
    @k = k
    @k4VALUE = k4VALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_KIResponse
#   result - ResultType
class CHK_KIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_OPC
#   iMPI - (any)
#   oPC - (any)
#   oPCK4VALUE - (any)
class CHK_OPC
  attr_accessor :iMPI
  attr_accessor :oPC
  attr_accessor :oPCK4VALUE

  def initialize(iMPI = nil, oPC = nil, oPCK4VALUE = nil)
    @iMPI = iMPI
    @oPC = oPC
    @oPCK4VALUE = oPCK4VALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_OPCResponse
#   result - ResultType
class CHK_OPCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SUB
#   sUBID - (any)
#   iMPI - (any)
#   iMPU - (any)
#   iMPUTYPE - (any)
#   pBXUSERFLAG - (any)
class ADD_SUB
  attr_accessor :sUBID
  attr_accessor :iMPI
  attr_accessor :iMPU
  attr_accessor :iMPUTYPE
  attr_accessor :pBXUSERFLAG

  def initialize(sUBID = nil, iMPI = nil, iMPU = nil, iMPUTYPE = nil, pBXUSERFLAG = nil)
    @sUBID = sUBID
    @iMPI = iMPI
    @iMPU = iMPU
    @iMPUTYPE = iMPUTYPE
    @pBXUSERFLAG = pBXUSERFLAG
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SUBResponse
#   result - ResultType
class ADD_SUBResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SUB
#   sUBID - (any)
class RMV_SUB
  attr_accessor :sUBID

  def initialize(sUBID = nil)
    @sUBID = sUBID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SUBResponse
#   result - ResultType
class RMV_SUBResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SUBID
#   sUBID - (any)
#   nEWSUBID - (any)
class MOD_SUBID
  attr_accessor :sUBID
  attr_accessor :nEWSUBID

  def initialize(sUBID = nil, nEWSUBID = nil)
    @sUBID = sUBID
    @nEWSUBID = nEWSUBID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SUBIDResponse
#   result - ResultType
class MOD_SUBIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SUB
#   sUBID - (any)
#   iMPI - (any)
#   iMPU - (any)
class LST_SUB
  attr_accessor :sUBID
  attr_accessor :iMPI
  attr_accessor :iMPU

  def initialize(sUBID = nil, iMPI = nil, iMPU = nil)
    @sUBID = sUBID
    @iMPI = iMPI
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SUBResponse
#   result - LST_SUBType
class LST_SUBResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_IMPI
#   sUBID - (any)
#   iMPI - (any)
#   iMPU - (any)
#   iMPUTYPE - (any)
class ADD_IMPI
  attr_accessor :sUBID
  attr_accessor :iMPI
  attr_accessor :iMPU
  attr_accessor :iMPUTYPE

  def initialize(sUBID = nil, iMPI = nil, iMPU = nil, iMPUTYPE = nil)
    @sUBID = sUBID
    @iMPI = iMPI
    @iMPU = iMPU
    @iMPUTYPE = iMPUTYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_IMPIResponse
#   result - ResultType
class ADD_IMPIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_IMPI
#   iMPI - (any)
class RMV_IMPI
  attr_accessor :iMPI

  def initialize(iMPI = nil)
    @iMPI = iMPI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_IMPIResponse
#   result - ResultType
class RMV_IMPIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_IMPI
#   iMPI - (any)
#   nEWIMPI - (any)
class MOD_IMPI
  attr_accessor :iMPI
  attr_accessor :nEWIMPI

  def initialize(iMPI = nil, nEWIMPI = nil)
    @iMPI = iMPI
    @nEWIMPI = nEWIMPI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_IMPIResponse
#   result - ResultType
class MOD_IMPIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_IMPU
#   iMPI - (any)
#   iMPU - (any)
#   iMPUTYPE - (any)
class ADD_IMPU
  attr_accessor :iMPI
  attr_accessor :iMPU
  attr_accessor :iMPUTYPE

  def initialize(iMPI = nil, iMPU = nil, iMPUTYPE = nil)
    @iMPI = iMPI
    @iMPU = iMPU
    @iMPUTYPE = iMPUTYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_IMPUResponse
#   result - ResultType
class ADD_IMPUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_IMPU
#   iMPU - (any)
class RMV_IMPU
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_IMPUResponse
#   result - ResultType
class RMV_IMPUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_IMPU
#   iMPU - (any)
#   nEWIMPU - (any)
#   nEWIMPUTYPE - (any)
class MOD_IMPU
  attr_accessor :iMPU
  attr_accessor :nEWIMPU
  attr_accessor :nEWIMPUTYPE

  def initialize(iMPU = nil, nEWIMPU = nil, nEWIMPUTYPE = nil)
    @iMPU = iMPU
    @nEWIMPU = nEWIMPU
    @nEWIMPUTYPE = nEWIMPUTYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_IMPUResponse
#   result - ResultType
class MOD_IMPUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_IMPUSHARE
#   iMPU - (any)
#   sHARED - (any)
class SET_IMPUSHARE
  attr_accessor :iMPU
  attr_accessor :sHARED

  def initialize(iMPU = nil, sHARED = nil)
    @iMPU = iMPU
    @sHARED = sHARED
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_IMPUSHAREResponse
#   result - ResultType
class SET_IMPUSHAREResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_IRS
#   iRSID - (any)
#   iMPULIST - (any)
#   pUSILIST - (any)
class SET_IRS
  attr_accessor :iRSID
  attr_accessor :iMPULIST
  attr_accessor :pUSILIST

  def initialize(iRSID = nil, iMPULIST = nil, pUSILIST = nil)
    @iRSID = iRSID
    @iMPULIST = iMPULIST
    @pUSILIST = pUSILIST
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_IRSResponse
#   result - ResultType
class SET_IRSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_DEFIMPU
#   iRSID - (any)
#   iMPU - (any)
class SET_DEFIMPU
  attr_accessor :iRSID
  attr_accessor :iMPU

  def initialize(iRSID = nil, iMPU = nil)
    @iRSID = iRSID
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_DEFIMPUResponse
#   result - ResultType
class SET_DEFIMPUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_CHARGID
#   iMPI - (any)
#   pISI - (any)
#   cHARGTPLID - (any)
class SET_CHARGID
  attr_accessor :iMPI
  attr_accessor :pISI
  attr_accessor :cHARGTPLID

  def initialize(iMPI = nil, pISI = nil, cHARGTPLID = nil)
    @iMPI = iMPI
    @pISI = pISI
    @cHARGTPLID = cHARGTPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_CHARGIDResponse
#   result - ResultType
class SET_CHARGIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CHARGID
#   iMPI - (any)
#   pISI - (any)
class LST_CHARGID
  attr_accessor :iMPI
  attr_accessor :pISI

  def initialize(iMPI = nil, pISI = nil)
    @iMPI = iMPI
    @pISI = pISI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CHARGIDResponse
#   result - LST_CHARGIDType
class LST_CHARGIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_BAR
#   iMPU - (any)
#   pUSI - (any)
#   bAR - (any)
class SET_BAR
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :bAR

  def initialize(iMPU = nil, pUSI = nil, bAR = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @bAR = bAR
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_BARResponse
#   result - ResultType
class SET_BARResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_BAR
#   iMPU - (any)
#   pUSI - (any)
class LST_BAR
  attr_accessor :iMPU
  attr_accessor :pUSI

  def initialize(iMPU = nil, pUSI = nil)
    @iMPU = iMPU
    @pUSI = pUSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_BARResponse
#   result - LST_BARType
class LST_BARResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_REGAUTH
#   iMPU - (any)
#   rEGAUTH - (any)
class SET_REGAUTH
  attr_accessor :iMPU
  attr_accessor :rEGAUTH

  def initialize(iMPU = nil, rEGAUTH = nil)
    @iMPU = iMPU
    @rEGAUTH = rEGAUTH
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_REGAUTHResponse
#   result - ResultType
class SET_REGAUTHResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_REGAUTH
#   iMPU - (any)
class LST_REGAUTH
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_REGAUTHResponse
#   result - LST_REGAUTHType
class LST_REGAUTHResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_VNTPLID
#   iMPU - (any)
#   vNTPLID - (any)
class SET_VNTPLID
  attr_accessor :iMPU
  attr_accessor :vNTPLID

  def initialize(iMPU = nil, vNTPLID = nil)
    @iMPU = iMPU
    @vNTPLID = vNTPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_VNTPLIDResponse
#   result - ResultType
class SET_VNTPLIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNTPLID
#   iMPU - (any)
class LST_VNTPLID
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNTPLIDResponse
#   result - LST_VNTPLIDType
class LST_VNTPLIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_MEDIAID
#   iMPU - (any)
#   pUSI - (any)
#   mEDIAID - (any)
class SET_MEDIAID
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :mEDIAID

  def initialize(iMPU = nil, pUSI = nil, mEDIAID = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @mEDIAID = mEDIAID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_MEDIAIDResponse
#   result - ResultType
class SET_MEDIAIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_MEDIAID
#   iMPU - (any)
#   pUSI - (any)
class LST_MEDIAID
  attr_accessor :iMPU
  attr_accessor :pUSI

  def initialize(iMPU = nil, pUSI = nil)
    @iMPU = iMPU
    @pUSI = pUSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_MEDIAIDResponse
#   result - LST_MEDIAIDType
class LST_MEDIAIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_MOCAP
#   sUBID - (any)
#   pISI - (any)
#   mCAP - (any)
#   oCAP - (any)
class SET_MOCAP
  attr_accessor :sUBID
  attr_accessor :pISI
  attr_accessor :mCAP
  attr_accessor :oCAP

  def initialize(sUBID = nil, pISI = nil, mCAP = nil, oCAP = nil)
    @sUBID = sUBID
    @pISI = pISI
    @mCAP = mCAP
    @oCAP = oCAP
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_MOCAPResponse
#   result - ResultType
class SET_MOCAPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_MOCAP
#   sUBID - (any)
#   pISI - (any)
class LST_MOCAP
  attr_accessor :sUBID
  attr_accessor :pISI

  def initialize(sUBID = nil, pISI = nil)
    @sUBID = sUBID
    @pISI = pISI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_MOCAPResponse
#   result - LST_MOCAPType
class LST_MOCAPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_EIA
#   iMPI - (any)
#   eIAFLAG - (any)
class SET_EIA
  attr_accessor :iMPI
  attr_accessor :eIAFLAG

  def initialize(iMPI = nil, eIAFLAG = nil)
    @iMPI = iMPI
    @eIAFLAG = eIAFLAG
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_EIAResponse
#   result - ResultType
class SET_EIAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_EIA
#   iMPI - (any)
class LST_EIA
  attr_accessor :iMPI

  def initialize(iMPI = nil)
    @iMPI = iMPI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_EIAResponse
#   result - LST_EIAType
class LST_EIAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_EAA
#   iMPI - (any)
#   eAAFLAG - (any)
class SET_EAA
  attr_accessor :iMPI
  attr_accessor :eAAFLAG

  def initialize(iMPI = nil, eAAFLAG = nil)
    @iMPI = iMPI
    @eAAFLAG = eAAFLAG
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_EAAResponse
#   result - ResultType
class SET_EAAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_EAA
#   iMPI - (any)
class LST_EAA
  attr_accessor :iMPI

  def initialize(iMPI = nil)
    @iMPI = iMPI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_EAAResponse
#   result - LST_EAAType
class LST_EAAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_AS
#   pUSI - (any)
#   aS - (any)
class SET_AS
  attr_accessor :pUSI
  attr_accessor :aS

  def initialize(pUSI = nil, aS = nil)
    @pUSI = pUSI
    @aS = aS
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_ASResponse
#   result - ResultType
class SET_ASResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AS
#   pUSI - (any)
class LST_AS
  attr_accessor :pUSI

  def initialize(pUSI = nil)
    @pUSI = pUSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASResponse
#   result - LST_ASType
class LST_ASResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_VNCFLAG
#   iMPU - (any)
#   vNCFLAG - (any)
class SET_VNCFLAG
  attr_accessor :iMPU
  attr_accessor :vNCFLAG

  def initialize(iMPU = nil, vNCFLAG = nil)
    @iMPU = iMPU
    @vNCFLAG = vNCFLAG
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_VNCFLAGResponse
#   result - ResultType
class SET_VNCFLAGResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNCFLAG
#   iMPU - (any)
class LST_VNCFLAG
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNCFLAGResponse
#   result - LST_VNCFLAGType
class LST_VNCFLAGResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_IFC
#   iMPU - (any)
#   pUSI - (any)
#   pRIORITY - (any)
#   pARTIND - (any)
#   sERVER - (any)
#   dEFHND - (any)
#   sERVINFO - (any)
#   tRIGPT - (any)
class ADD_IFC
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :pRIORITY
  attr_accessor :pARTIND
  attr_accessor :sERVER
  attr_accessor :dEFHND
  attr_accessor :sERVINFO
  attr_accessor :tRIGPT

  def initialize(iMPU = nil, pUSI = nil, pRIORITY = nil, pARTIND = nil, sERVER = nil, dEFHND = nil, sERVINFO = nil, tRIGPT = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @pRIORITY = pRIORITY
    @pARTIND = pARTIND
    @sERVER = sERVER
    @dEFHND = dEFHND
    @sERVINFO = sERVINFO
    @tRIGPT = tRIGPT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_IFCResponse
#   result - ResultType
class ADD_IFCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_IFC
#   iMPU - (any)
#   pUSI - (any)
#   pRIORITY - (any)
class RMV_IFC
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :pRIORITY

  def initialize(iMPU = nil, pUSI = nil, pRIORITY = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @pRIORITY = pRIORITY
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_IFCResponse
#   result - ResultType
class RMV_IFCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_IFC
#   iMPU - (any)
#   pUSI - (any)
#   pRIORITY - (any)
#   nEWPRI - (any)
#   pARTIND - (any)
#   sERVER - (any)
#   dEFHND - (any)
#   sERVINFO - (any)
#   tRIGPT - (any)
class MOD_IFC
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :pRIORITY
  attr_accessor :nEWPRI
  attr_accessor :pARTIND
  attr_accessor :sERVER
  attr_accessor :dEFHND
  attr_accessor :sERVINFO
  attr_accessor :tRIGPT

  def initialize(iMPU = nil, pUSI = nil, pRIORITY = nil, nEWPRI = nil, pARTIND = nil, sERVER = nil, dEFHND = nil, sERVINFO = nil, tRIGPT = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @pRIORITY = pRIORITY
    @nEWPRI = nEWPRI
    @pARTIND = pARTIND
    @sERVER = sERVER
    @dEFHND = dEFHND
    @sERVINFO = sERVINFO
    @tRIGPT = tRIGPT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_IFCResponse
#   result - ResultType
class MOD_IFCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_IFC
#   iMPU - (any)
#   pUSI - (any)
#   pRIORITY - (any)
class LST_IFC
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :pRIORITY

  def initialize(iMPU = nil, pUSI = nil, pRIORITY = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @pRIORITY = pRIORITY
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_IFCResponse
#   result - LST_IFCType
class LST_IFCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_CAPSCSCF
#   sUBID - (any)
#   pISI - (any)
#   sCSCF - (any)
class ADD_CAPSCSCF
  attr_accessor :sUBID
  attr_accessor :pISI
  attr_accessor :sCSCF

  def initialize(sUBID = nil, pISI = nil, sCSCF = nil)
    @sUBID = sUBID
    @pISI = pISI
    @sCSCF = sCSCF
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_CAPSCSCFResponse
#   result - ResultType
class ADD_CAPSCSCFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_CAPSCSCF
#   sUBID - (any)
#   pISI - (any)
#   sCSCF - (any)
class RMV_CAPSCSCF
  attr_accessor :sUBID
  attr_accessor :pISI
  attr_accessor :sCSCF

  def initialize(sUBID = nil, pISI = nil, sCSCF = nil)
    @sUBID = sUBID
    @pISI = pISI
    @sCSCF = sCSCF
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_CAPSCSCFResponse
#   result - ResultType
class RMV_CAPSCSCFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CAPSCSCF
#   sUBID - (any)
#   pISI - (any)
class LST_CAPSCSCF
  attr_accessor :sUBID
  attr_accessor :pISI

  def initialize(sUBID = nil, pISI = nil)
    @sUBID = sUBID
    @pISI = pISI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CAPSCSCFResponse
#   result - LST_CAPSCSCFType
class LST_CAPSCSCFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_SPSHARE
#   bASEIMPU - (any)
#   iMPU - (any)
class SET_SPSHARE
  attr_accessor :bASEIMPU
  attr_accessor :iMPU

  def initialize(bASEIMPU = nil, iMPU = nil)
    @bASEIMPU = bASEIMPU
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_SPSHAREResponse
#   result - ResultType
class SET_SPSHAREResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SPSHARE
#   iMPULIST - (any)
class RMV_SPSHARE
  attr_accessor :iMPULIST

  def initialize(iMPULIST = nil)
    @iMPULIST = iMPULIST
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SPSHAREResponse
#   result - ResultType
class RMV_SPSHAREResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SPSHARE
#   iMPU - (any)
class LST_SPSHARE
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SPSHAREResponse
#   result - LST_SPSHAREType
class LST_SPSHAREResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}DRG_USER
#   iMPI - (any)
#   iMPU - (any)
class DRG_USER
  attr_accessor :iMPI
  attr_accessor :iMPU

  def initialize(iMPI = nil, iMPU = nil)
    @iMPI = iMPI
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}DRG_USERResponse
#   result - ResultType
class DRG_USERResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_DYNDATA
#   iMPI - (any)
#   iMPU - (any)
class LST_DYNDATA
  attr_accessor :iMPI
  attr_accessor :iMPU

  def initialize(iMPI = nil, iMPU = nil)
    @iMPI = iMPI
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_DYNDATAResponse
#   result - LST_DYNDATAType
class LST_DYNDATAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASSUBDATA
#   iMPU - (any)
#   pUSI - (any)
class LST_ASSUBDATA
  attr_accessor :iMPU
  attr_accessor :pUSI

  def initialize(iMPU = nil, pUSI = nil)
    @iMPU = iMPU
    @pUSI = pUSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASSUBDATAResponse
#   result - LST_ASSUBDATAType
class LST_ASSUBDATAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_PSI
#   pISI - (any)
#   pUSI - (any)
#   pUSITYPE - (any)
class ADD_PSI
  attr_accessor :pISI
  attr_accessor :pUSI
  attr_accessor :pUSITYPE

  def initialize(pISI = nil, pUSI = nil, pUSITYPE = nil)
    @pISI = pISI
    @pUSI = pUSI
    @pUSITYPE = pUSITYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_PSIResponse
#   result - ResultType
class ADD_PSIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_PSI
#   pISI - (any)
#   pUSI - (any)
class RMV_PSI
  attr_accessor :pISI
  attr_accessor :pUSI

  def initialize(pISI = nil, pUSI = nil)
    @pISI = pISI
    @pUSI = pUSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_PSIResponse
#   result - ResultType
class RMV_PSIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_PSI
#   pISI - (any)
#   pUSI - (any)
class LST_PSI
  attr_accessor :pISI
  attr_accessor :pUSI

  def initialize(pISI = nil, pUSI = nil)
    @pISI = pISI
    @pUSI = pUSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_PSIResponse
#   result - LST_PSIType
class LST_PSIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HDAINF
#   iMPI - (any)
#   hUSERNAME - (any)
#   pWD - (any)
class ADD_HDAINF
  attr_accessor :iMPI
  attr_accessor :hUSERNAME
  attr_accessor :pWD

  def initialize(iMPI = nil, hUSERNAME = nil, pWD = nil)
    @iMPI = iMPI
    @hUSERNAME = hUSERNAME
    @pWD = pWD
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HDAINFResponse
#   result - ResultType
class ADD_HDAINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HDAINF
#   iMPI - (any)
class RMV_HDAINF
  attr_accessor :iMPI

  def initialize(iMPI = nil)
    @iMPI = iMPI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HDAINFResponse
#   result - ResultType
class RMV_HDAINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HDAINF
#   iMPI - (any)
#   hUSERNAME - (any)
#   pWD - (any)
class MOD_HDAINF
  attr_accessor :iMPI
  attr_accessor :hUSERNAME
  attr_accessor :pWD

  def initialize(iMPI = nil, hUSERNAME = nil, pWD = nil)
    @iMPI = iMPI
    @hUSERNAME = hUSERNAME
    @pWD = pWD
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HDAINFResponse
#   result - ResultType
class MOD_HDAINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HDAINF
#   iMPI - (any)
#   hUSERNAME - (any)
class LST_HDAINF
  attr_accessor :iMPI
  attr_accessor :hUSERNAME

  def initialize(iMPI = nil, hUSERNAME = nil)
    @iMPI = iMPI
    @hUSERNAME = hUSERNAME
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HDAINFResponse
#   result - LST_HDAINFType
class LST_HDAINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HDAPWD
#   hUSERNAME - (any)
#   pWD - (any)
class CHK_HDAPWD
  attr_accessor :hUSERNAME
  attr_accessor :pWD

  def initialize(hUSERNAME = nil, pWD = nil)
    @hUSERNAME = hUSERNAME
    @pWD = pWD
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HDAPWDResponse
#   result - ResultType
class CHK_HDAPWDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_IMPUTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   vNTPLID - (any)
#   nATPLID - (any)
#   bAR - (any)
#   rEGAUTH - (any)
#   vNCFLAG - (any)
#   nNCFLAG - (any)
#   sERPRVID - (any)
#   lRI - (any)
#   cOMMENT - (any)
class ADD_IMPUTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :vNTPLID
  attr_accessor :nATPLID
  attr_accessor :bAR
  attr_accessor :rEGAUTH
  attr_accessor :vNCFLAG
  attr_accessor :nNCFLAG
  attr_accessor :sERPRVID
  attr_accessor :lRI
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, vNTPLID = nil, nATPLID = nil, bAR = nil, rEGAUTH = nil, vNCFLAG = nil, nNCFLAG = nil, sERPRVID = nil, lRI = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @vNTPLID = vNTPLID
    @nATPLID = nATPLID
    @bAR = bAR
    @rEGAUTH = rEGAUTH
    @vNCFLAG = vNCFLAG
    @nNCFLAG = nNCFLAG
    @sERPRVID = sERPRVID
    @lRI = lRI
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_IMPUTPLResponse
#   result - ResultType
class ADD_IMPUTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_IMPUTPL
#   tPLID - (any)
class RMV_IMPUTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_IMPUTPLResponse
#   result - ResultType
class RMV_IMPUTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_IMPUTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   vNTPLID - (any)
#   nATPLID - (any)
#   bAR - (any)
#   rEGAUTH - (any)
#   vNCFLAG - (any)
#   nNCFLAG - (any)
#   sERPRVID - (any)
#   lRI - (any)
#   cOMMENT - (any)
class MOD_IMPUTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :vNTPLID
  attr_accessor :nATPLID
  attr_accessor :bAR
  attr_accessor :rEGAUTH
  attr_accessor :vNCFLAG
  attr_accessor :nNCFLAG
  attr_accessor :sERPRVID
  attr_accessor :lRI
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, vNTPLID = nil, nATPLID = nil, bAR = nil, rEGAUTH = nil, vNCFLAG = nil, nNCFLAG = nil, sERPRVID = nil, lRI = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @vNTPLID = vNTPLID
    @nATPLID = nATPLID
    @bAR = bAR
    @rEGAUTH = rEGAUTH
    @vNCFLAG = vNCFLAG
    @nNCFLAG = nNCFLAG
    @sERPRVID = sERPRVID
    @lRI = lRI
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_IMPUTPLResponse
#   result - ResultType
class MOD_IMPUTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_IMPUTPL
#   tPLID - (any)
class LST_IMPUTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_IMPUTPLResponse
#   result - LST_IMPUTPLType
class LST_IMPUTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_PUSITPL
#   tPLID - (any)
#   tPLNAME - (any)
#   aS - (any)
#   bAR - (any)
#   aCTSTATE - (any)
#   sERPRVID - (any)
#   lRI - (any)
#   cOMMENT - (any)
class ADD_PUSITPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :aS
  attr_accessor :bAR
  attr_accessor :aCTSTATE
  attr_accessor :sERPRVID
  attr_accessor :lRI
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, aS = nil, bAR = nil, aCTSTATE = nil, sERPRVID = nil, lRI = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @aS = aS
    @bAR = bAR
    @aCTSTATE = aCTSTATE
    @sERPRVID = sERPRVID
    @lRI = lRI
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_PUSITPLResponse
#   result - ResultType
class ADD_PUSITPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_PUSITPL
#   tPLID - (any)
class RMV_PUSITPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_PUSITPLResponse
#   result - ResultType
class RMV_PUSITPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_PUSITPL
#   tPLID - (any)
#   tPLNAME - (any)
#   aS - (any)
#   bAR - (any)
#   aCTSTATE - (any)
#   sERPRVID - (any)
#   lRI - (any)
#   cOMMENT - (any)
class MOD_PUSITPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :aS
  attr_accessor :bAR
  attr_accessor :aCTSTATE
  attr_accessor :sERPRVID
  attr_accessor :lRI
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, aS = nil, bAR = nil, aCTSTATE = nil, sERPRVID = nil, lRI = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @aS = aS
    @bAR = bAR
    @aCTSTATE = aCTSTATE
    @sERPRVID = sERPRVID
    @lRI = lRI
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_PUSITPLResponse
#   result - ResultType
class MOD_PUSITPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_PUSITPL
#   tPLID - (any)
class LST_PUSITPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_PUSITPLResponse
#   result - LST_PUSITPLType
class LST_PUSITPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_IFCTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   pRIORITY - (any)
#   pARTIND - (any)
#   sERVER - (any)
#   dEFHND - (any)
#   sERVINFO - (any)
#   tRIGPT - (any)
#   cOMMENT - (any)
class ADD_IFCTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :pRIORITY
  attr_accessor :pARTIND
  attr_accessor :sERVER
  attr_accessor :dEFHND
  attr_accessor :sERVINFO
  attr_accessor :tRIGPT
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, pRIORITY = nil, pARTIND = nil, sERVER = nil, dEFHND = nil, sERVINFO = nil, tRIGPT = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @pRIORITY = pRIORITY
    @pARTIND = pARTIND
    @sERVER = sERVER
    @dEFHND = dEFHND
    @sERVINFO = sERVINFO
    @tRIGPT = tRIGPT
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_IFCTPLResponse
#   result - ResultType
class ADD_IFCTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_IFCTPL
#   tPLID - (any)
class RMV_IFCTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_IFCTPLResponse
#   result - ResultType
class RMV_IFCTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_IFCTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   pRIORITY - (any)
#   pARTIND - (any)
#   sERVER - (any)
#   dEFHND - (any)
#   sERVINFO - (any)
#   tRIGPT - (any)
#   cOMMENT - (any)
class MOD_IFCTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :pRIORITY
  attr_accessor :pARTIND
  attr_accessor :sERVER
  attr_accessor :dEFHND
  attr_accessor :sERVINFO
  attr_accessor :tRIGPT
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, pRIORITY = nil, pARTIND = nil, sERVER = nil, dEFHND = nil, sERVINFO = nil, tRIGPT = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @pRIORITY = pRIORITY
    @pARTIND = pARTIND
    @sERVER = sERVER
    @dEFHND = dEFHND
    @sERVINFO = sERVINFO
    @tRIGPT = tRIGPT
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_IFCTPLResponse
#   result - ResultType
class MOD_IFCTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_IFCTPL
#   tPLID - (any)
class LST_IFCTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_IFCTPLResponse
#   result - LST_IFCTPLType
class LST_IFCTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SPTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   mEDIAID - (any)
#   iFCLIST - (any)
#   sIFCLIST - (any)
#   cOMMENT - (any)
class ADD_SPTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :mEDIAID
  attr_accessor :iFCLIST
  attr_accessor :sIFCLIST
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, mEDIAID = nil, iFCLIST = nil, sIFCLIST = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @mEDIAID = mEDIAID
    @iFCLIST = iFCLIST
    @sIFCLIST = sIFCLIST
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SPTPLResponse
#   result - ResultType
class ADD_SPTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SPTPL
#   tPLID - (any)
class RMV_SPTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SPTPLResponse
#   result - ResultType
class RMV_SPTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SPTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   mEDIAID - (any)
#   iFCLIST - (any)
#   sIFCLIST - (any)
#   cOMMENT - (any)
class MOD_SPTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :mEDIAID
  attr_accessor :iFCLIST
  attr_accessor :sIFCLIST
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, mEDIAID = nil, iFCLIST = nil, sIFCLIST = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @mEDIAID = mEDIAID
    @iFCLIST = iFCLIST
    @sIFCLIST = sIFCLIST
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SPTPLResponse
#   result - ResultType
class MOD_SPTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SPTPL
#   tPLID - (any)
class LST_SPTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SPTPLResponse
#   result - LST_SPTPLType
class LST_SPTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_AKATPL
#   tPLID - (any)
#   tPLNAME - (any)
#   k4SNO - (any)
#   oPSNO - (any)
#   aMFSNO - (any)
#   oPC - (any)
#   oPCK4SNO - (any)
#   cOMMENT - (any)
class ADD_AKATPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :k4SNO
  attr_accessor :oPSNO
  attr_accessor :aMFSNO
  attr_accessor :oPC
  attr_accessor :oPCK4SNO
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, k4SNO = nil, oPSNO = nil, aMFSNO = nil, oPC = nil, oPCK4SNO = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @k4SNO = k4SNO
    @oPSNO = oPSNO
    @aMFSNO = aMFSNO
    @oPC = oPC
    @oPCK4SNO = oPCK4SNO
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_AKATPLResponse
#   result - ResultType
class ADD_AKATPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_AKATPL
#   tPLID - (any)
class RMV_AKATPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_AKATPLResponse
#   result - ResultType
class RMV_AKATPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_AKATPL
#   tPLID - (any)
#   tPLNAME - (any)
#   k4SNO - (any)
#   oPSNO - (any)
#   aMFSNO - (any)
#   oPC - (any)
#   oPCK4SNO - (any)
#   cOMMENT - (any)
class MOD_AKATPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :k4SNO
  attr_accessor :oPSNO
  attr_accessor :aMFSNO
  attr_accessor :oPC
  attr_accessor :oPCK4SNO
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, k4SNO = nil, oPSNO = nil, aMFSNO = nil, oPC = nil, oPCK4SNO = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @k4SNO = k4SNO
    @oPSNO = oPSNO
    @aMFSNO = aMFSNO
    @oPC = oPC
    @oPCK4SNO = oPCK4SNO
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_AKATPLResponse
#   result - ResultType
class MOD_AKATPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AKATPL
#   tPLID - (any)
class LST_AKATPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AKATPLResponse
#   result - LST_AKATPLType
class LST_AKATPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_CAPTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   mCAP - (any)
#   oCAP - (any)
#   sCSCFLIST - (any)
#   cOMMENT - (any)
class ADD_CAPTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :mCAP
  attr_accessor :oCAP
  attr_accessor :sCSCFLIST
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, mCAP = nil, oCAP = nil, sCSCFLIST = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @mCAP = mCAP
    @oCAP = oCAP
    @sCSCFLIST = sCSCFLIST
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_CAPTPLResponse
#   result - ResultType
class ADD_CAPTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_CAPTPL
#   tPLID - (any)
class RMV_CAPTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_CAPTPLResponse
#   result - ResultType
class RMV_CAPTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_CAPTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   mCAP - (any)
#   oCAP - (any)
#   sCSCFLIST - (any)
#   cOMMENT - (any)
class MOD_CAPTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :mCAP
  attr_accessor :oCAP
  attr_accessor :sCSCFLIST
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, mCAP = nil, oCAP = nil, sCSCFLIST = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @mCAP = mCAP
    @oCAP = oCAP
    @sCSCFLIST = sCSCFLIST
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_CAPTPLResponse
#   result - ResultType
class MOD_CAPTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CAPTPL
#   tPLID - (any)
class LST_CAPTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CAPTPLResponse
#   result - LST_CAPTPLType
class LST_CAPTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_TPLINF
#   tPLTYPE - (any)
class LST_TPLINF
  attr_accessor :tPLTYPE

  def initialize(tPLTYPE = nil)
    @tPLTYPE = tPLTYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_TPLINFResponse
#   result - LST_TPLINFType
class LST_TPLINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLIFC
#   iMPU - (any)
#   pUSI - (any)
#   iFCTPLID - (any)
class ADD_TPLIFC
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :iFCTPLID

  def initialize(iMPU = nil, pUSI = nil, iFCTPLID = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @iFCTPLID = iFCTPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLIFCResponse
#   result - ResultType
class ADD_TPLIFCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLIMPU
#   iMPI - (any)
#   iMPU - (any)
#   iMPUTYPE - (any)
#   sPTPLID - (any)
#   iMPUTPLID - (any)
class ADD_TPLIMPU
  attr_accessor :iMPI
  attr_accessor :iMPU
  attr_accessor :iMPUTYPE
  attr_accessor :sPTPLID
  attr_accessor :iMPUTPLID

  def initialize(iMPI = nil, iMPU = nil, iMPUTYPE = nil, sPTPLID = nil, iMPUTPLID = nil)
    @iMPI = iMPI
    @iMPU = iMPU
    @iMPUTYPE = iMPUTYPE
    @sPTPLID = sPTPLID
    @iMPUTPLID = iMPUTPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLIMPUResponse
#   result - ResultType
class ADD_TPLIMPUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLKI
#   iMPI - (any)
#   k - (any)
#   aKATPLID - (any)
class ADD_TPLKI
  attr_accessor :iMPI
  attr_accessor :k
  attr_accessor :aKATPLID

  def initialize(iMPI = nil, k = nil, aKATPLID = nil)
    @iMPI = iMPI
    @k = k
    @aKATPLID = aKATPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLKIResponse
#   result - ResultType
class ADD_TPLKIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLPSI
#   pISI - (any)
#   pUSI - (any)
#   pUSITYPE - (any)
#   cAPTPLID - (any)
#   cHARGTPLID - (any)
#   sPTPLID - (any)
#   pUSITPLID - (any)
class ADD_TPLPSI
  attr_accessor :pISI
  attr_accessor :pUSI
  attr_accessor :pUSITYPE
  attr_accessor :cAPTPLID
  attr_accessor :cHARGTPLID
  attr_accessor :sPTPLID
  attr_accessor :pUSITPLID

  def initialize(pISI = nil, pUSI = nil, pUSITYPE = nil, cAPTPLID = nil, cHARGTPLID = nil, sPTPLID = nil, pUSITPLID = nil)
    @pISI = pISI
    @pUSI = pUSI
    @pUSITYPE = pUSITYPE
    @cAPTPLID = cAPTPLID
    @cHARGTPLID = cHARGTPLID
    @sPTPLID = sPTPLID
    @pUSITPLID = pUSITPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLPSIResponse
#   result - ResultType
class ADD_TPLPSIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLPUSI
#   pISI - (any)
#   pUSI - (any)
#   pUSITYPE - (any)
#   sPTPLID - (any)
#   pUSITPLID - (any)
class ADD_TPLPUSI
  attr_accessor :pISI
  attr_accessor :pUSI
  attr_accessor :pUSITYPE
  attr_accessor :sPTPLID
  attr_accessor :pUSITPLID

  def initialize(pISI = nil, pUSI = nil, pUSITYPE = nil, sPTPLID = nil, pUSITPLID = nil)
    @pISI = pISI
    @pUSI = pUSI
    @pUSITYPE = pUSITYPE
    @sPTPLID = sPTPLID
    @pUSITPLID = pUSITPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLPUSIResponse
#   result - ResultType
class ADD_TPLPUSIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLSUB
#   sUBID - (any)
#   iMPI - (any)
#   iMPU - (any)
#   iMPUTYPE - (any)
#   cAPTPLID - (any)
#   cHARGTPLID - (any)
#   sPTPLID - (any)
#   iMPUTPLID - (any)
#   pBXUSERFLAG - (any)
class ADD_TPLSUB
  attr_accessor :sUBID
  attr_accessor :iMPI
  attr_accessor :iMPU
  attr_accessor :iMPUTYPE
  attr_accessor :cAPTPLID
  attr_accessor :cHARGTPLID
  attr_accessor :sPTPLID
  attr_accessor :iMPUTPLID
  attr_accessor :pBXUSERFLAG

  def initialize(sUBID = nil, iMPI = nil, iMPU = nil, iMPUTYPE = nil, cAPTPLID = nil, cHARGTPLID = nil, sPTPLID = nil, iMPUTPLID = nil, pBXUSERFLAG = nil)
    @sUBID = sUBID
    @iMPI = iMPI
    @iMPU = iMPU
    @iMPUTYPE = iMPUTYPE
    @cAPTPLID = cAPTPLID
    @cHARGTPLID = cHARGTPLID
    @sPTPLID = sPTPLID
    @iMPUTPLID = iMPUTPLID
    @pBXUSERFLAG = pBXUSERFLAG
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLSUBResponse
#   result - ResultType
class ADD_TPLSUBResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLIMPI
#   sUBID - (any)
#   iMPI - (any)
#   iMPU - (any)
#   iMPUTYPE - (any)
#   cHARGTPLID - (any)
#   sPTPLID - (any)
#   iMPUTPLID - (any)
class ADD_TPLIMPI
  attr_accessor :sUBID
  attr_accessor :iMPI
  attr_accessor :iMPU
  attr_accessor :iMPUTYPE
  attr_accessor :cHARGTPLID
  attr_accessor :sPTPLID
  attr_accessor :iMPUTPLID

  def initialize(sUBID = nil, iMPI = nil, iMPU = nil, iMPUTYPE = nil, cHARGTPLID = nil, sPTPLID = nil, iMPUTPLID = nil)
    @sUBID = sUBID
    @iMPI = iMPI
    @iMPU = iMPU
    @iMPUTYPE = iMPUTYPE
    @cHARGTPLID = cHARGTPLID
    @sPTPLID = sPTPLID
    @iMPUTPLID = iMPUTPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLIMPIResponse
#   result - ResultType
class ADD_TPLIMPIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_PSIDYND
#   pISI - (any)
#   pUSI - (any)
class LST_PSIDYND
  attr_accessor :pISI
  attr_accessor :pUSI

  def initialize(pISI = nil, pUSI = nil)
    @pISI = pISI
    @pUSI = pUSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_PSIDYNDResponse
#   result - LST_PSIDYNDType
class LST_PSIDYNDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AUTHINF
#   iMPI - (any)
class LST_AUTHINF
  attr_accessor :iMPI

  def initialize(iMPI = nil)
    @iMPI = iMPI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AUTHINFResponse
#   result - LST_AUTHINFType
class LST_AUTHINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_NATPLID
#   iMPU - (any)
#   nATPLID - (any)
class SET_NATPLID
  attr_accessor :iMPU
  attr_accessor :nATPLID

  def initialize(iMPU = nil, nATPLID = nil)
    @iMPU = iMPU
    @nATPLID = nATPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_NATPLIDResponse
#   result - ResultType
class SET_NATPLIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NATPLID
#   iMPU - (any)
class LST_NATPLID
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NATPLIDResponse
#   result - LST_NATPLIDType
class LST_NATPLIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_NNCFLAG
#   iMPU - (any)
#   nNCFLAG - (any)
class SET_NNCFLAG
  attr_accessor :iMPU
  attr_accessor :nNCFLAG

  def initialize(iMPU = nil, nNCFLAG = nil)
    @iMPU = iMPU
    @nNCFLAG = nNCFLAG
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_NNCFLAGResponse
#   result - ResultType
class SET_NNCFLAGResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NNCFLAG
#   iMPU - (any)
class LST_NNCFLAG
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NNCFLAGResponse
#   result - LST_NNCFLAGType
class LST_NNCFLAGResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_NNRLI
#   iMPU - (any)
#   rLINDEX - (any)
#   rLI - (any)
#   rLT - (any)
class ADD_NNRLI
  attr_accessor :iMPU
  attr_accessor :rLINDEX
  attr_accessor :rLI
  attr_accessor :rLT

  def initialize(iMPU = nil, rLINDEX = nil, rLI = nil, rLT = nil)
    @iMPU = iMPU
    @rLINDEX = rLINDEX
    @rLI = rLI
    @rLT = rLT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_NNRLIResponse
#   result - ResultType
class ADD_NNRLIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_NNRLI
#   iMPU - (any)
#   rLINDEX - (any)
class RMV_NNRLI
  attr_accessor :iMPU
  attr_accessor :rLINDEX

  def initialize(iMPU = nil, rLINDEX = nil)
    @iMPU = iMPU
    @rLINDEX = rLINDEX
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_NNRLIResponse
#   result - ResultType
class RMV_NNRLIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_NNRLI
#   iMPU - (any)
#   rLINDEX - (any)
#   rLI - (any)
#   rLT - (any)
#   sETDRLI - (any)
class MOD_NNRLI
  attr_accessor :iMPU
  attr_accessor :rLINDEX
  attr_accessor :rLI
  attr_accessor :rLT
  attr_accessor :sETDRLI

  def initialize(iMPU = nil, rLINDEX = nil, rLI = nil, rLT = nil, sETDRLI = nil)
    @iMPU = iMPU
    @rLINDEX = rLINDEX
    @rLI = rLI
    @rLT = rLT
    @sETDRLI = sETDRLI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_NNRLIResponse
#   result - ResultType
class MOD_NNRLIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NNRLI
#   iMPU - (any)
#   rLINDEX - (any)
class LST_NNRLI
  attr_accessor :iMPU
  attr_accessor :rLINDEX

  def initialize(iMPU = nil, rLINDEX = nil)
    @iMPU = iMPU
    @rLINDEX = rLINDEX
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NNRLIResponse
#   result - LST_NNRLIType
class LST_NNRLIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_ASSPID
#   iMPU - (any)
#   pUSI - (any)
#   aSSPID - (any)
class ADD_ASSPID
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :aSSPID

  def initialize(iMPU = nil, pUSI = nil, aSSPID = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @aSSPID = aSSPID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_ASSPIDResponse
#   result - ResultType
class ADD_ASSPIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_ASSPID
#   iMPU - (any)
#   pUSI - (any)
#   aSSPID - (any)
class RMV_ASSPID
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :aSSPID

  def initialize(iMPU = nil, pUSI = nil, aSSPID = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @aSSPID = aSSPID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_ASSPIDResponse
#   result - ResultType
class RMV_ASSPIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASSPID
#   iMPU - (any)
#   pUSI - (any)
class LST_ASSPID
  attr_accessor :iMPU
  attr_accessor :pUSI

  def initialize(iMPU = nil, pUSI = nil)
    @iMPU = iMPU
    @pUSI = pUSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASSPIDResponse
#   result - LST_ASSPIDType
class LST_ASSPIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_ALIASPU
#   aLIASID - (any)
#   iMPULIST - (any)
class SET_ALIASPU
  attr_accessor :aLIASID
  attr_accessor :iMPULIST

  def initialize(aLIASID = nil, iMPULIST = nil)
    @aLIASID = aLIASID
    @iMPULIST = iMPULIST
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_ALIASPUResponse
#   result - ResultType
class SET_ALIASPUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_REPDATA
#   iMPU - (any)
#   pUSI - (any)
#   rEPDATA - (any)
#   sERVICEID - (any)
#   sERVICEDATA - (any)
#   rEPTYPE - (any)
class SET_REPDATA
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :rEPDATA
  attr_accessor :sERVICEID
  attr_accessor :sERVICEDATA
  attr_accessor :rEPTYPE

  def initialize(iMPU = nil, pUSI = nil, rEPDATA = nil, sERVICEID = nil, sERVICEDATA = nil, rEPTYPE = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @rEPDATA = rEPDATA
    @sERVICEID = sERVICEID
    @sERVICEDATA = sERVICEDATA
    @rEPTYPE = rEPTYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_REPDATAResponse
#   result - ResultType
class SET_REPDATAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SRVIND
#   iMPU - (any)
#   pUSI - (any)
#   rEPTYPE - (any)
class LST_SRVIND
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :rEPTYPE

  def initialize(iMPU = nil, pUSI = nil, rEPTYPE = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @rEPTYPE = rEPTYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SRVINDResponse
#   result - LST_SRVINDType
class LST_SRVINDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_REPDATA
#   iMPU - (any)
#   pUSI - (any)
#   rEPTYPE - (any)
#   sRVIND - (any)
class LST_REPDATA
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :rEPTYPE
  attr_accessor :sRVIND

  def initialize(iMPU = nil, pUSI = nil, rEPTYPE = nil, sRVIND = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @rEPTYPE = rEPTYPE
    @sRVIND = sRVIND
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_REPDATAResponse
#   result - LST_REPDATAType
class LST_REPDATAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_DALI
#   iMPU - (any)
class LST_DALI
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_DALIResponse
#   result - LST_DALIType
class LST_DALIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_IMSI
#   iMPI - (any)
#   iMSI - (any)
#   iSDN - (any)
class ADD_IMSI
  attr_accessor :iMPI
  attr_accessor :iMSI
  attr_accessor :iSDN

  def initialize(iMPI = nil, iMSI = nil, iSDN = nil)
    @iMPI = iMPI
    @iMSI = iMSI
    @iSDN = iSDN
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_IMSIResponse
#   result - ResultType
class ADD_IMSIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_IMSI
#   iMSI - (any)
class RMV_IMSI
  attr_accessor :iMSI

  def initialize(iMSI = nil)
    @iMSI = iMSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_IMSIResponse
#   result - ResultType
class RMV_IMSIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_IMSI
#   iMSI - (any)
#   nEWIMSI - (any)
class MOD_IMSI
  attr_accessor :iMSI
  attr_accessor :nEWIMSI

  def initialize(iMSI = nil, nEWIMSI = nil)
    @iMSI = iMSI
    @nEWIMSI = nEWIMSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_IMSIResponse
#   result - ResultType
class MOD_IMSIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_ISDN
#   iMSI - (any)
#   iSDN - (any)
class ADD_ISDN
  attr_accessor :iMSI
  attr_accessor :iSDN

  def initialize(iMSI = nil, iSDN = nil)
    @iMSI = iMSI
    @iSDN = iSDN
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_ISDNResponse
#   result - ResultType
class ADD_ISDNResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_ISDN
#   iSDN - (any)
class RMV_ISDN
  attr_accessor :iSDN

  def initialize(iSDN = nil)
    @iSDN = iSDN
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_ISDNResponse
#   result - ResultType
class RMV_ISDNResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_ISDN
#   iSDN - (any)
#   nEWISDN - (any)
class MOD_ISDN
  attr_accessor :iSDN
  attr_accessor :nEWISDN

  def initialize(iSDN = nil, nEWISDN = nil)
    @iSDN = iSDN
    @nEWISDN = nEWISDN
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_ISDNResponse
#   result - ResultType
class MOD_ISDNResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_MSID
#   iMPI - (any)
#   iMSI - (any)
#   iSDN - (any)
class LST_MSID
  attr_accessor :iMPI
  attr_accessor :iMSI
  attr_accessor :iSDN

  def initialize(iMPI = nil, iMSI = nil, iSDN = nil)
    @iMPI = iMPI
    @iMSI = iMSI
    @iSDN = iSDN
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_MSIDResponse
#   result - LST_MSIDType
class LST_MSIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_ASSOC
#   iMPI - (any)
#   iMSI - (any)
class ADD_ASSOC
  attr_accessor :iMPI
  attr_accessor :iMSI

  def initialize(iMPI = nil, iMSI = nil)
    @iMPI = iMPI
    @iMSI = iMSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_ASSOCResponse
#   result - ResultType
class ADD_ASSOCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_ASSOC
#   iMPI - (any)
#   iMSI - (any)
class RMV_ASSOC
  attr_accessor :iMPI
  attr_accessor :iMSI

  def initialize(iMPI = nil, iMSI = nil)
    @iMPI = iMPI
    @iMSI = iMSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_ASSOCResponse
#   result - ResultType
class RMV_ASSOCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASSOC
#   iMPI - (any)
#   iMSI - (any)
class LST_ASSOC
  attr_accessor :iMPI
  attr_accessor :iMSI

  def initialize(iMPI = nil, iMSI = nil)
    @iMPI = iMPI
    @iMSI = iMSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASSOCResponse
#   result - LST_ASSOCType
class LST_ASSOCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_NBAINF
#   iMPI - (any)
#   lINEIDIDX - (any)
#   lINEID - (any)
class ADD_NBAINF
  attr_accessor :iMPI
  attr_accessor :lINEIDIDX
  attr_accessor :lINEID

  def initialize(iMPI = nil, lINEIDIDX = nil, lINEID = nil)
    @iMPI = iMPI
    @lINEIDIDX = lINEIDIDX
    @lINEID = lINEID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_NBAINFResponse
#   result - ResultType
class ADD_NBAINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_NBAINF
#   iMPI - (any)
#   lINEIDIDX - (any)
class RMV_NBAINF
  attr_accessor :iMPI
  attr_accessor :lINEIDIDX

  def initialize(iMPI = nil, lINEIDIDX = nil)
    @iMPI = iMPI
    @lINEIDIDX = lINEIDIDX
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_NBAINFResponse
#   result - ResultType
class RMV_NBAINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NBAINF
#   iMPI - (any)
class LST_NBAINF
  attr_accessor :iMPI

  def initialize(iMPI = nil)
    @iMPI = iMPI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NBAINFResponse
#   result - LST_NBAINFType
class LST_NBAINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_CHGTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   pECF - (any)
#   sECF - (any)
#   pCCF - (any)
#   sCCF - (any)
#   cOMMENT - (any)
class ADD_CHGTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :pECF
  attr_accessor :sECF
  attr_accessor :pCCF
  attr_accessor :sCCF
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, pECF = nil, sECF = nil, pCCF = nil, sCCF = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @pECF = pECF
    @sECF = sECF
    @pCCF = pCCF
    @sCCF = sCCF
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_CHGTPLResponse
#   result - ResultType
class ADD_CHGTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_CHGTPL
#   tPLID - (any)
class RMV_CHGTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_CHGTPLResponse
#   result - ResultType
class RMV_CHGTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_CHGTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   pECF - (any)
#   sECF - (any)
#   pCCF - (any)
#   sCCF - (any)
#   cOMMENT - (any)
class MOD_CHGTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :pECF
  attr_accessor :sECF
  attr_accessor :pCCF
  attr_accessor :sCCF
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, pECF = nil, sECF = nil, pCCF = nil, sCCF = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @pECF = pECF
    @sECF = sECF
    @pCCF = pCCF
    @sCCF = sCCF
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_CHGTPLResponse
#   result - ResultType
class MOD_CHGTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CHGTPL
#   tPLID - (any)
class LST_CHGTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CHGTPLResponse
#   result - LST_CHGTPLType
class LST_CHGTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_VNTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   mATCHTYPE - (any)
#   vN - (any)
#   vNTYPE - (any)
#   cOMMENT - (any)
class ADD_VNTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :mATCHTYPE
  attr_accessor :vN
  attr_accessor :vNTYPE
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, mATCHTYPE = nil, vN = nil, vNTYPE = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @mATCHTYPE = mATCHTYPE
    @vN = vN
    @vNTYPE = vNTYPE
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_VNTPLResponse
#   result - ResultType
class ADD_VNTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_VNTPL
#   tPLID - (any)
class RMV_VNTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_VNTPLResponse
#   result - ResultType
class RMV_VNTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_VNTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   mATCHTYPE - (any)
#   cOMMENT - (any)
class MOD_VNTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :mATCHTYPE
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, mATCHTYPE = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @mATCHTYPE = mATCHTYPE
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_VNTPLResponse
#   result - ResultType
class MOD_VNTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNTPL
#   tPLID - (any)
class LST_VNTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNTPLResponse
#   result - LST_VNTPLType
class LST_VNTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_VNTPLADDR
#   vNTPLID - (any)
#   vN - (any)
#   vNTYPE - (any)
class ADD_VNTPLADDR
  attr_accessor :vNTPLID
  attr_accessor :vN
  attr_accessor :vNTYPE

  def initialize(vNTPLID = nil, vN = nil, vNTYPE = nil)
    @vNTPLID = vNTPLID
    @vN = vN
    @vNTYPE = vNTYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_VNTPLADDRResponse
#   result - ResultType
class ADD_VNTPLADDRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_VNTPLADDR
#   vNTPLID - (any)
#   vN - (any)
class RMV_VNTPLADDR
  attr_accessor :vNTPLID
  attr_accessor :vN

  def initialize(vNTPLID = nil, vN = nil)
    @vNTPLID = vNTPLID
    @vN = vN
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_VNTPLADDRResponse
#   result - ResultType
class RMV_VNTPLADDRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNTPLADDR
#   vNTPLID - (any)
class LST_VNTPLADDR
  attr_accessor :vNTPLID

  def initialize(vNTPLID = nil)
    @vNTPLID = vNTPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNTPLADDRResponse
#   result - LST_VNTPLADDRType
class LST_VNTPLADDRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_NATPL
#   tPLID - (any)
#   tPLNAME - (any)
#   mATCHTYPE - (any)
#   nA - (any)
#   nATYPE - (any)
#   cOMMENT - (any)
class ADD_NATPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :mATCHTYPE
  attr_accessor :nA
  attr_accessor :nATYPE
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, mATCHTYPE = nil, nA = nil, nATYPE = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @mATCHTYPE = mATCHTYPE
    @nA = nA
    @nATYPE = nATYPE
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_NATPLResponse
#   result - ResultType
class ADD_NATPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_NATPL
#   tPLID - (any)
class RMV_NATPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_NATPLResponse
#   result - ResultType
class RMV_NATPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_NATPL
#   tPLID - (any)
#   tPLNAME - (any)
#   mATCHTYPE - (any)
#   cOMMENT - (any)
class MOD_NATPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :mATCHTYPE
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, mATCHTYPE = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @mATCHTYPE = mATCHTYPE
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_NATPLResponse
#   result - ResultType
class MOD_NATPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NATPL
#   tPLID - (any)
class LST_NATPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NATPLResponse
#   result - LST_NATPLType
class LST_NATPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_NATPLADDR
#   nATPLID - (any)
#   nA - (any)
#   nATYPE - (any)
class ADD_NATPLADDR
  attr_accessor :nATPLID
  attr_accessor :nA
  attr_accessor :nATYPE

  def initialize(nATPLID = nil, nA = nil, nATYPE = nil)
    @nATPLID = nATPLID
    @nA = nA
    @nATYPE = nATYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_NATPLADDRResponse
#   result - ResultType
class ADD_NATPLADDRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_NATPLADDR
#   nATPLID - (any)
#   nA - (any)
class RMV_NATPLADDR
  attr_accessor :nATPLID
  attr_accessor :nA

  def initialize(nATPLID = nil, nA = nil)
    @nATPLID = nATPLID
    @nA = nA
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_NATPLADDRResponse
#   result - ResultType
class RMV_NATPLADDRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NATPLADDR
#   nATPLID - (any)
class LST_NATPLADDR
  attr_accessor :nATPLID

  def initialize(nATPLID = nil)
    @nATPLID = nATPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NATPLADDRResponse
#   result - LST_NATPLADDRType
class LST_NATPLADDRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_OCSITPL
#   tPLID - (any)
#   tPLNAME - (any)
#   gSMSCFADDR - (any)
#   sK - (any)
#   dEFCALL - (any)
#   iMSSF - (any)
#   cOMMENT - (any)
class ADD_OCSITPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :gSMSCFADDR
  attr_accessor :sK
  attr_accessor :dEFCALL
  attr_accessor :iMSSF
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, gSMSCFADDR = nil, sK = nil, dEFCALL = nil, iMSSF = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @gSMSCFADDR = gSMSCFADDR
    @sK = sK
    @dEFCALL = dEFCALL
    @iMSSF = iMSSF
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_OCSITPLResponse
#   result - ResultType
class ADD_OCSITPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_OCSITPL
#   tPLID - (any)
class RMV_OCSITPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_OCSITPLResponse
#   result - ResultType
class RMV_OCSITPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_OCSITPL
#   tPLID - (any)
#   tPLNAME - (any)
#   gSMSCFADDR - (any)
#   sK - (any)
#   dEFCALL - (any)
#   iMSSF - (any)
#   cOMMENT - (any)
class MOD_OCSITPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :gSMSCFADDR
  attr_accessor :sK
  attr_accessor :dEFCALL
  attr_accessor :iMSSF
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, gSMSCFADDR = nil, sK = nil, dEFCALL = nil, iMSSF = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @gSMSCFADDR = gSMSCFADDR
    @sK = sK
    @dEFCALL = dEFCALL
    @iMSSF = iMSSF
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_OCSITPLResponse
#   result - ResultType
class MOD_OCSITPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_OCSITPL
#   tPLID - (any)
class LST_OCSITPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_OCSITPLResponse
#   result - LST_OCSITPLType
class LST_OCSITPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TCSITPL
#   tPLID - (any)
#   tPLNAME - (any)
#   gSMSCFADDR - (any)
#   sK - (any)
#   dEFCALL - (any)
#   iMSSF - (any)
#   cOMMENT - (any)
class ADD_TCSITPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :gSMSCFADDR
  attr_accessor :sK
  attr_accessor :dEFCALL
  attr_accessor :iMSSF
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, gSMSCFADDR = nil, sK = nil, dEFCALL = nil, iMSSF = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @gSMSCFADDR = gSMSCFADDR
    @sK = sK
    @dEFCALL = dEFCALL
    @iMSSF = iMSSF
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TCSITPLResponse
#   result - ResultType
class ADD_TCSITPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_TCSITPL
#   tPLID - (any)
class RMV_TCSITPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_TCSITPLResponse
#   result - ResultType
class RMV_TCSITPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_TCSITPL
#   tPLID - (any)
#   tPLNAME - (any)
#   gSMSCFADDR - (any)
#   sK - (any)
#   dEFCALL - (any)
#   iMSSF - (any)
#   cOMMENT - (any)
class MOD_TCSITPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :gSMSCFADDR
  attr_accessor :sK
  attr_accessor :dEFCALL
  attr_accessor :iMSSF
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, gSMSCFADDR = nil, sK = nil, dEFCALL = nil, iMSSF = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @gSMSCFADDR = gSMSCFADDR
    @sK = sK
    @dEFCALL = dEFCALL
    @iMSSF = iMSSF
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_TCSITPLResponse
#   result - ResultType
class MOD_TCSITPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_TCSITPL
#   tPLID - (any)
class LST_TCSITPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_TCSITPLResponse
#   result - LST_TCSITPLType
class LST_TCSITPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_CSI
#   iMSI - (any)
#   iSDN - (any)
#   cSITYPE - (any)
#   cSITPLID - (any)
class SET_CSI
  attr_accessor :iMSI
  attr_accessor :iSDN
  attr_accessor :cSITYPE
  attr_accessor :cSITPLID

  def initialize(iMSI = nil, iSDN = nil, cSITYPE = nil, cSITPLID = nil)
    @iMSI = iMSI
    @iSDN = iSDN
    @cSITYPE = cSITYPE
    @cSITPLID = cSITPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_CSIResponse
#   result - ResultType
class SET_CSIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CSI
#   iMSI - (any)
#   cSITYPE - (any)
class LST_CSI
  attr_accessor :iMSI
  attr_accessor :cSITYPE

  def initialize(iMSI = nil, cSITYPE = nil)
    @iMSI = iMSI
    @cSITYPE = cSITYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CSIResponse
#   result - LST_CSIType
class LST_CSIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SERPRV
#   iMPU - (any)
#   pUSI - (any)
#   sERPRVID - (any)
class ADD_SERPRV
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :sERPRVID

  def initialize(iMPU = nil, pUSI = nil, sERPRVID = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @sERPRVID = sERPRVID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SERPRVResponse
#   result - ResultType
class ADD_SERPRVResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SERPRV
#   iMPU - (any)
#   pUSI - (any)
class RMV_SERPRV
  attr_accessor :iMPU
  attr_accessor :pUSI

  def initialize(iMPU = nil, pUSI = nil)
    @iMPU = iMPU
    @pUSI = pUSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SERPRVResponse
#   result - ResultType
class RMV_SERPRVResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SERPRV
#   iMPU - (any)
#   pUSI - (any)
#   sERPRVID - (any)
class MOD_SERPRV
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :sERPRVID

  def initialize(iMPU = nil, pUSI = nil, sERPRVID = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @sERPRVID = sERPRVID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SERPRVResponse
#   result - ResultType
class MOD_SERPRVResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SERPRV
#   iMPU - (any)
#   pUSI - (any)
class LST_SERPRV
  attr_accessor :iMPU
  attr_accessor :pUSI

  def initialize(iMPU = nil, pUSI = nil)
    @iMPU = iMPU
    @pUSI = pUSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SERPRVResponse
#   result - LST_SERPRVType
class LST_SERPRVResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_TAA
#   iMPI - (any)
#   tAAFLAG - (any)
class SET_TAA
  attr_accessor :iMPI
  attr_accessor :tAAFLAG

  def initialize(iMPI = nil, tAAFLAG = nil)
    @iMPI = iMPI
    @tAAFLAG = tAAFLAG
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_TAAResponse
#   result - ResultType
class SET_TAAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_TAA
#   iMPI - (any)
class LST_TAA
  attr_accessor :iMPI

  def initialize(iMPI = nil)
    @iMPI = iMPI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_TAAResponse
#   result - LST_TAAType
class LST_TAAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_USRPRIOR
#   iMPU - (any)
#   pUSI - (any)
#   uSRPRIOR - (any)
class SET_USRPRIOR
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :uSRPRIOR

  def initialize(iMPU = nil, pUSI = nil, uSRPRIOR = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @uSRPRIOR = uSRPRIOR
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_USRPRIORResponse
#   result - ResultType
class SET_USRPRIORResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_USRPRIOR
#   iMPU - (any)
#   pUSI - (any)
class LST_USRPRIOR
  attr_accessor :iMPU
  attr_accessor :pUSI

  def initialize(iMPU = nil, pUSI = nil)
    @iMPU = iMPU
    @pUSI = pUSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_USRPRIORResponse
#   result - LST_USRPRIORType
class LST_USRPRIORResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SDAINF
#   iMPI - (any)
#   hUSERNAME - (any)
#   pWD - (any)
#   rEALM - (any)
#   hA1 - (any)
class ADD_SDAINF
  attr_accessor :iMPI
  attr_accessor :hUSERNAME
  attr_accessor :pWD
  attr_accessor :rEALM
  attr_accessor :hA1

  def initialize(iMPI = nil, hUSERNAME = nil, pWD = nil, rEALM = nil, hA1 = nil)
    @iMPI = iMPI
    @hUSERNAME = hUSERNAME
    @pWD = pWD
    @rEALM = rEALM
    @hA1 = hA1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SDAINFResponse
#   result - ResultType
class ADD_SDAINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SDAINF
#   iMPI - (any)
class RMV_SDAINF
  attr_accessor :iMPI

  def initialize(iMPI = nil)
    @iMPI = iMPI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SDAINFResponse
#   result - ResultType
class RMV_SDAINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SDAINF
#   iMPI - (any)
#   hUSERNAME - (any)
#   pWD - (any)
#   rEALM - (any)
#   hA1 - (any)
class MOD_SDAINF
  attr_accessor :iMPI
  attr_accessor :hUSERNAME
  attr_accessor :pWD
  attr_accessor :rEALM
  attr_accessor :hA1

  def initialize(iMPI = nil, hUSERNAME = nil, pWD = nil, rEALM = nil, hA1 = nil)
    @iMPI = iMPI
    @hUSERNAME = hUSERNAME
    @pWD = pWD
    @rEALM = rEALM
    @hA1 = hA1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SDAINFResponse
#   result - ResultType
class MOD_SDAINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SDAINF
#   iMPI - (any)
#   hUSERNAME - (any)
class LST_SDAINF
  attr_accessor :iMPI
  attr_accessor :hUSERNAME

  def initialize(iMPI = nil, hUSERNAME = nil)
    @iMPI = iMPI
    @hUSERNAME = hUSERNAME
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SDAINFResponse
#   result - LST_SDAINFType
class LST_SDAINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_SDAPWD
#   hUSERNAME - (any)
#   pWD - (any)
class CHK_SDAPWD
  attr_accessor :hUSERNAME
  attr_accessor :pWD

  def initialize(hUSERNAME = nil, pWD = nil)
    @hUSERNAME = hUSERNAME
    @pWD = pWD
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_SDAPWDResponse
#   result - ResultType
class CHK_SDAPWDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_LRI
#   iMPU - (any)
#   pUSI - (any)
#   lRI - (any)
class SET_LRI
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :lRI

  def initialize(iMPU = nil, pUSI = nil, lRI = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @lRI = lRI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_LRIResponse
#   result - ResultType
class SET_LRIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_LRI
#   iMPU - (any)
#   pUSI - (any)
class LST_LRI
  attr_accessor :iMPU
  attr_accessor :pUSI

  def initialize(iMPU = nil, pUSI = nil)
    @iMPU = iMPU
    @pUSI = pUSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_LRIResponse
#   result - LST_LRIType
class LST_LRIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SIFC
#   iMPU - (any)
#   sIFCID - (any)
class ADD_SIFC
  attr_accessor :iMPU
  attr_accessor :sIFCID

  def initialize(iMPU = nil, sIFCID = nil)
    @iMPU = iMPU
    @sIFCID = sIFCID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SIFCResponse
#   result - ResultType
class ADD_SIFCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SIFC
#   iMPU - (any)
#   sIFCID - (any)
class RMV_SIFC
  attr_accessor :iMPU
  attr_accessor :sIFCID

  def initialize(iMPU = nil, sIFCID = nil)
    @iMPU = iMPU
    @sIFCID = sIFCID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SIFCResponse
#   result - ResultType
class RMV_SIFCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SIFC
#   iMPU - (any)
#   oSIFCID - (any)
#   nSIFCID - (any)
class MOD_SIFC
  attr_accessor :iMPU
  attr_accessor :oSIFCID
  attr_accessor :nSIFCID

  def initialize(iMPU = nil, oSIFCID = nil, nSIFCID = nil)
    @iMPU = iMPU
    @oSIFCID = oSIFCID
    @nSIFCID = nSIFCID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SIFCResponse
#   result - ResultType
class MOD_SIFCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SIFC
#   iMPU - (any)
class LST_SIFC
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SIFCResponse
#   result - LST_SIFCType
class LST_SIFCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_ALLIFC
#   iMPU - (any)
class RMV_ALLIFC
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_ALLIFCResponse
#   result - ResultType
class RMV_ALLIFCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SIFCTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   cOMMENT - (any)
class ADD_SIFCTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SIFCTPLResponse
#   result - ResultType
class ADD_SIFCTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SIFCTPL
#   tPLID - (any)
class RMV_SIFCTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SIFCTPLResponse
#   result - ResultType
class RMV_SIFCTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SIFCTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   cOMMENT - (any)
class MOD_SIFCTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SIFCTPLResponse
#   result - ResultType
class MOD_SIFCTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SIFCTPL
#   tPLID - (any)
class LST_SIFCTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SIFCTPLResponse
#   result - LST_SIFCTPLType
class LST_SIFCTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SIFCINF
#   sIFCTPLID - (any)
#   iFCNAME - (any)
#   pRIORITY - (any)
#   pARTIND - (any)
#   sERVER - (any)
#   dEFHND - (any)
#   sERVINFO - (any)
#   tRIGPT - (any)
class ADD_SIFCINF
  attr_accessor :sIFCTPLID
  attr_accessor :iFCNAME
  attr_accessor :pRIORITY
  attr_accessor :pARTIND
  attr_accessor :sERVER
  attr_accessor :dEFHND
  attr_accessor :sERVINFO
  attr_accessor :tRIGPT

  def initialize(sIFCTPLID = nil, iFCNAME = nil, pRIORITY = nil, pARTIND = nil, sERVER = nil, dEFHND = nil, sERVINFO = nil, tRIGPT = nil)
    @sIFCTPLID = sIFCTPLID
    @iFCNAME = iFCNAME
    @pRIORITY = pRIORITY
    @pARTIND = pARTIND
    @sERVER = sERVER
    @dEFHND = dEFHND
    @sERVINFO = sERVINFO
    @tRIGPT = tRIGPT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SIFCINFResponse
#   result - ResultType
class ADD_SIFCINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SIFCINF
#   sIFCTPLID - (any)
#   pRIORITY - (any)
class RMV_SIFCINF
  attr_accessor :sIFCTPLID
  attr_accessor :pRIORITY

  def initialize(sIFCTPLID = nil, pRIORITY = nil)
    @sIFCTPLID = sIFCTPLID
    @pRIORITY = pRIORITY
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SIFCINFResponse
#   result - ResultType
class RMV_SIFCINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SIFCINF
#   sIFCTPLID - (any)
#   iFCNAME - (any)
#   pRIORITY - (any)
#   pARTIND - (any)
#   sERVER - (any)
#   dEFHND - (any)
#   sERVINFO - (any)
#   tRIGPT - (any)
class MOD_SIFCINF
  attr_accessor :sIFCTPLID
  attr_accessor :iFCNAME
  attr_accessor :pRIORITY
  attr_accessor :pARTIND
  attr_accessor :sERVER
  attr_accessor :dEFHND
  attr_accessor :sERVINFO
  attr_accessor :tRIGPT

  def initialize(sIFCTPLID = nil, iFCNAME = nil, pRIORITY = nil, pARTIND = nil, sERVER = nil, dEFHND = nil, sERVINFO = nil, tRIGPT = nil)
    @sIFCTPLID = sIFCTPLID
    @iFCNAME = iFCNAME
    @pRIORITY = pRIORITY
    @pARTIND = pARTIND
    @sERVER = sERVER
    @dEFHND = dEFHND
    @sERVINFO = sERVINFO
    @tRIGPT = tRIGPT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SIFCINFResponse
#   result - ResultType
class MOD_SIFCINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SIFCINF
#   sIFCTPLID - (any)
class LST_SIFCINF
  attr_accessor :sIFCTPLID

  def initialize(sIFCTPLID = nil)
    @sIFCTPLID = sIFCTPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SIFCINFResponse
#   result - LST_SIFCINFType
class LST_SIFCINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_ESRN
#   iMPU - (any)
#   eSRN - (any)
class SET_ESRN
  attr_accessor :iMPU
  attr_accessor :eSRN

  def initialize(iMPU = nil, eSRN = nil)
    @iMPU = iMPU
    @eSRN = eSRN
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_ESRNResponse
#   result - ResultType
class SET_ESRNResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ESRN
#   iMPU - (any)
class LST_ESRN
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ESRNResponse
#   result - LST_ESRNType
class LST_ESRNResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_ONEKEY
#   iMPU - (any)
#   wUSERNAME - (any)
#   hTOKEN - (any)
#   aP - (any)
class ADD_ONEKEY
  attr_accessor :iMPU
  attr_accessor :wUSERNAME
  attr_accessor :hTOKEN
  attr_accessor :aP

  def initialize(iMPU = nil, wUSERNAME = nil, hTOKEN = nil, aP = nil)
    @iMPU = iMPU
    @wUSERNAME = wUSERNAME
    @hTOKEN = hTOKEN
    @aP = aP
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_ONEKEYResponse
#   result - ResultType
class ADD_ONEKEYResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_ONEKEY
#   iMPU - (any)
#   wUSERNAME - (any)
#   hTOKEN - (any)
#   aP - (any)
class MOD_ONEKEY
  attr_accessor :iMPU
  attr_accessor :wUSERNAME
  attr_accessor :hTOKEN
  attr_accessor :aP

  def initialize(iMPU = nil, wUSERNAME = nil, hTOKEN = nil, aP = nil)
    @iMPU = iMPU
    @wUSERNAME = wUSERNAME
    @hTOKEN = hTOKEN
    @aP = aP
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_ONEKEYResponse
#   result - ResultType
class MOD_ONEKEYResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ONEKEY
#   iMPU - (any)
class LST_ONEKEY
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ONEKEYResponse
#   result - LST_ONEKEYType
class LST_ONEKEYResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_ONEKEY
#   iMPU - (any)
class RMV_ONEKEY
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_ONEKEYResponse
#   result - ResultType
class RMV_ONEKEYResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_ASIFC
#   iMPU - (any)
#   sERVER - (any)
class RMV_ASIFC
  attr_accessor :iMPU
  attr_accessor :sERVER

  def initialize(iMPU = nil, sERVER = nil)
    @iMPU = iMPU
    @sERVER = sERVER
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_ASIFCResponse
#   result - ResultType
class RMV_ASIFCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HOP
#   oPSNO - (any)
#   oPVALUE - (any)
class ADD_HOP
  attr_accessor :oPSNO
  attr_accessor :oPVALUE

  def initialize(oPSNO = nil, oPVALUE = nil)
    @oPSNO = oPSNO
    @oPVALUE = oPVALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HOPResponse
#   result - ResultType
class ADD_HOPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HOP
#   oPSNO - (any)
class RMV_HOP
  attr_accessor :oPSNO

  def initialize(oPSNO = nil)
    @oPSNO = oPSNO
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HOPResponse
#   result - ResultType
class RMV_HOPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HOP
#   oPSNO - (any)
#   oPVALUE - (any)
class MOD_HOP
  attr_accessor :oPSNO
  attr_accessor :oPVALUE

  def initialize(oPSNO = nil, oPVALUE = nil)
    @oPSNO = oPSNO
    @oPVALUE = oPVALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HOPResponse
#   result - ResultType
class MOD_HOPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HOP
#   oPSNO - (any)
class LST_HOP
  attr_accessor :oPSNO

  def initialize(oPSNO = nil)
    @oPSNO = oPSNO
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HOPResponse
#   result - LST_HOPType
class LST_HOPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HOP
#   oPSNO - (any)
#   oPVALUE - (any)
class CHK_HOP
  attr_accessor :oPSNO
  attr_accessor :oPVALUE

  def initialize(oPSNO = nil, oPVALUE = nil)
    @oPSNO = oPSNO
    @oPVALUE = oPVALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HOPResponse
#   result - ResultType
class CHK_HOPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HAMF
#   aMFSNO - (any)
#   aMFVALUE - (any)
class ADD_HAMF
  attr_accessor :aMFSNO
  attr_accessor :aMFVALUE

  def initialize(aMFSNO = nil, aMFVALUE = nil)
    @aMFSNO = aMFSNO
    @aMFVALUE = aMFVALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HAMFResponse
#   result - ResultType
class ADD_HAMFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HAMF
#   aMFSNO - (any)
class RMV_HAMF
  attr_accessor :aMFSNO

  def initialize(aMFSNO = nil)
    @aMFSNO = aMFSNO
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HAMFResponse
#   result - ResultType
class RMV_HAMFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HAMF
#   aMFSNO - (any)
#   aMFVALUE - (any)
class MOD_HAMF
  attr_accessor :aMFSNO
  attr_accessor :aMFVALUE

  def initialize(aMFSNO = nil, aMFVALUE = nil)
    @aMFSNO = aMFSNO
    @aMFVALUE = aMFVALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HAMFResponse
#   result - ResultType
class MOD_HAMFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAMF
#   aMFSNO - (any)
class LST_HAMF
  attr_accessor :aMFSNO

  def initialize(aMFSNO = nil)
    @aMFSNO = aMFSNO
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAMFResponse
#   result - LST_HAMFType
class LST_HAMFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HAMF
#   aMFSNO - (any)
#   aMFVALUE - (any)
class CHK_HAMF
  attr_accessor :aMFSNO
  attr_accessor :aMFVALUE

  def initialize(aMFSNO = nil, aMFVALUE = nil)
    @aMFSNO = aMFSNO
    @aMFVALUE = aMFVALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HAMFResponse
#   result - ResultType
class CHK_HAMFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HK4
#   k4SNO - (any)
#   k4VALUE - (any)
class ADD_HK4
  attr_accessor :k4SNO
  attr_accessor :k4VALUE

  def initialize(k4SNO = nil, k4VALUE = nil)
    @k4SNO = k4SNO
    @k4VALUE = k4VALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HK4Response
#   result - ResultType
class ADD_HK4Response
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HK4
#   k4SNO - (any)
class RMV_HK4
  attr_accessor :k4SNO

  def initialize(k4SNO = nil)
    @k4SNO = k4SNO
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HK4Response
#   result - ResultType
class RMV_HK4Response
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HK4
#   k4SNO - (any)
#   k4VALUE - (any)
class MOD_HK4
  attr_accessor :k4SNO
  attr_accessor :k4VALUE

  def initialize(k4SNO = nil, k4VALUE = nil)
    @k4SNO = k4SNO
    @k4VALUE = k4VALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HK4Response
#   result - ResultType
class MOD_HK4Response
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HK4
#   k4SNO - (any)
class LST_HK4
  attr_accessor :k4SNO

  def initialize(k4SNO = nil)
    @k4SNO = k4SNO
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HK4Response
#   result - LST_HK4Type
class LST_HK4Response
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HK4
#   k4SNO - (any)
#   k4VALUE - (any)
class CHK_HK4
  attr_accessor :k4SNO
  attr_accessor :k4VALUE

  def initialize(k4SNO = nil, k4VALUE = nil)
    @k4SNO = k4SNO
    @k4VALUE = k4VALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HK4Response
#   result - ResultType
class CHK_HK4Response
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HKI
#   iMPI - (any)
#   k - (any)
#   k4SNO - (any)
#   oPSNO - (any)
#   aMFSNO - (any)
#   oPC - (any)
#   oPCK4SNO - (any)
class ADD_HKI
  attr_accessor :iMPI
  attr_accessor :k
  attr_accessor :k4SNO
  attr_accessor :oPSNO
  attr_accessor :aMFSNO
  attr_accessor :oPC
  attr_accessor :oPCK4SNO

  def initialize(iMPI = nil, k = nil, k4SNO = nil, oPSNO = nil, aMFSNO = nil, oPC = nil, oPCK4SNO = nil)
    @iMPI = iMPI
    @k = k
    @k4SNO = k4SNO
    @oPSNO = oPSNO
    @aMFSNO = aMFSNO
    @oPC = oPC
    @oPCK4SNO = oPCK4SNO
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HKIResponse
#   result - ResultType
class ADD_HKIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HKI
#   iMPI - (any)
class RMV_HKI
  attr_accessor :iMPI

  def initialize(iMPI = nil)
    @iMPI = iMPI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HKIResponse
#   result - ResultType
class RMV_HKIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HKI
#   iMPI - (any)
#   k - (any)
#   k4SNO - (any)
#   oPSNO - (any)
#   aMFSNO - (any)
#   oPC - (any)
#   oPCK4SNO - (any)
class MOD_HKI
  attr_accessor :iMPI
  attr_accessor :k
  attr_accessor :k4SNO
  attr_accessor :oPSNO
  attr_accessor :aMFSNO
  attr_accessor :oPC
  attr_accessor :oPCK4SNO

  def initialize(iMPI = nil, k = nil, k4SNO = nil, oPSNO = nil, aMFSNO = nil, oPC = nil, oPCK4SNO = nil)
    @iMPI = iMPI
    @k = k
    @k4SNO = k4SNO
    @oPSNO = oPSNO
    @aMFSNO = aMFSNO
    @oPC = oPC
    @oPCK4SNO = oPCK4SNO
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HKIResponse
#   result - ResultType
class MOD_HKIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HKI
#   iMPI - (any)
class LST_HKI
  attr_accessor :iMPI

  def initialize(iMPI = nil)
    @iMPI = iMPI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HKIResponse
#   result - LST_HKIType
class LST_HKIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HKI
#   iMPI - (any)
#   k - (any)
#   k4VALUE - (any)
class CHK_HKI
  attr_accessor :iMPI
  attr_accessor :k
  attr_accessor :k4VALUE

  def initialize(iMPI = nil, k = nil, k4VALUE = nil)
    @iMPI = iMPI
    @k = k
    @k4VALUE = k4VALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HKIResponse
#   result - ResultType
class CHK_HKIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HOPC
#   iMPI - (any)
#   oPC - (any)
#   oPCK4VALUE - (any)
class CHK_HOPC
  attr_accessor :iMPI
  attr_accessor :oPC
  attr_accessor :oPCK4VALUE

  def initialize(iMPI = nil, oPC = nil, oPCK4VALUE = nil)
    @iMPI = iMPI
    @oPC = oPC
    @oPCK4VALUE = oPCK4VALUE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HOPCResponse
#   result - ResultType
class CHK_HOPCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSUB
#   sUBID - (any)
#   iMPI - (any)
#   iMPU - (any)
#   iMPUTYPE - (any)
#   pBXUSERFLAG - (any)
class ADD_HSUB
  attr_accessor :sUBID
  attr_accessor :iMPI
  attr_accessor :iMPU
  attr_accessor :iMPUTYPE
  attr_accessor :pBXUSERFLAG

  def initialize(sUBID = nil, iMPI = nil, iMPU = nil, iMPUTYPE = nil, pBXUSERFLAG = nil)
    @sUBID = sUBID
    @iMPI = iMPI
    @iMPU = iMPU
    @iMPUTYPE = iMPUTYPE
    @pBXUSERFLAG = pBXUSERFLAG
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSUBResponse
#   result - ResultType
class ADD_HSUBResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSUB
#   sUBID - (any)
class RMV_HSUB
  attr_accessor :sUBID

  def initialize(sUBID = nil)
    @sUBID = sUBID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSUBResponse
#   result - ResultType
class RMV_HSUBResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSUBID
#   sUBID - (any)
#   nEWSUBID - (any)
class MOD_HSUBID
  attr_accessor :sUBID
  attr_accessor :nEWSUBID

  def initialize(sUBID = nil, nEWSUBID = nil)
    @sUBID = sUBID
    @nEWSUBID = nEWSUBID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSUBIDResponse
#   result - ResultType
class MOD_HSUBIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSUB
#   sUBID - (any)
#   iMPI - (any)
#   iMPU - (any)
class LST_HSUB
  attr_accessor :sUBID
  attr_accessor :iMPI
  attr_accessor :iMPU

  def initialize(sUBID = nil, iMPI = nil, iMPU = nil)
    @sUBID = sUBID
    @iMPI = iMPI
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSUBResponse
#   result - LST_HSUBType
class LST_HSUBResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HIMPI
#   sUBID - (any)
#   iMPI - (any)
#   iMPU - (any)
#   iMPUTYPE - (any)
class ADD_HIMPI
  attr_accessor :sUBID
  attr_accessor :iMPI
  attr_accessor :iMPU
  attr_accessor :iMPUTYPE

  def initialize(sUBID = nil, iMPI = nil, iMPU = nil, iMPUTYPE = nil)
    @sUBID = sUBID
    @iMPI = iMPI
    @iMPU = iMPU
    @iMPUTYPE = iMPUTYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HIMPIResponse
#   result - ResultType
class ADD_HIMPIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HIMPI
#   iMPI - (any)
class RMV_HIMPI
  attr_accessor :iMPI

  def initialize(iMPI = nil)
    @iMPI = iMPI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HIMPIResponse
#   result - ResultType
class RMV_HIMPIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HIMPI
#   iMPI - (any)
#   nEWIMPI - (any)
class MOD_HIMPI
  attr_accessor :iMPI
  attr_accessor :nEWIMPI

  def initialize(iMPI = nil, nEWIMPI = nil)
    @iMPI = iMPI
    @nEWIMPI = nEWIMPI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HIMPIResponse
#   result - ResultType
class MOD_HIMPIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HIMPU
#   iMPI - (any)
#   iMPU - (any)
#   iMPUTYPE - (any)
class ADD_HIMPU
  attr_accessor :iMPI
  attr_accessor :iMPU
  attr_accessor :iMPUTYPE

  def initialize(iMPI = nil, iMPU = nil, iMPUTYPE = nil)
    @iMPI = iMPI
    @iMPU = iMPU
    @iMPUTYPE = iMPUTYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HIMPUResponse
#   result - ResultType
class ADD_HIMPUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HIMPU
#   iMPU - (any)
class RMV_HIMPU
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HIMPUResponse
#   result - ResultType
class RMV_HIMPUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HIMPU
#   iMPU - (any)
#   nEWIMPU - (any)
#   nEWIMPUTYPE - (any)
class MOD_HIMPU
  attr_accessor :iMPU
  attr_accessor :nEWIMPU
  attr_accessor :nEWIMPUTYPE

  def initialize(iMPU = nil, nEWIMPU = nil, nEWIMPUTYPE = nil)
    @iMPU = iMPU
    @nEWIMPU = nEWIMPU
    @nEWIMPUTYPE = nEWIMPUTYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HIMPUResponse
#   result - ResultType
class MOD_HIMPUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HIMPUSHARE
#   iMPU - (any)
#   sHARED - (any)
class SET_HIMPUSHARE
  attr_accessor :iMPU
  attr_accessor :sHARED

  def initialize(iMPU = nil, sHARED = nil)
    @iMPU = iMPU
    @sHARED = sHARED
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HIMPUSHAREResponse
#   result - ResultType
class SET_HIMPUSHAREResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HIRS
#   iRSID - (any)
#   iMPULIST - (any)
#   pUSILIST - (any)
class SET_HIRS
  attr_accessor :iRSID
  attr_accessor :iMPULIST
  attr_accessor :pUSILIST

  def initialize(iRSID = nil, iMPULIST = nil, pUSILIST = nil)
    @iRSID = iRSID
    @iMPULIST = iMPULIST
    @pUSILIST = pUSILIST
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HIRSResponse
#   result - ResultType
class SET_HIRSResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HDEFIMPU
#   iRSID - (any)
#   iMPU - (any)
class SET_HDEFIMPU
  attr_accessor :iRSID
  attr_accessor :iMPU

  def initialize(iRSID = nil, iMPU = nil)
    @iRSID = iRSID
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HDEFIMPUResponse
#   result - ResultType
class SET_HDEFIMPUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HCHARGID
#   iMPI - (any)
#   pISI - (any)
#   cHARGTPLID - (any)
class SET_HCHARGID
  attr_accessor :iMPI
  attr_accessor :pISI
  attr_accessor :cHARGTPLID

  def initialize(iMPI = nil, pISI = nil, cHARGTPLID = nil)
    @iMPI = iMPI
    @pISI = pISI
    @cHARGTPLID = cHARGTPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HCHARGIDResponse
#   result - ResultType
class SET_HCHARGIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCHARGID
#   iMPI - (any)
#   pISI - (any)
class LST_HCHARGID
  attr_accessor :iMPI
  attr_accessor :pISI

  def initialize(iMPI = nil, pISI = nil)
    @iMPI = iMPI
    @pISI = pISI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCHARGIDResponse
#   result - LST_HCHARGIDType
class LST_HCHARGIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HBAR
#   iMPU - (any)
#   pUSI - (any)
#   bAR - (any)
class SET_HBAR
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :bAR

  def initialize(iMPU = nil, pUSI = nil, bAR = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @bAR = bAR
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HBARResponse
#   result - ResultType
class SET_HBARResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HBAR
#   iMPU - (any)
#   pUSI - (any)
class LST_HBAR
  attr_accessor :iMPU
  attr_accessor :pUSI

  def initialize(iMPU = nil, pUSI = nil)
    @iMPU = iMPU
    @pUSI = pUSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HBARResponse
#   result - LST_HBARType
class LST_HBARResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HREGAUTH
#   iMPU - (any)
#   rEGAUTH - (any)
class SET_HREGAUTH
  attr_accessor :iMPU
  attr_accessor :rEGAUTH

  def initialize(iMPU = nil, rEGAUTH = nil)
    @iMPU = iMPU
    @rEGAUTH = rEGAUTH
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HREGAUTHResponse
#   result - ResultType
class SET_HREGAUTHResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HREGAUTH
#   iMPU - (any)
class LST_HREGAUTH
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HREGAUTHResponse
#   result - LST_HREGAUTHType
class LST_HREGAUTHResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HVNTPLID
#   iMPU - (any)
#   vNTPLID - (any)
class SET_HVNTPLID
  attr_accessor :iMPU
  attr_accessor :vNTPLID

  def initialize(iMPU = nil, vNTPLID = nil)
    @iMPU = iMPU
    @vNTPLID = vNTPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HVNTPLIDResponse
#   result - ResultType
class SET_HVNTPLIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNTPLID
#   iMPU - (any)
class LST_HVNTPLID
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNTPLIDResponse
#   result - LST_HVNTPLIDType
class LST_HVNTPLIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HMEDIAID
#   iMPU - (any)
#   pUSI - (any)
#   mEDIAID - (any)
class SET_HMEDIAID
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :mEDIAID

  def initialize(iMPU = nil, pUSI = nil, mEDIAID = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @mEDIAID = mEDIAID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HMEDIAIDResponse
#   result - ResultType
class SET_HMEDIAIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HMEDIAID
#   iMPU - (any)
#   pUSI - (any)
class LST_HMEDIAID
  attr_accessor :iMPU
  attr_accessor :pUSI

  def initialize(iMPU = nil, pUSI = nil)
    @iMPU = iMPU
    @pUSI = pUSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HMEDIAIDResponse
#   result - LST_HMEDIAIDType
class LST_HMEDIAIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HMOCAP
#   sUBID - (any)
#   pISI - (any)
#   mCAP - (any)
#   oCAP - (any)
class SET_HMOCAP
  attr_accessor :sUBID
  attr_accessor :pISI
  attr_accessor :mCAP
  attr_accessor :oCAP

  def initialize(sUBID = nil, pISI = nil, mCAP = nil, oCAP = nil)
    @sUBID = sUBID
    @pISI = pISI
    @mCAP = mCAP
    @oCAP = oCAP
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HMOCAPResponse
#   result - ResultType
class SET_HMOCAPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HMOCAP
#   sUBID - (any)
#   pISI - (any)
class LST_HMOCAP
  attr_accessor :sUBID
  attr_accessor :pISI

  def initialize(sUBID = nil, pISI = nil)
    @sUBID = sUBID
    @pISI = pISI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HMOCAPResponse
#   result - LST_HMOCAPType
class LST_HMOCAPResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HEIA
#   iMPI - (any)
#   eIAFLAG - (any)
class SET_HEIA
  attr_accessor :iMPI
  attr_accessor :eIAFLAG

  def initialize(iMPI = nil, eIAFLAG = nil)
    @iMPI = iMPI
    @eIAFLAG = eIAFLAG
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HEIAResponse
#   result - ResultType
class SET_HEIAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HEIA
#   iMPI - (any)
class LST_HEIA
  attr_accessor :iMPI

  def initialize(iMPI = nil)
    @iMPI = iMPI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HEIAResponse
#   result - LST_HEIAType
class LST_HEIAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HEAA
#   iMPI - (any)
#   eAAFLAG - (any)
class SET_HEAA
  attr_accessor :iMPI
  attr_accessor :eAAFLAG

  def initialize(iMPI = nil, eAAFLAG = nil)
    @iMPI = iMPI
    @eAAFLAG = eAAFLAG
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HEAAResponse
#   result - ResultType
class SET_HEAAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HEAA
#   iMPI - (any)
class LST_HEAA
  attr_accessor :iMPI

  def initialize(iMPI = nil)
    @iMPI = iMPI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HEAAResponse
#   result - LST_HEAAType
class LST_HEAAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HAS
#   pUSI - (any)
#   aS - (any)
class SET_HAS
  attr_accessor :pUSI
  attr_accessor :aS

  def initialize(pUSI = nil, aS = nil)
    @pUSI = pUSI
    @aS = aS
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HASResponse
#   result - ResultType
class SET_HASResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAS
#   pUSI - (any)
class LST_HAS
  attr_accessor :pUSI

  def initialize(pUSI = nil)
    @pUSI = pUSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASResponse
#   result - LST_HASType
class LST_HASResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HVNCFLAG
#   iMPU - (any)
#   vNCFLAG - (any)
class SET_HVNCFLAG
  attr_accessor :iMPU
  attr_accessor :vNCFLAG

  def initialize(iMPU = nil, vNCFLAG = nil)
    @iMPU = iMPU
    @vNCFLAG = vNCFLAG
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HVNCFLAGResponse
#   result - ResultType
class SET_HVNCFLAGResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNCFLAG
#   iMPU - (any)
class LST_HVNCFLAG
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNCFLAGResponse
#   result - LST_HVNCFLAGType
class LST_HVNCFLAGResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HIFC
#   iMPU - (any)
#   pUSI - (any)
#   pRIORITY - (any)
#   pARTIND - (any)
#   sERVER - (any)
#   dEFHND - (any)
#   sERVINFO - (any)
#   tRIGPT - (any)
class ADD_HIFC
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :pRIORITY
  attr_accessor :pARTIND
  attr_accessor :sERVER
  attr_accessor :dEFHND
  attr_accessor :sERVINFO
  attr_accessor :tRIGPT

  def initialize(iMPU = nil, pUSI = nil, pRIORITY = nil, pARTIND = nil, sERVER = nil, dEFHND = nil, sERVINFO = nil, tRIGPT = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @pRIORITY = pRIORITY
    @pARTIND = pARTIND
    @sERVER = sERVER
    @dEFHND = dEFHND
    @sERVINFO = sERVINFO
    @tRIGPT = tRIGPT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HIFCResponse
#   result - ResultType
class ADD_HIFCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HIFC
#   iMPU - (any)
#   pUSI - (any)
#   pRIORITY - (any)
class RMV_HIFC
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :pRIORITY

  def initialize(iMPU = nil, pUSI = nil, pRIORITY = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @pRIORITY = pRIORITY
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HIFCResponse
#   result - ResultType
class RMV_HIFCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HIFC
#   iMPU - (any)
#   pUSI - (any)
#   pRIORITY - (any)
#   nEWPRI - (any)
#   pARTIND - (any)
#   sERVER - (any)
#   dEFHND - (any)
#   sERVINFO - (any)
#   tRIGPT - (any)
class MOD_HIFC
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :pRIORITY
  attr_accessor :nEWPRI
  attr_accessor :pARTIND
  attr_accessor :sERVER
  attr_accessor :dEFHND
  attr_accessor :sERVINFO
  attr_accessor :tRIGPT

  def initialize(iMPU = nil, pUSI = nil, pRIORITY = nil, nEWPRI = nil, pARTIND = nil, sERVER = nil, dEFHND = nil, sERVINFO = nil, tRIGPT = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @pRIORITY = pRIORITY
    @nEWPRI = nEWPRI
    @pARTIND = pARTIND
    @sERVER = sERVER
    @dEFHND = dEFHND
    @sERVINFO = sERVINFO
    @tRIGPT = tRIGPT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HIFCResponse
#   result - ResultType
class MOD_HIFCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HIFC
#   iMPU - (any)
#   pUSI - (any)
#   pRIORITY - (any)
class LST_HIFC
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :pRIORITY

  def initialize(iMPU = nil, pUSI = nil, pRIORITY = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @pRIORITY = pRIORITY
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HIFCResponse
#   result - LST_HIFCType
class LST_HIFCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HCAPSCSCF
#   sUBID - (any)
#   pISI - (any)
#   sCSCF - (any)
class ADD_HCAPSCSCF
  attr_accessor :sUBID
  attr_accessor :pISI
  attr_accessor :sCSCF

  def initialize(sUBID = nil, pISI = nil, sCSCF = nil)
    @sUBID = sUBID
    @pISI = pISI
    @sCSCF = sCSCF
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HCAPSCSCFResponse
#   result - ResultType
class ADD_HCAPSCSCFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HCAPSCSCF
#   sUBID - (any)
#   pISI - (any)
#   sCSCF - (any)
class RMV_HCAPSCSCF
  attr_accessor :sUBID
  attr_accessor :pISI
  attr_accessor :sCSCF

  def initialize(sUBID = nil, pISI = nil, sCSCF = nil)
    @sUBID = sUBID
    @pISI = pISI
    @sCSCF = sCSCF
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HCAPSCSCFResponse
#   result - ResultType
class RMV_HCAPSCSCFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCAPSCSCF
#   sUBID - (any)
#   pISI - (any)
class LST_HCAPSCSCF
  attr_accessor :sUBID
  attr_accessor :pISI

  def initialize(sUBID = nil, pISI = nil)
    @sUBID = sUBID
    @pISI = pISI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCAPSCSCFResponse
#   result - LST_HCAPSCSCFType
class LST_HCAPSCSCFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HSPSHARE
#   bASEIMPU - (any)
#   iMPU - (any)
class SET_HSPSHARE
  attr_accessor :bASEIMPU
  attr_accessor :iMPU

  def initialize(bASEIMPU = nil, iMPU = nil)
    @bASEIMPU = bASEIMPU
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HSPSHAREResponse
#   result - ResultType
class SET_HSPSHAREResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSPSHARE
#   iMPULIST - (any)
class RMV_HSPSHARE
  attr_accessor :iMPULIST

  def initialize(iMPULIST = nil)
    @iMPULIST = iMPULIST
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSPSHAREResponse
#   result - ResultType
class RMV_HSPSHAREResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSPSHARE
#   iMPU - (any)
class LST_HSPSHARE
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSPSHAREResponse
#   result - LST_HSPSHAREType
class LST_HSPSHAREResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}DRG_HUSER
#   iMPI - (any)
#   iMPU - (any)
class DRG_HUSER
  attr_accessor :iMPI
  attr_accessor :iMPU

  def initialize(iMPI = nil, iMPU = nil)
    @iMPI = iMPI
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}DRG_HUSERResponse
#   result - ResultType
class DRG_HUSERResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HDYNDATA
#   iMPI - (any)
#   iMPU - (any)
class LST_HDYNDATA
  attr_accessor :iMPI
  attr_accessor :iMPU

  def initialize(iMPI = nil, iMPU = nil)
    @iMPI = iMPI
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HDYNDATAResponse
#   result - LST_HDYNDATAType
class LST_HDYNDATAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASSUBDATA
#   iMPU - (any)
#   pUSI - (any)
class LST_HASSUBDATA
  attr_accessor :iMPU
  attr_accessor :pUSI

  def initialize(iMPU = nil, pUSI = nil)
    @iMPU = iMPU
    @pUSI = pUSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASSUBDATAResponse
#   result - LST_HASSUBDATAType
class LST_HASSUBDATAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HPSI
#   pISI - (any)
#   pUSI - (any)
#   pUSITYPE - (any)
class ADD_HPSI
  attr_accessor :pISI
  attr_accessor :pUSI
  attr_accessor :pUSITYPE

  def initialize(pISI = nil, pUSI = nil, pUSITYPE = nil)
    @pISI = pISI
    @pUSI = pUSI
    @pUSITYPE = pUSITYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HPSIResponse
#   result - ResultType
class ADD_HPSIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HPSI
#   pISI - (any)
#   pUSI - (any)
class RMV_HPSI
  attr_accessor :pISI
  attr_accessor :pUSI

  def initialize(pISI = nil, pUSI = nil)
    @pISI = pISI
    @pUSI = pUSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HPSIResponse
#   result - ResultType
class RMV_HPSIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPSI
#   pISI - (any)
#   pUSI - (any)
class LST_HPSI
  attr_accessor :pISI
  attr_accessor :pUSI

  def initialize(pISI = nil, pUSI = nil)
    @pISI = pISI
    @pUSI = pUSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPSIResponse
#   result - LST_HPSIType
class LST_HPSIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HHDAINF
#   iMPI - (any)
#   hUSERNAME - (any)
#   pWD - (any)
class ADD_HHDAINF
  attr_accessor :iMPI
  attr_accessor :hUSERNAME
  attr_accessor :pWD

  def initialize(iMPI = nil, hUSERNAME = nil, pWD = nil)
    @iMPI = iMPI
    @hUSERNAME = hUSERNAME
    @pWD = pWD
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HHDAINFResponse
#   result - ResultType
class ADD_HHDAINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HHDAINF
#   iMPI - (any)
class RMV_HHDAINF
  attr_accessor :iMPI

  def initialize(iMPI = nil)
    @iMPI = iMPI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HHDAINFResponse
#   result - ResultType
class RMV_HHDAINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HHDAINF
#   iMPI - (any)
#   hUSERNAME - (any)
#   pWD - (any)
class MOD_HHDAINF
  attr_accessor :iMPI
  attr_accessor :hUSERNAME
  attr_accessor :pWD

  def initialize(iMPI = nil, hUSERNAME = nil, pWD = nil)
    @iMPI = iMPI
    @hUSERNAME = hUSERNAME
    @pWD = pWD
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HHDAINFResponse
#   result - ResultType
class MOD_HHDAINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HHDAINF
#   iMPI - (any)
#   hUSERNAME - (any)
class LST_HHDAINF
  attr_accessor :iMPI
  attr_accessor :hUSERNAME

  def initialize(iMPI = nil, hUSERNAME = nil)
    @iMPI = iMPI
    @hUSERNAME = hUSERNAME
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HHDAINFResponse
#   result - LST_HHDAINFType
class LST_HHDAINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HHDAPWD
#   hUSERNAME - (any)
#   pWD - (any)
class CHK_HHDAPWD
  attr_accessor :hUSERNAME
  attr_accessor :pWD

  def initialize(hUSERNAME = nil, pWD = nil)
    @hUSERNAME = hUSERNAME
    @pWD = pWD
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HHDAPWDResponse
#   result - ResultType
class CHK_HHDAPWDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HIMPUTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   vNTPLID - (any)
#   nATPLID - (any)
#   bAR - (any)
#   rEGAUTH - (any)
#   vNCFLAG - (any)
#   nNCFLAG - (any)
#   sERPRVID - (any)
#   lRI - (any)
#   cOMMENT - (any)
class ADD_HIMPUTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :vNTPLID
  attr_accessor :nATPLID
  attr_accessor :bAR
  attr_accessor :rEGAUTH
  attr_accessor :vNCFLAG
  attr_accessor :nNCFLAG
  attr_accessor :sERPRVID
  attr_accessor :lRI
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, vNTPLID = nil, nATPLID = nil, bAR = nil, rEGAUTH = nil, vNCFLAG = nil, nNCFLAG = nil, sERPRVID = nil, lRI = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @vNTPLID = vNTPLID
    @nATPLID = nATPLID
    @bAR = bAR
    @rEGAUTH = rEGAUTH
    @vNCFLAG = vNCFLAG
    @nNCFLAG = nNCFLAG
    @sERPRVID = sERPRVID
    @lRI = lRI
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HIMPUTPLResponse
#   result - ResultType
class ADD_HIMPUTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HIMPUTPL
#   tPLID - (any)
class RMV_HIMPUTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HIMPUTPLResponse
#   result - ResultType
class RMV_HIMPUTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HIMPUTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   vNTPLID - (any)
#   nATPLID - (any)
#   bAR - (any)
#   rEGAUTH - (any)
#   vNCFLAG - (any)
#   nNCFLAG - (any)
#   sERPRVID - (any)
#   lRI - (any)
#   cOMMENT - (any)
class MOD_HIMPUTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :vNTPLID
  attr_accessor :nATPLID
  attr_accessor :bAR
  attr_accessor :rEGAUTH
  attr_accessor :vNCFLAG
  attr_accessor :nNCFLAG
  attr_accessor :sERPRVID
  attr_accessor :lRI
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, vNTPLID = nil, nATPLID = nil, bAR = nil, rEGAUTH = nil, vNCFLAG = nil, nNCFLAG = nil, sERPRVID = nil, lRI = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @vNTPLID = vNTPLID
    @nATPLID = nATPLID
    @bAR = bAR
    @rEGAUTH = rEGAUTH
    @vNCFLAG = vNCFLAG
    @nNCFLAG = nNCFLAG
    @sERPRVID = sERPRVID
    @lRI = lRI
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HIMPUTPLResponse
#   result - ResultType
class MOD_HIMPUTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HIMPUTPL
#   tPLID - (any)
class LST_HIMPUTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HIMPUTPLResponse
#   result - LST_HIMPUTPLType
class LST_HIMPUTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HPUSITPL
#   tPLID - (any)
#   tPLNAME - (any)
#   aS - (any)
#   bAR - (any)
#   aCTSTATE - (any)
#   sERPRVID - (any)
#   lRI - (any)
#   cOMMENT - (any)
class ADD_HPUSITPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :aS
  attr_accessor :bAR
  attr_accessor :aCTSTATE
  attr_accessor :sERPRVID
  attr_accessor :lRI
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, aS = nil, bAR = nil, aCTSTATE = nil, sERPRVID = nil, lRI = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @aS = aS
    @bAR = bAR
    @aCTSTATE = aCTSTATE
    @sERPRVID = sERPRVID
    @lRI = lRI
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HPUSITPLResponse
#   result - ResultType
class ADD_HPUSITPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HPUSITPL
#   tPLID - (any)
class RMV_HPUSITPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HPUSITPLResponse
#   result - ResultType
class RMV_HPUSITPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HPUSITPL
#   tPLID - (any)
#   tPLNAME - (any)
#   aS - (any)
#   bAR - (any)
#   aCTSTATE - (any)
#   sERPRVID - (any)
#   lRI - (any)
#   cOMMENT - (any)
class MOD_HPUSITPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :aS
  attr_accessor :bAR
  attr_accessor :aCTSTATE
  attr_accessor :sERPRVID
  attr_accessor :lRI
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, aS = nil, bAR = nil, aCTSTATE = nil, sERPRVID = nil, lRI = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @aS = aS
    @bAR = bAR
    @aCTSTATE = aCTSTATE
    @sERPRVID = sERPRVID
    @lRI = lRI
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HPUSITPLResponse
#   result - ResultType
class MOD_HPUSITPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPUSITPL
#   tPLID - (any)
class LST_HPUSITPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPUSITPLResponse
#   result - LST_HPUSITPLType
class LST_HPUSITPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HIFCTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   pRIORITY - (any)
#   pARTIND - (any)
#   sERVER - (any)
#   dEFHND - (any)
#   sERVINFO - (any)
#   tRIGPT - (any)
#   cOMMENT - (any)
class ADD_HIFCTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :pRIORITY
  attr_accessor :pARTIND
  attr_accessor :sERVER
  attr_accessor :dEFHND
  attr_accessor :sERVINFO
  attr_accessor :tRIGPT
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, pRIORITY = nil, pARTIND = nil, sERVER = nil, dEFHND = nil, sERVINFO = nil, tRIGPT = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @pRIORITY = pRIORITY
    @pARTIND = pARTIND
    @sERVER = sERVER
    @dEFHND = dEFHND
    @sERVINFO = sERVINFO
    @tRIGPT = tRIGPT
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HIFCTPLResponse
#   result - ResultType
class ADD_HIFCTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HIFCTPL
#   tPLID - (any)
class RMV_HIFCTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HIFCTPLResponse
#   result - ResultType
class RMV_HIFCTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HIFCTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   pRIORITY - (any)
#   pARTIND - (any)
#   sERVER - (any)
#   dEFHND - (any)
#   sERVINFO - (any)
#   tRIGPT - (any)
#   cOMMENT - (any)
class MOD_HIFCTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :pRIORITY
  attr_accessor :pARTIND
  attr_accessor :sERVER
  attr_accessor :dEFHND
  attr_accessor :sERVINFO
  attr_accessor :tRIGPT
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, pRIORITY = nil, pARTIND = nil, sERVER = nil, dEFHND = nil, sERVINFO = nil, tRIGPT = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @pRIORITY = pRIORITY
    @pARTIND = pARTIND
    @sERVER = sERVER
    @dEFHND = dEFHND
    @sERVINFO = sERVINFO
    @tRIGPT = tRIGPT
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HIFCTPLResponse
#   result - ResultType
class MOD_HIFCTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HIFCTPL
#   tPLID - (any)
class LST_HIFCTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HIFCTPLResponse
#   result - LST_HIFCTPLType
class LST_HIFCTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSPTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   mEDIAID - (any)
#   iFCLIST - (any)
#   sIFCLIST - (any)
#   cOMMENT - (any)
class ADD_HSPTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :mEDIAID
  attr_accessor :iFCLIST
  attr_accessor :sIFCLIST
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, mEDIAID = nil, iFCLIST = nil, sIFCLIST = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @mEDIAID = mEDIAID
    @iFCLIST = iFCLIST
    @sIFCLIST = sIFCLIST
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSPTPLResponse
#   result - ResultType
class ADD_HSPTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSPTPL
#   tPLID - (any)
class RMV_HSPTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSPTPLResponse
#   result - ResultType
class RMV_HSPTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSPTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   mEDIAID - (any)
#   iFCLIST - (any)
#   sIFCLIST - (any)
#   cOMMENT - (any)
class MOD_HSPTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :mEDIAID
  attr_accessor :iFCLIST
  attr_accessor :sIFCLIST
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, mEDIAID = nil, iFCLIST = nil, sIFCLIST = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @mEDIAID = mEDIAID
    @iFCLIST = iFCLIST
    @sIFCLIST = sIFCLIST
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSPTPLResponse
#   result - ResultType
class MOD_HSPTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSPTPL
#   tPLID - (any)
class LST_HSPTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSPTPLResponse
#   result - LST_HSPTPLType
class LST_HSPTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HAKATPL
#   tPLID - (any)
#   tPLNAME - (any)
#   k4SNO - (any)
#   oPSNO - (any)
#   aMFSNO - (any)
#   oPC - (any)
#   oPCK4SNO - (any)
#   cOMMENT - (any)
class ADD_HAKATPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :k4SNO
  attr_accessor :oPSNO
  attr_accessor :aMFSNO
  attr_accessor :oPC
  attr_accessor :oPCK4SNO
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, k4SNO = nil, oPSNO = nil, aMFSNO = nil, oPC = nil, oPCK4SNO = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @k4SNO = k4SNO
    @oPSNO = oPSNO
    @aMFSNO = aMFSNO
    @oPC = oPC
    @oPCK4SNO = oPCK4SNO
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HAKATPLResponse
#   result - ResultType
class ADD_HAKATPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HAKATPL
#   tPLID - (any)
class RMV_HAKATPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HAKATPLResponse
#   result - ResultType
class RMV_HAKATPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HAKATPL
#   tPLID - (any)
#   tPLNAME - (any)
#   k4SNO - (any)
#   oPSNO - (any)
#   aMFSNO - (any)
#   oPC - (any)
#   oPCK4SNO - (any)
#   cOMMENT - (any)
class MOD_HAKATPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :k4SNO
  attr_accessor :oPSNO
  attr_accessor :aMFSNO
  attr_accessor :oPC
  attr_accessor :oPCK4SNO
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, k4SNO = nil, oPSNO = nil, aMFSNO = nil, oPC = nil, oPCK4SNO = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @k4SNO = k4SNO
    @oPSNO = oPSNO
    @aMFSNO = aMFSNO
    @oPC = oPC
    @oPCK4SNO = oPCK4SNO
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HAKATPLResponse
#   result - ResultType
class MOD_HAKATPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAKATPL
#   tPLID - (any)
class LST_HAKATPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAKATPLResponse
#   result - LST_HAKATPLType
class LST_HAKATPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HCAPTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   mCAP - (any)
#   oCAP - (any)
#   sCSCFLIST - (any)
#   cOMMENT - (any)
class ADD_HCAPTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :mCAP
  attr_accessor :oCAP
  attr_accessor :sCSCFLIST
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, mCAP = nil, oCAP = nil, sCSCFLIST = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @mCAP = mCAP
    @oCAP = oCAP
    @sCSCFLIST = sCSCFLIST
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HCAPTPLResponse
#   result - ResultType
class ADD_HCAPTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HCAPTPL
#   tPLID - (any)
class RMV_HCAPTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HCAPTPLResponse
#   result - ResultType
class RMV_HCAPTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HCAPTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   mCAP - (any)
#   oCAP - (any)
#   sCSCFLIST - (any)
#   cOMMENT - (any)
class MOD_HCAPTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :mCAP
  attr_accessor :oCAP
  attr_accessor :sCSCFLIST
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, mCAP = nil, oCAP = nil, sCSCFLIST = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @mCAP = mCAP
    @oCAP = oCAP
    @sCSCFLIST = sCSCFLIST
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HCAPTPLResponse
#   result - ResultType
class MOD_HCAPTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCAPTPL
#   tPLID - (any)
class LST_HCAPTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCAPTPLResponse
#   result - LST_HCAPTPLType
class LST_HCAPTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HTPLINF
#   tPLTYPE - (any)
class LST_HTPLINF
  attr_accessor :tPLTYPE

  def initialize(tPLTYPE = nil)
    @tPLTYPE = tPLTYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HTPLINFResponse
#   result - LST_HTPLINFType
class LST_HTPLINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLIFC
#   iMPU - (any)
#   pUSI - (any)
#   iFCTPLID - (any)
class ADD_HTPLIFC
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :iFCTPLID

  def initialize(iMPU = nil, pUSI = nil, iFCTPLID = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @iFCTPLID = iFCTPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLIFCResponse
#   result - ResultType
class ADD_HTPLIFCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLIMPU
#   iMPI - (any)
#   iMPU - (any)
#   iMPUTYPE - (any)
#   sPTPLID - (any)
#   iMPUTPLID - (any)
class ADD_HTPLIMPU
  attr_accessor :iMPI
  attr_accessor :iMPU
  attr_accessor :iMPUTYPE
  attr_accessor :sPTPLID
  attr_accessor :iMPUTPLID

  def initialize(iMPI = nil, iMPU = nil, iMPUTYPE = nil, sPTPLID = nil, iMPUTPLID = nil)
    @iMPI = iMPI
    @iMPU = iMPU
    @iMPUTYPE = iMPUTYPE
    @sPTPLID = sPTPLID
    @iMPUTPLID = iMPUTPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLIMPUResponse
#   result - ResultType
class ADD_HTPLIMPUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLKI
#   iMPI - (any)
#   k - (any)
#   aKATPLID - (any)
class ADD_HTPLKI
  attr_accessor :iMPI
  attr_accessor :k
  attr_accessor :aKATPLID

  def initialize(iMPI = nil, k = nil, aKATPLID = nil)
    @iMPI = iMPI
    @k = k
    @aKATPLID = aKATPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLKIResponse
#   result - ResultType
class ADD_HTPLKIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLPSI
#   pISI - (any)
#   pUSI - (any)
#   pUSITYPE - (any)
#   cAPTPLID - (any)
#   cHARGTPLID - (any)
#   sPTPLID - (any)
#   pUSITPLID - (any)
class ADD_HTPLPSI
  attr_accessor :pISI
  attr_accessor :pUSI
  attr_accessor :pUSITYPE
  attr_accessor :cAPTPLID
  attr_accessor :cHARGTPLID
  attr_accessor :sPTPLID
  attr_accessor :pUSITPLID

  def initialize(pISI = nil, pUSI = nil, pUSITYPE = nil, cAPTPLID = nil, cHARGTPLID = nil, sPTPLID = nil, pUSITPLID = nil)
    @pISI = pISI
    @pUSI = pUSI
    @pUSITYPE = pUSITYPE
    @cAPTPLID = cAPTPLID
    @cHARGTPLID = cHARGTPLID
    @sPTPLID = sPTPLID
    @pUSITPLID = pUSITPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLPSIResponse
#   result - ResultType
class ADD_HTPLPSIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLPUSI
#   pISI - (any)
#   pUSI - (any)
#   pUSITYPE - (any)
#   sPTPLID - (any)
#   pUSITPLID - (any)
class ADD_HTPLPUSI
  attr_accessor :pISI
  attr_accessor :pUSI
  attr_accessor :pUSITYPE
  attr_accessor :sPTPLID
  attr_accessor :pUSITPLID

  def initialize(pISI = nil, pUSI = nil, pUSITYPE = nil, sPTPLID = nil, pUSITPLID = nil)
    @pISI = pISI
    @pUSI = pUSI
    @pUSITYPE = pUSITYPE
    @sPTPLID = sPTPLID
    @pUSITPLID = pUSITPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLPUSIResponse
#   result - ResultType
class ADD_HTPLPUSIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLSUB
#   sUBID - (any)
#   iMPI - (any)
#   iMPU - (any)
#   iMPUTYPE - (any)
#   cAPTPLID - (any)
#   cHARGTPLID - (any)
#   sPTPLID - (any)
#   iMPUTPLID - (any)
#   pBXUSERFLAG - (any)
class ADD_HTPLSUB
  attr_accessor :sUBID
  attr_accessor :iMPI
  attr_accessor :iMPU
  attr_accessor :iMPUTYPE
  attr_accessor :cAPTPLID
  attr_accessor :cHARGTPLID
  attr_accessor :sPTPLID
  attr_accessor :iMPUTPLID
  attr_accessor :pBXUSERFLAG

  def initialize(sUBID = nil, iMPI = nil, iMPU = nil, iMPUTYPE = nil, cAPTPLID = nil, cHARGTPLID = nil, sPTPLID = nil, iMPUTPLID = nil, pBXUSERFLAG = nil)
    @sUBID = sUBID
    @iMPI = iMPI
    @iMPU = iMPU
    @iMPUTYPE = iMPUTYPE
    @cAPTPLID = cAPTPLID
    @cHARGTPLID = cHARGTPLID
    @sPTPLID = sPTPLID
    @iMPUTPLID = iMPUTPLID
    @pBXUSERFLAG = pBXUSERFLAG
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLSUBResponse
#   result - ResultType
class ADD_HTPLSUBResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLIMPI
#   sUBID - (any)
#   iMPI - (any)
#   iMPU - (any)
#   iMPUTYPE - (any)
#   cHARGTPLID - (any)
#   sPTPLID - (any)
#   iMPUTPLID - (any)
class ADD_HTPLIMPI
  attr_accessor :sUBID
  attr_accessor :iMPI
  attr_accessor :iMPU
  attr_accessor :iMPUTYPE
  attr_accessor :cHARGTPLID
  attr_accessor :sPTPLID
  attr_accessor :iMPUTPLID

  def initialize(sUBID = nil, iMPI = nil, iMPU = nil, iMPUTYPE = nil, cHARGTPLID = nil, sPTPLID = nil, iMPUTPLID = nil)
    @sUBID = sUBID
    @iMPI = iMPI
    @iMPU = iMPU
    @iMPUTYPE = iMPUTYPE
    @cHARGTPLID = cHARGTPLID
    @sPTPLID = sPTPLID
    @iMPUTPLID = iMPUTPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLIMPIResponse
#   result - ResultType
class ADD_HTPLIMPIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPSIDYND
#   pISI - (any)
#   pUSI - (any)
class LST_HPSIDYND
  attr_accessor :pISI
  attr_accessor :pUSI

  def initialize(pISI = nil, pUSI = nil)
    @pISI = pISI
    @pUSI = pUSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPSIDYNDResponse
#   result - LST_HPSIDYNDType
class LST_HPSIDYNDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAUTHINF
#   iMPI - (any)
class LST_HAUTHINF
  attr_accessor :iMPI

  def initialize(iMPI = nil)
    @iMPI = iMPI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAUTHINFResponse
#   result - LST_HAUTHINFType
class LST_HAUTHINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HNATPLID
#   iMPU - (any)
#   nATPLID - (any)
class SET_HNATPLID
  attr_accessor :iMPU
  attr_accessor :nATPLID

  def initialize(iMPU = nil, nATPLID = nil)
    @iMPU = iMPU
    @nATPLID = nATPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HNATPLIDResponse
#   result - ResultType
class SET_HNATPLIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNATPLID
#   iMPU - (any)
class LST_HNATPLID
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNATPLIDResponse
#   result - LST_HNATPLIDType
class LST_HNATPLIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HNNCFLAG
#   iMPU - (any)
#   nNCFLAG - (any)
class SET_HNNCFLAG
  attr_accessor :iMPU
  attr_accessor :nNCFLAG

  def initialize(iMPU = nil, nNCFLAG = nil)
    @iMPU = iMPU
    @nNCFLAG = nNCFLAG
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HNNCFLAGResponse
#   result - ResultType
class SET_HNNCFLAGResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNNCFLAG
#   iMPU - (any)
class LST_HNNCFLAG
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNNCFLAGResponse
#   result - LST_HNNCFLAGType
class LST_HNNCFLAGResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HNNRLI
#   iMPU - (any)
#   rLINDEX - (any)
#   rLI - (any)
#   rLT - (any)
class ADD_HNNRLI
  attr_accessor :iMPU
  attr_accessor :rLINDEX
  attr_accessor :rLI
  attr_accessor :rLT

  def initialize(iMPU = nil, rLINDEX = nil, rLI = nil, rLT = nil)
    @iMPU = iMPU
    @rLINDEX = rLINDEX
    @rLI = rLI
    @rLT = rLT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HNNRLIResponse
#   result - ResultType
class ADD_HNNRLIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HNNRLI
#   iMPU - (any)
#   rLINDEX - (any)
class RMV_HNNRLI
  attr_accessor :iMPU
  attr_accessor :rLINDEX

  def initialize(iMPU = nil, rLINDEX = nil)
    @iMPU = iMPU
    @rLINDEX = rLINDEX
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HNNRLIResponse
#   result - ResultType
class RMV_HNNRLIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HNNRLI
#   iMPU - (any)
#   rLINDEX - (any)
#   rLI - (any)
#   rLT - (any)
#   sETDRLI - (any)
class MOD_HNNRLI
  attr_accessor :iMPU
  attr_accessor :rLINDEX
  attr_accessor :rLI
  attr_accessor :rLT
  attr_accessor :sETDRLI

  def initialize(iMPU = nil, rLINDEX = nil, rLI = nil, rLT = nil, sETDRLI = nil)
    @iMPU = iMPU
    @rLINDEX = rLINDEX
    @rLI = rLI
    @rLT = rLT
    @sETDRLI = sETDRLI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HNNRLIResponse
#   result - ResultType
class MOD_HNNRLIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNNRLI
#   iMPU - (any)
#   rLINDEX - (any)
class LST_HNNRLI
  attr_accessor :iMPU
  attr_accessor :rLINDEX

  def initialize(iMPU = nil, rLINDEX = nil)
    @iMPU = iMPU
    @rLINDEX = rLINDEX
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNNRLIResponse
#   result - LST_HNNRLIType
class LST_HNNRLIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HASSPID
#   iMPU - (any)
#   pUSI - (any)
#   aSSPID - (any)
class ADD_HASSPID
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :aSSPID

  def initialize(iMPU = nil, pUSI = nil, aSSPID = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @aSSPID = aSSPID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HASSPIDResponse
#   result - ResultType
class ADD_HASSPIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HASSPID
#   iMPU - (any)
#   pUSI - (any)
#   aSSPID - (any)
class RMV_HASSPID
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :aSSPID

  def initialize(iMPU = nil, pUSI = nil, aSSPID = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @aSSPID = aSSPID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HASSPIDResponse
#   result - ResultType
class RMV_HASSPIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASSPID
#   iMPU - (any)
#   pUSI - (any)
class LST_HASSPID
  attr_accessor :iMPU
  attr_accessor :pUSI

  def initialize(iMPU = nil, pUSI = nil)
    @iMPU = iMPU
    @pUSI = pUSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASSPIDResponse
#   result - LST_HASSPIDType
class LST_HASSPIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HALIASPU
#   aLIASID - (any)
#   iMPULIST - (any)
class SET_HALIASPU
  attr_accessor :aLIASID
  attr_accessor :iMPULIST

  def initialize(aLIASID = nil, iMPULIST = nil)
    @aLIASID = aLIASID
    @iMPULIST = iMPULIST
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HALIASPUResponse
#   result - ResultType
class SET_HALIASPUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HREPDATA
#   iMPU - (any)
#   pUSI - (any)
#   rEPDATA - (any)
#   sERVICEID - (any)
#   sERVICEDATA - (any)
#   rEPTYPE - (any)
class SET_HREPDATA
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :rEPDATA
  attr_accessor :sERVICEID
  attr_accessor :sERVICEDATA
  attr_accessor :rEPTYPE

  def initialize(iMPU = nil, pUSI = nil, rEPDATA = nil, sERVICEID = nil, sERVICEDATA = nil, rEPTYPE = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @rEPDATA = rEPDATA
    @sERVICEID = sERVICEID
    @sERVICEDATA = sERVICEDATA
    @rEPTYPE = rEPTYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HREPDATAResponse
#   result - ResultType
class SET_HREPDATAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSRVIND
#   iMPU - (any)
#   pUSI - (any)
#   rEPTYPE - (any)
class LST_HSRVIND
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :rEPTYPE

  def initialize(iMPU = nil, pUSI = nil, rEPTYPE = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @rEPTYPE = rEPTYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSRVINDResponse
#   result - LST_HSRVINDType
class LST_HSRVINDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HREPDATA
#   iMPU - (any)
#   pUSI - (any)
#   rEPTYPE - (any)
#   sRVIND - (any)
class LST_HREPDATA
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :rEPTYPE
  attr_accessor :sRVIND

  def initialize(iMPU = nil, pUSI = nil, rEPTYPE = nil, sRVIND = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @rEPTYPE = rEPTYPE
    @sRVIND = sRVIND
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HREPDATAResponse
#   result - LST_HREPDATAType
class LST_HREPDATAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HDALI
#   iMPU - (any)
class LST_HDALI
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HDALIResponse
#   result - LST_HDALIType
class LST_HDALIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HIMSI
#   iMPI - (any)
#   iMSI - (any)
#   iSDN - (any)
class ADD_HIMSI
  attr_accessor :iMPI
  attr_accessor :iMSI
  attr_accessor :iSDN

  def initialize(iMPI = nil, iMSI = nil, iSDN = nil)
    @iMPI = iMPI
    @iMSI = iMSI
    @iSDN = iSDN
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HIMSIResponse
#   result - ResultType
class ADD_HIMSIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HIMSI
#   iMSI - (any)
class RMV_HIMSI
  attr_accessor :iMSI

  def initialize(iMSI = nil)
    @iMSI = iMSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HIMSIResponse
#   result - ResultType
class RMV_HIMSIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HIMSI
#   iMSI - (any)
#   nEWIMSI - (any)
class MOD_HIMSI
  attr_accessor :iMSI
  attr_accessor :nEWIMSI

  def initialize(iMSI = nil, nEWIMSI = nil)
    @iMSI = iMSI
    @nEWIMSI = nEWIMSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HIMSIResponse
#   result - ResultType
class MOD_HIMSIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HISDN
#   iMSI - (any)
#   iSDN - (any)
class ADD_HISDN
  attr_accessor :iMSI
  attr_accessor :iSDN

  def initialize(iMSI = nil, iSDN = nil)
    @iMSI = iMSI
    @iSDN = iSDN
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HISDNResponse
#   result - ResultType
class ADD_HISDNResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HISDN
#   iSDN - (any)
class RMV_HISDN
  attr_accessor :iSDN

  def initialize(iSDN = nil)
    @iSDN = iSDN
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HISDNResponse
#   result - ResultType
class RMV_HISDNResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HISDN
#   iSDN - (any)
#   nEWISDN - (any)
class MOD_HISDN
  attr_accessor :iSDN
  attr_accessor :nEWISDN

  def initialize(iSDN = nil, nEWISDN = nil)
    @iSDN = iSDN
    @nEWISDN = nEWISDN
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HISDNResponse
#   result - ResultType
class MOD_HISDNResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HMSID
#   iMPI - (any)
#   iMSI - (any)
#   iSDN - (any)
class LST_HMSID
  attr_accessor :iMPI
  attr_accessor :iMSI
  attr_accessor :iSDN

  def initialize(iMPI = nil, iMSI = nil, iSDN = nil)
    @iMPI = iMPI
    @iMSI = iMSI
    @iSDN = iSDN
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HMSIDResponse
#   result - LST_HMSIDType
class LST_HMSIDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HASSOC
#   iMPI - (any)
#   iMSI - (any)
class ADD_HASSOC
  attr_accessor :iMPI
  attr_accessor :iMSI

  def initialize(iMPI = nil, iMSI = nil)
    @iMPI = iMPI
    @iMSI = iMSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HASSOCResponse
#   result - ResultType
class ADD_HASSOCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HASSOC
#   iMPI - (any)
#   iMSI - (any)
class RMV_HASSOC
  attr_accessor :iMPI
  attr_accessor :iMSI

  def initialize(iMPI = nil, iMSI = nil)
    @iMPI = iMPI
    @iMSI = iMSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HASSOCResponse
#   result - ResultType
class RMV_HASSOCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASSOC
#   iMPI - (any)
#   iMSI - (any)
class LST_HASSOC
  attr_accessor :iMPI
  attr_accessor :iMSI

  def initialize(iMPI = nil, iMSI = nil)
    @iMPI = iMPI
    @iMSI = iMSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASSOCResponse
#   result - LST_HASSOCType
class LST_HASSOCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HNBAINF
#   iMPI - (any)
#   lINEIDIDX - (any)
#   lINEID - (any)
class ADD_HNBAINF
  attr_accessor :iMPI
  attr_accessor :lINEIDIDX
  attr_accessor :lINEID

  def initialize(iMPI = nil, lINEIDIDX = nil, lINEID = nil)
    @iMPI = iMPI
    @lINEIDIDX = lINEIDIDX
    @lINEID = lINEID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HNBAINFResponse
#   result - ResultType
class ADD_HNBAINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HNBAINF
#   iMPI - (any)
#   lINEIDIDX - (any)
class RMV_HNBAINF
  attr_accessor :iMPI
  attr_accessor :lINEIDIDX

  def initialize(iMPI = nil, lINEIDIDX = nil)
    @iMPI = iMPI
    @lINEIDIDX = lINEIDIDX
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HNBAINFResponse
#   result - ResultType
class RMV_HNBAINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNBAINF
#   iMPI - (any)
class LST_HNBAINF
  attr_accessor :iMPI

  def initialize(iMPI = nil)
    @iMPI = iMPI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNBAINFResponse
#   result - LST_HNBAINFType
class LST_HNBAINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HCHGTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   pECF - (any)
#   sECF - (any)
#   pCCF - (any)
#   sCCF - (any)
#   cOMMENT - (any)
class ADD_HCHGTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :pECF
  attr_accessor :sECF
  attr_accessor :pCCF
  attr_accessor :sCCF
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, pECF = nil, sECF = nil, pCCF = nil, sCCF = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @pECF = pECF
    @sECF = sECF
    @pCCF = pCCF
    @sCCF = sCCF
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HCHGTPLResponse
#   result - ResultType
class ADD_HCHGTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HCHGTPL
#   tPLID - (any)
class RMV_HCHGTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HCHGTPLResponse
#   result - ResultType
class RMV_HCHGTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HCHGTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   pECF - (any)
#   sECF - (any)
#   pCCF - (any)
#   sCCF - (any)
#   cOMMENT - (any)
class MOD_HCHGTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :pECF
  attr_accessor :sECF
  attr_accessor :pCCF
  attr_accessor :sCCF
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, pECF = nil, sECF = nil, pCCF = nil, sCCF = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @pECF = pECF
    @sECF = sECF
    @pCCF = pCCF
    @sCCF = sCCF
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HCHGTPLResponse
#   result - ResultType
class MOD_HCHGTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCHGTPL
#   tPLID - (any)
class LST_HCHGTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCHGTPLResponse
#   result - LST_HCHGTPLType
class LST_HCHGTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HVNTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   mATCHTYPE - (any)
#   vN - (any)
#   vNTYPE - (any)
#   cOMMENT - (any)
class ADD_HVNTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :mATCHTYPE
  attr_accessor :vN
  attr_accessor :vNTYPE
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, mATCHTYPE = nil, vN = nil, vNTYPE = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @mATCHTYPE = mATCHTYPE
    @vN = vN
    @vNTYPE = vNTYPE
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HVNTPLResponse
#   result - ResultType
class ADD_HVNTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HVNTPL
#   tPLID - (any)
class RMV_HVNTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HVNTPLResponse
#   result - ResultType
class RMV_HVNTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HVNTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   mATCHTYPE - (any)
#   cOMMENT - (any)
class MOD_HVNTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :mATCHTYPE
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, mATCHTYPE = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @mATCHTYPE = mATCHTYPE
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HVNTPLResponse
#   result - ResultType
class MOD_HVNTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNTPL
#   tPLID - (any)
class LST_HVNTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNTPLResponse
#   result - LST_HVNTPLType
class LST_HVNTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HVNTPLADDR
#   vNTPLID - (any)
#   vN - (any)
#   vNTYPE - (any)
class ADD_HVNTPLADDR
  attr_accessor :vNTPLID
  attr_accessor :vN
  attr_accessor :vNTYPE

  def initialize(vNTPLID = nil, vN = nil, vNTYPE = nil)
    @vNTPLID = vNTPLID
    @vN = vN
    @vNTYPE = vNTYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HVNTPLADDRResponse
#   result - ResultType
class ADD_HVNTPLADDRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HVNTPLADDR
#   vNTPLID - (any)
#   vN - (any)
class RMV_HVNTPLADDR
  attr_accessor :vNTPLID
  attr_accessor :vN

  def initialize(vNTPLID = nil, vN = nil)
    @vNTPLID = vNTPLID
    @vN = vN
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HVNTPLADDRResponse
#   result - ResultType
class RMV_HVNTPLADDRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNTPLADDR
#   vNTPLID - (any)
class LST_HVNTPLADDR
  attr_accessor :vNTPLID

  def initialize(vNTPLID = nil)
    @vNTPLID = vNTPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNTPLADDRResponse
#   result - LST_HVNTPLADDRType
class LST_HVNTPLADDRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HNATPL
#   tPLID - (any)
#   tPLNAME - (any)
#   mATCHTYPE - (any)
#   nA - (any)
#   nATYPE - (any)
#   cOMMENT - (any)
class ADD_HNATPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :mATCHTYPE
  attr_accessor :nA
  attr_accessor :nATYPE
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, mATCHTYPE = nil, nA = nil, nATYPE = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @mATCHTYPE = mATCHTYPE
    @nA = nA
    @nATYPE = nATYPE
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HNATPLResponse
#   result - ResultType
class ADD_HNATPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HNATPL
#   tPLID - (any)
class RMV_HNATPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HNATPLResponse
#   result - ResultType
class RMV_HNATPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HNATPL
#   tPLID - (any)
#   tPLNAME - (any)
#   mATCHTYPE - (any)
#   cOMMENT - (any)
class MOD_HNATPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :mATCHTYPE
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, mATCHTYPE = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @mATCHTYPE = mATCHTYPE
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HNATPLResponse
#   result - ResultType
class MOD_HNATPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNATPL
#   tPLID - (any)
class LST_HNATPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNATPLResponse
#   result - LST_HNATPLType
class LST_HNATPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HNATPLADDR
#   nATPLID - (any)
#   nA - (any)
#   nATYPE - (any)
class ADD_HNATPLADDR
  attr_accessor :nATPLID
  attr_accessor :nA
  attr_accessor :nATYPE

  def initialize(nATPLID = nil, nA = nil, nATYPE = nil)
    @nATPLID = nATPLID
    @nA = nA
    @nATYPE = nATYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HNATPLADDRResponse
#   result - ResultType
class ADD_HNATPLADDRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HNATPLADDR
#   nATPLID - (any)
#   nA - (any)
class RMV_HNATPLADDR
  attr_accessor :nATPLID
  attr_accessor :nA

  def initialize(nATPLID = nil, nA = nil)
    @nATPLID = nATPLID
    @nA = nA
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HNATPLADDRResponse
#   result - ResultType
class RMV_HNATPLADDRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNATPLADDR
#   nATPLID - (any)
class LST_HNATPLADDR
  attr_accessor :nATPLID

  def initialize(nATPLID = nil)
    @nATPLID = nATPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNATPLADDRResponse
#   result - LST_HNATPLADDRType
class LST_HNATPLADDRResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HOCSITPL
#   tPLID - (any)
#   tPLNAME - (any)
#   gSMSCFADDR - (any)
#   sK - (any)
#   dEFCALL - (any)
#   iMSSF - (any)
#   cOMMENT - (any)
class ADD_HOCSITPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :gSMSCFADDR
  attr_accessor :sK
  attr_accessor :dEFCALL
  attr_accessor :iMSSF
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, gSMSCFADDR = nil, sK = nil, dEFCALL = nil, iMSSF = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @gSMSCFADDR = gSMSCFADDR
    @sK = sK
    @dEFCALL = dEFCALL
    @iMSSF = iMSSF
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HOCSITPLResponse
#   result - ResultType
class ADD_HOCSITPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HOCSITPL
#   tPLID - (any)
class RMV_HOCSITPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HOCSITPLResponse
#   result - ResultType
class RMV_HOCSITPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HOCSITPL
#   tPLID - (any)
#   tPLNAME - (any)
#   gSMSCFADDR - (any)
#   sK - (any)
#   dEFCALL - (any)
#   iMSSF - (any)
#   cOMMENT - (any)
class MOD_HOCSITPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :gSMSCFADDR
  attr_accessor :sK
  attr_accessor :dEFCALL
  attr_accessor :iMSSF
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, gSMSCFADDR = nil, sK = nil, dEFCALL = nil, iMSSF = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @gSMSCFADDR = gSMSCFADDR
    @sK = sK
    @dEFCALL = dEFCALL
    @iMSSF = iMSSF
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HOCSITPLResponse
#   result - ResultType
class MOD_HOCSITPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HOCSITPL
#   tPLID - (any)
class LST_HOCSITPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HOCSITPLResponse
#   result - LST_HOCSITPLType
class LST_HOCSITPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTCSITPL
#   tPLID - (any)
#   tPLNAME - (any)
#   gSMSCFADDR - (any)
#   sK - (any)
#   dEFCALL - (any)
#   iMSSF - (any)
#   cOMMENT - (any)
class ADD_HTCSITPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :gSMSCFADDR
  attr_accessor :sK
  attr_accessor :dEFCALL
  attr_accessor :iMSSF
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, gSMSCFADDR = nil, sK = nil, dEFCALL = nil, iMSSF = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @gSMSCFADDR = gSMSCFADDR
    @sK = sK
    @dEFCALL = dEFCALL
    @iMSSF = iMSSF
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTCSITPLResponse
#   result - ResultType
class ADD_HTCSITPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HTCSITPL
#   tPLID - (any)
class RMV_HTCSITPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HTCSITPLResponse
#   result - ResultType
class RMV_HTCSITPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HTCSITPL
#   tPLID - (any)
#   tPLNAME - (any)
#   gSMSCFADDR - (any)
#   sK - (any)
#   dEFCALL - (any)
#   iMSSF - (any)
#   cOMMENT - (any)
class MOD_HTCSITPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :gSMSCFADDR
  attr_accessor :sK
  attr_accessor :dEFCALL
  attr_accessor :iMSSF
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, gSMSCFADDR = nil, sK = nil, dEFCALL = nil, iMSSF = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @gSMSCFADDR = gSMSCFADDR
    @sK = sK
    @dEFCALL = dEFCALL
    @iMSSF = iMSSF
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HTCSITPLResponse
#   result - ResultType
class MOD_HTCSITPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HTCSITPL
#   tPLID - (any)
class LST_HTCSITPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HTCSITPLResponse
#   result - LST_HTCSITPLType
class LST_HTCSITPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HCSI
#   iMSI - (any)
#   iSDN - (any)
#   cSITYPE - (any)
#   cSITPLID - (any)
class SET_HCSI
  attr_accessor :iMSI
  attr_accessor :iSDN
  attr_accessor :cSITYPE
  attr_accessor :cSITPLID

  def initialize(iMSI = nil, iSDN = nil, cSITYPE = nil, cSITPLID = nil)
    @iMSI = iMSI
    @iSDN = iSDN
    @cSITYPE = cSITYPE
    @cSITPLID = cSITPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HCSIResponse
#   result - ResultType
class SET_HCSIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCSI
#   iMSI - (any)
#   cSITYPE - (any)
class LST_HCSI
  attr_accessor :iMSI
  attr_accessor :cSITYPE

  def initialize(iMSI = nil, cSITYPE = nil)
    @iMSI = iMSI
    @cSITYPE = cSITYPE
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCSIResponse
#   result - LST_HCSIType
class LST_HCSIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSERPRV
#   iMPU - (any)
#   pUSI - (any)
#   sERPRVID - (any)
class ADD_HSERPRV
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :sERPRVID

  def initialize(iMPU = nil, pUSI = nil, sERPRVID = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @sERPRVID = sERPRVID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSERPRVResponse
#   result - ResultType
class ADD_HSERPRVResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSERPRV
#   iMPU - (any)
#   pUSI - (any)
class RMV_HSERPRV
  attr_accessor :iMPU
  attr_accessor :pUSI

  def initialize(iMPU = nil, pUSI = nil)
    @iMPU = iMPU
    @pUSI = pUSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSERPRVResponse
#   result - ResultType
class RMV_HSERPRVResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSERPRV
#   iMPU - (any)
#   pUSI - (any)
#   sERPRVID - (any)
class MOD_HSERPRV
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :sERPRVID

  def initialize(iMPU = nil, pUSI = nil, sERPRVID = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @sERPRVID = sERPRVID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSERPRVResponse
#   result - ResultType
class MOD_HSERPRVResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSERPRV
#   iMPU - (any)
#   pUSI - (any)
class LST_HSERPRV
  attr_accessor :iMPU
  attr_accessor :pUSI

  def initialize(iMPU = nil, pUSI = nil)
    @iMPU = iMPU
    @pUSI = pUSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSERPRVResponse
#   result - LST_HSERPRVType
class LST_HSERPRVResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HTAA
#   iMPI - (any)
#   tAAFLAG - (any)
class SET_HTAA
  attr_accessor :iMPI
  attr_accessor :tAAFLAG

  def initialize(iMPI = nil, tAAFLAG = nil)
    @iMPI = iMPI
    @tAAFLAG = tAAFLAG
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HTAAResponse
#   result - ResultType
class SET_HTAAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HTAA
#   iMPI - (any)
class LST_HTAA
  attr_accessor :iMPI

  def initialize(iMPI = nil)
    @iMPI = iMPI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HTAAResponse
#   result - LST_HTAAType
class LST_HTAAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HUSRPRIOR
#   iMPU - (any)
#   pUSI - (any)
#   uSRPRIOR - (any)
class SET_HUSRPRIOR
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :uSRPRIOR

  def initialize(iMPU = nil, pUSI = nil, uSRPRIOR = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @uSRPRIOR = uSRPRIOR
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HUSRPRIORResponse
#   result - ResultType
class SET_HUSRPRIORResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HUSRPRIOR
#   iMPU - (any)
#   pUSI - (any)
class LST_HUSRPRIOR
  attr_accessor :iMPU
  attr_accessor :pUSI

  def initialize(iMPU = nil, pUSI = nil)
    @iMPU = iMPU
    @pUSI = pUSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HUSRPRIORResponse
#   result - LST_HUSRPRIORType
class LST_HUSRPRIORResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSDAINF
#   iMPI - (any)
#   hUSERNAME - (any)
#   pWD - (any)
#   rEALM - (any)
#   hA1 - (any)
class ADD_HSDAINF
  attr_accessor :iMPI
  attr_accessor :hUSERNAME
  attr_accessor :pWD
  attr_accessor :rEALM
  attr_accessor :hA1

  def initialize(iMPI = nil, hUSERNAME = nil, pWD = nil, rEALM = nil, hA1 = nil)
    @iMPI = iMPI
    @hUSERNAME = hUSERNAME
    @pWD = pWD
    @rEALM = rEALM
    @hA1 = hA1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSDAINFResponse
#   result - ResultType
class ADD_HSDAINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSDAINF
#   iMPI - (any)
class RMV_HSDAINF
  attr_accessor :iMPI

  def initialize(iMPI = nil)
    @iMPI = iMPI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSDAINFResponse
#   result - ResultType
class RMV_HSDAINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSDAINF
#   iMPI - (any)
#   hUSERNAME - (any)
#   pWD - (any)
#   rEALM - (any)
#   hA1 - (any)
class MOD_HSDAINF
  attr_accessor :iMPI
  attr_accessor :hUSERNAME
  attr_accessor :pWD
  attr_accessor :rEALM
  attr_accessor :hA1

  def initialize(iMPI = nil, hUSERNAME = nil, pWD = nil, rEALM = nil, hA1 = nil)
    @iMPI = iMPI
    @hUSERNAME = hUSERNAME
    @pWD = pWD
    @rEALM = rEALM
    @hA1 = hA1
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSDAINFResponse
#   result - ResultType
class MOD_HSDAINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSDAINF
#   iMPI - (any)
#   hUSERNAME - (any)
class LST_HSDAINF
  attr_accessor :iMPI
  attr_accessor :hUSERNAME

  def initialize(iMPI = nil, hUSERNAME = nil)
    @iMPI = iMPI
    @hUSERNAME = hUSERNAME
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSDAINFResponse
#   result - LST_HSDAINFType
class LST_HSDAINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HSDAPWD
#   hUSERNAME - (any)
#   pWD - (any)
class CHK_HSDAPWD
  attr_accessor :hUSERNAME
  attr_accessor :pWD

  def initialize(hUSERNAME = nil, pWD = nil)
    @hUSERNAME = hUSERNAME
    @pWD = pWD
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HSDAPWDResponse
#   result - ResultType
class CHK_HSDAPWDResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HLRI
#   iMPU - (any)
#   pUSI - (any)
#   lRI - (any)
class SET_HLRI
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :lRI

  def initialize(iMPU = nil, pUSI = nil, lRI = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @lRI = lRI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HLRIResponse
#   result - ResultType
class SET_HLRIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HLRI
#   iMPU - (any)
#   pUSI - (any)
class LST_HLRI
  attr_accessor :iMPU
  attr_accessor :pUSI

  def initialize(iMPU = nil, pUSI = nil)
    @iMPU = iMPU
    @pUSI = pUSI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HLRIResponse
#   result - LST_HLRIType
class LST_HLRIResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSIFC
#   iMPU - (any)
#   pUSI - (any)
#   sIFCID - (any)
class ADD_HSIFC
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :sIFCID

  def initialize(iMPU = nil, pUSI = nil, sIFCID = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @sIFCID = sIFCID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSIFCResponse
#   result - ResultType
class ADD_HSIFCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSIFC
#   iMPU - (any)
#   pUSI - (any)
#   sIFCID - (any)
class RMV_HSIFC
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :sIFCID

  def initialize(iMPU = nil, pUSI = nil, sIFCID = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @sIFCID = sIFCID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSIFCResponse
#   result - ResultType
class RMV_HSIFCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSIFC
#   iMPU - (any)
#   pUSI - (any)
#   oSIFCID - (any)
#   nSIFCID - (any)
class MOD_HSIFC
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :oSIFCID
  attr_accessor :nSIFCID

  def initialize(iMPU = nil, pUSI = nil, oSIFCID = nil, nSIFCID = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @oSIFCID = oSIFCID
    @nSIFCID = nSIFCID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSIFCResponse
#   result - ResultType
class MOD_HSIFCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSIFC
#   iMPU - (any)
#   pUSI - (any)
#   sIFCID - (any)
class LST_HSIFC
  attr_accessor :iMPU
  attr_accessor :pUSI
  attr_accessor :sIFCID

  def initialize(iMPU = nil, pUSI = nil, sIFCID = nil)
    @iMPU = iMPU
    @pUSI = pUSI
    @sIFCID = sIFCID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSIFCResponse
#   result - LST_HSIFCType
class LST_HSIFCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HALLIFC
#   iMPU - (any)
class RMV_HALLIFC
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HALLIFCResponse
#   result - ResultType
class RMV_HALLIFCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSIFCTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   cOMMENT - (any)
class ADD_HSIFCTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSIFCTPLResponse
#   result - ResultType
class ADD_HSIFCTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSIFCTPL
#   tPLID - (any)
class RMV_HSIFCTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSIFCTPLResponse
#   result - ResultType
class RMV_HSIFCTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSIFCTPL
#   tPLID - (any)
#   tPLNAME - (any)
#   cOMMENT - (any)
class MOD_HSIFCTPL
  attr_accessor :tPLID
  attr_accessor :tPLNAME
  attr_accessor :cOMMENT

  def initialize(tPLID = nil, tPLNAME = nil, cOMMENT = nil)
    @tPLID = tPLID
    @tPLNAME = tPLNAME
    @cOMMENT = cOMMENT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSIFCTPLResponse
#   result - ResultType
class MOD_HSIFCTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSIFCTPL
#   tPLID - (any)
class LST_HSIFCTPL
  attr_accessor :tPLID

  def initialize(tPLID = nil)
    @tPLID = tPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSIFCTPLResponse
#   result - LST_HSIFCTPLType
class LST_HSIFCTPLResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSIFCINF
#   sIFCTPLID - (any)
#   iFCNAME - (any)
#   pRIORITY - (any)
#   pARTIND - (any)
#   sERVER - (any)
#   dEFHND - (any)
#   sERVINFO - (any)
#   tRIGPT - (any)
class ADD_HSIFCINF
  attr_accessor :sIFCTPLID
  attr_accessor :iFCNAME
  attr_accessor :pRIORITY
  attr_accessor :pARTIND
  attr_accessor :sERVER
  attr_accessor :dEFHND
  attr_accessor :sERVINFO
  attr_accessor :tRIGPT

  def initialize(sIFCTPLID = nil, iFCNAME = nil, pRIORITY = nil, pARTIND = nil, sERVER = nil, dEFHND = nil, sERVINFO = nil, tRIGPT = nil)
    @sIFCTPLID = sIFCTPLID
    @iFCNAME = iFCNAME
    @pRIORITY = pRIORITY
    @pARTIND = pARTIND
    @sERVER = sERVER
    @dEFHND = dEFHND
    @sERVINFO = sERVINFO
    @tRIGPT = tRIGPT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSIFCINFResponse
#   result - ResultType
class ADD_HSIFCINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSIFCINF
#   sIFCTPLID - (any)
#   pRIORITY - (any)
class RMV_HSIFCINF
  attr_accessor :sIFCTPLID
  attr_accessor :pRIORITY

  def initialize(sIFCTPLID = nil, pRIORITY = nil)
    @sIFCTPLID = sIFCTPLID
    @pRIORITY = pRIORITY
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSIFCINFResponse
#   result - ResultType
class RMV_HSIFCINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSIFCINF
#   sIFCTPLID - (any)
#   iFCNAME - (any)
#   pRIORITY - (any)
#   pARTIND - (any)
#   sERVER - (any)
#   dEFHND - (any)
#   sERVINFO - (any)
#   tRIGPT - (any)
class MOD_HSIFCINF
  attr_accessor :sIFCTPLID
  attr_accessor :iFCNAME
  attr_accessor :pRIORITY
  attr_accessor :pARTIND
  attr_accessor :sERVER
  attr_accessor :dEFHND
  attr_accessor :sERVINFO
  attr_accessor :tRIGPT

  def initialize(sIFCTPLID = nil, iFCNAME = nil, pRIORITY = nil, pARTIND = nil, sERVER = nil, dEFHND = nil, sERVINFO = nil, tRIGPT = nil)
    @sIFCTPLID = sIFCTPLID
    @iFCNAME = iFCNAME
    @pRIORITY = pRIORITY
    @pARTIND = pARTIND
    @sERVER = sERVER
    @dEFHND = dEFHND
    @sERVINFO = sERVINFO
    @tRIGPT = tRIGPT
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSIFCINFResponse
#   result - ResultType
class MOD_HSIFCINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSIFCINF
#   sIFCTPLID - (any)
class LST_HSIFCINF
  attr_accessor :sIFCTPLID

  def initialize(sIFCTPLID = nil)
    @sIFCTPLID = sIFCTPLID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSIFCINFResponse
#   result - LST_HSIFCINFType
class LST_HSIFCINFResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HESRN
#   iMPU - (any)
#   eSRN - (any)
class SET_HESRN
  attr_accessor :iMPU
  attr_accessor :eSRN

  def initialize(iMPU = nil, eSRN = nil)
    @iMPU = iMPU
    @eSRN = eSRN
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HESRNResponse
#   result - ResultType
class SET_HESRNResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HESRN
#   iMPU - (any)
class LST_HESRN
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HESRNResponse
#   result - LST_HESRNType
class LST_HESRNResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HONEKEY
#   iMPU - (any)
#   wUSERNAME - (any)
#   hTOKEN - (any)
#   aP - (any)
class ADD_HONEKEY
  attr_accessor :iMPU
  attr_accessor :wUSERNAME
  attr_accessor :hTOKEN
  attr_accessor :aP

  def initialize(iMPU = nil, wUSERNAME = nil, hTOKEN = nil, aP = nil)
    @iMPU = iMPU
    @wUSERNAME = wUSERNAME
    @hTOKEN = hTOKEN
    @aP = aP
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HONEKEYResponse
#   result - ResultType
class ADD_HONEKEYResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HONEKEY
#   iMPU - (any)
#   wUSERNAME - (any)
#   hTOKEN - (any)
#   aP - (any)
class MOD_HONEKEY
  attr_accessor :iMPU
  attr_accessor :wUSERNAME
  attr_accessor :hTOKEN
  attr_accessor :aP

  def initialize(iMPU = nil, wUSERNAME = nil, hTOKEN = nil, aP = nil)
    @iMPU = iMPU
    @wUSERNAME = wUSERNAME
    @hTOKEN = hTOKEN
    @aP = aP
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HONEKEYResponse
#   result - ResultType
class MOD_HONEKEYResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HONEKEY
#   iMPU - (any)
class LST_HONEKEY
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HONEKEYResponse
#   result - LST_HONEKEYType
class LST_HONEKEYResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HONEKEY
#   iMPU - (any)
class RMV_HONEKEY
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HONEKEYResponse
#   result - ResultType
class RMV_HONEKEYResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HASIFC
#   iMPU - (any)
#   sERVER - (any)
class RMV_HASIFC
  attr_accessor :iMPU
  attr_accessor :sERVER

  def initialize(iMPU = nil, sERVER = nil)
    @iMPU = iMPU
    @sERVER = sERVER
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HASIFCResponse
#   result - ResultType
class RMV_HASIFCResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HCAA
#   iMPI - (any)
#   cAVEAKAFLG - (any)
#   uIMID - (any)
class SET_HCAA
  attr_accessor :iMPI
  attr_accessor :cAVEAKAFLG
  attr_accessor :uIMID

  def initialize(iMPI = nil, cAVEAKAFLG = nil, uIMID = nil)
    @iMPI = iMPI
    @cAVEAKAFLG = cAVEAKAFLG
    @uIMID = uIMID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HCAAResponse
#   result - ResultType
class SET_HCAAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCAA
#   iMPI - (any)
class LST_HCAA
  attr_accessor :iMPI

  def initialize(iMPI = nil)
    @iMPI = iMPI
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCAAResponse
#   result - LST_HCAAType
class LST_HCAAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HPBXU
#   sUBID - (any)
#   pBXUSERFLAG - (any)
class SET_HPBXU
  attr_accessor :sUBID
  attr_accessor :pBXUSERFLAG

  def initialize(sUBID = nil, pBXUSERFLAG = nil)
    @sUBID = sUBID
    @pBXUSERFLAG = pBXUSERFLAG
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HPBXUResponse
#   result - ResultType
class SET_HPBXUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPBXU
#   sUBID - (any)
class LST_HPBXU
  attr_accessor :sUBID

  def initialize(sUBID = nil)
    @sUBID = sUBID
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPBXUResponse
#   result - LST_HPBXUType
class LST_HPBXUResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HPREPDATA
#   iMPU - (any)
#   iMSI - (any)
#   sELFSERVICE - (any)
#   sMSCADDRESS - (any)
#   lOCATIONINFORMATION - (any)
#   nPINDICATOR - (any)
#   cICINDICATOR - (any)
#   bINDINDICATOR - (any)
class ADD_HPREPDATA
  attr_accessor :iMPU
  attr_accessor :iMSI
  attr_accessor :sELFSERVICE
  attr_accessor :sMSCADDRESS
  attr_accessor :lOCATIONINFORMATION
  attr_accessor :nPINDICATOR
  attr_accessor :cICINDICATOR
  attr_accessor :bINDINDICATOR

  def initialize(iMPU = nil, iMSI = nil, sELFSERVICE = nil, sMSCADDRESS = nil, lOCATIONINFORMATION = nil, nPINDICATOR = nil, cICINDICATOR = nil, bINDINDICATOR = nil)
    @iMPU = iMPU
    @iMSI = iMSI
    @sELFSERVICE = sELFSERVICE
    @sMSCADDRESS = sMSCADDRESS
    @lOCATIONINFORMATION = lOCATIONINFORMATION
    @nPINDICATOR = nPINDICATOR
    @cICINDICATOR = cICINDICATOR
    @bINDINDICATOR = bINDINDICATOR
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HPREPDATAResponse
#   result - ResultType
class ADD_HPREPDATAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HPREPDATA
#   iMPU - (any)
class RMV_HPREPDATA
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HPREPDATAResponse
#   result - ResultType
class RMV_HPREPDATAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HPREPDATA
#   iMPU - (any)
#   iMSI - (any)
#   sELFSERVICE - (any)
#   sMSCADDRESS - (any)
#   lOCATIONINFORMATION - (any)
#   nPINDICATOR - (any)
#   cICINDICATOR - (any)
#   bINDINDICATOR - (any)
class MOD_HPREPDATA
  attr_accessor :iMPU
  attr_accessor :iMSI
  attr_accessor :sELFSERVICE
  attr_accessor :sMSCADDRESS
  attr_accessor :lOCATIONINFORMATION
  attr_accessor :nPINDICATOR
  attr_accessor :cICINDICATOR
  attr_accessor :bINDINDICATOR

  def initialize(iMPU = nil, iMSI = nil, sELFSERVICE = nil, sMSCADDRESS = nil, lOCATIONINFORMATION = nil, nPINDICATOR = nil, cICINDICATOR = nil, bINDINDICATOR = nil)
    @iMPU = iMPU
    @iMSI = iMSI
    @sELFSERVICE = sELFSERVICE
    @sMSCADDRESS = sMSCADDRESS
    @lOCATIONINFORMATION = lOCATIONINFORMATION
    @nPINDICATOR = nPINDICATOR
    @cICINDICATOR = cICINDICATOR
    @bINDINDICATOR = bINDINDICATOR
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HPREPDATAResponse
#   result - ResultType
class MOD_HPREPDATAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPREPDATA
#   iMPU - (any)
class LST_HPREPDATA
  attr_accessor :iMPU

  def initialize(iMPU = nil)
    @iMPU = iMPU
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPREPDATAResponse
#   result - LST_HPREPDATAType
class LST_HPREPDATAResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}Authentication
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
