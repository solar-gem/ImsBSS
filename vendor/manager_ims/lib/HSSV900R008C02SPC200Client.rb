#!/usr/bin/env ruby
require 'defaultDriver.rb'

endpoint_url = ARGV.shift
obj = HSSV900R008C02SPC200.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   ADD_OP(parameters)
#
# ARGS
#   parameters      ADD_OP - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_OP
#
# RETURNS
#   parameters      ADD_OPResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_OPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_OP(parameters)

# SYNOPSIS
#   RMV_OP(parameters)
#
# ARGS
#   parameters      RMV_OP - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_OP
#
# RETURNS
#   parameters      RMV_OPResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_OPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_OP(parameters)

# SYNOPSIS
#   MOD_OP(parameters)
#
# ARGS
#   parameters      MOD_OP - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_OP
#
# RETURNS
#   parameters      MOD_OPResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_OPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_OP(parameters)

# SYNOPSIS
#   LST_OP(parameters)
#
# ARGS
#   parameters      LST_OP - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_OP
#
# RETURNS
#   parameters      LST_OPResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_OPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_OP(parameters)

# SYNOPSIS
#   CHK_OP(parameters)
#
# ARGS
#   parameters      CHK_OP - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_OP
#
# RETURNS
#   parameters      CHK_OPResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_OPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.cHK_OP(parameters)

# SYNOPSIS
#   ADD_AMF(parameters)
#
# ARGS
#   parameters      ADD_AMF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_AMF
#
# RETURNS
#   parameters      ADD_AMFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_AMFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_AMF(parameters)

# SYNOPSIS
#   RMV_AMF(parameters)
#
# ARGS
#   parameters      RMV_AMF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_AMF
#
# RETURNS
#   parameters      RMV_AMFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_AMFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_AMF(parameters)

# SYNOPSIS
#   MOD_AMF(parameters)
#
# ARGS
#   parameters      MOD_AMF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_AMF
#
# RETURNS
#   parameters      MOD_AMFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_AMFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_AMF(parameters)

# SYNOPSIS
#   LST_AMF(parameters)
#
# ARGS
#   parameters      LST_AMF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AMF
#
# RETURNS
#   parameters      LST_AMFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AMFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_AMF(parameters)

# SYNOPSIS
#   CHK_AMF(parameters)
#
# ARGS
#   parameters      CHK_AMF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_AMF
#
# RETURNS
#   parameters      CHK_AMFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_AMFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.cHK_AMF(parameters)

# SYNOPSIS
#   ADD_K4(parameters)
#
# ARGS
#   parameters      ADD_K4 - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_K4
#
# RETURNS
#   parameters      ADD_K4Response - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_K4Response
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_K4(parameters)

# SYNOPSIS
#   RMV_K4(parameters)
#
# ARGS
#   parameters      RMV_K4 - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_K4
#
# RETURNS
#   parameters      RMV_K4Response - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_K4Response
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_K4(parameters)

# SYNOPSIS
#   MOD_K4(parameters)
#
# ARGS
#   parameters      MOD_K4 - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_K4
#
# RETURNS
#   parameters      MOD_K4Response - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_K4Response
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_K4(parameters)

# SYNOPSIS
#   LST_K4(parameters)
#
# ARGS
#   parameters      LST_K4 - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_K4
#
# RETURNS
#   parameters      LST_K4Response - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_K4Response
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_K4(parameters)

# SYNOPSIS
#   CHK_K4(parameters)
#
# ARGS
#   parameters      CHK_K4 - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_K4
#
# RETURNS
#   parameters      CHK_K4Response - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_K4Response
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.cHK_K4(parameters)

# SYNOPSIS
#   ADD_KI(parameters)
#
# ARGS
#   parameters      ADD_KI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_KI
#
# RETURNS
#   parameters      ADD_KIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_KIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_KI(parameters)

# SYNOPSIS
#   RMV_KI(parameters)
#
# ARGS
#   parameters      RMV_KI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_KI
#
# RETURNS
#   parameters      RMV_KIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_KIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_KI(parameters)

# SYNOPSIS
#   MOD_KI(parameters)
#
# ARGS
#   parameters      MOD_KI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_KI
#
# RETURNS
#   parameters      MOD_KIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_KIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_KI(parameters)

# SYNOPSIS
#   LST_KI(parameters)
#
# ARGS
#   parameters      LST_KI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_KI
#
# RETURNS
#   parameters      LST_KIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_KIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_KI(parameters)

# SYNOPSIS
#   CHK_KI(parameters)
#
# ARGS
#   parameters      CHK_KI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_KI
#
# RETURNS
#   parameters      CHK_KIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_KIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.cHK_KI(parameters)

# SYNOPSIS
#   CHK_OPC(parameters)
#
# ARGS
#   parameters      CHK_OPC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_OPC
#
# RETURNS
#   parameters      CHK_OPCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_OPCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.cHK_OPC(parameters)

# SYNOPSIS
#   ADD_SUB(parameters)
#
# ARGS
#   parameters      ADD_SUB - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SUB
#
# RETURNS
#   parameters      ADD_SUBResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SUBResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_SUB(parameters)

# SYNOPSIS
#   RMV_SUB(parameters)
#
# ARGS
#   parameters      RMV_SUB - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SUB
#
# RETURNS
#   parameters      RMV_SUBResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SUBResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_SUB(parameters)

# SYNOPSIS
#   MOD_SUBID(parameters)
#
# ARGS
#   parameters      MOD_SUBID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SUBID
#
# RETURNS
#   parameters      MOD_SUBIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SUBIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_SUBID(parameters)

# SYNOPSIS
#   LST_SUB(parameters)
#
# ARGS
#   parameters      LST_SUB - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SUB
#
# RETURNS
#   parameters      LST_SUBResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SUBResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_SUB(parameters)

# SYNOPSIS
#   ADD_IMPI(parameters)
#
# ARGS
#   parameters      ADD_IMPI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_IMPI
#
# RETURNS
#   parameters      ADD_IMPIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_IMPIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_IMPI(parameters)

# SYNOPSIS
#   RMV_IMPI(parameters)
#
# ARGS
#   parameters      RMV_IMPI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_IMPI
#
# RETURNS
#   parameters      RMV_IMPIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_IMPIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_IMPI(parameters)

# SYNOPSIS
#   MOD_IMPI(parameters)
#
# ARGS
#   parameters      MOD_IMPI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_IMPI
#
# RETURNS
#   parameters      MOD_IMPIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_IMPIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_IMPI(parameters)

# SYNOPSIS
#   ADD_IMPU(parameters)
#
# ARGS
#   parameters      ADD_IMPU - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_IMPU
#
# RETURNS
#   parameters      ADD_IMPUResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_IMPUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_IMPU(parameters)

# SYNOPSIS
#   RMV_IMPU(parameters)
#
# ARGS
#   parameters      RMV_IMPU - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_IMPU
#
# RETURNS
#   parameters      RMV_IMPUResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_IMPUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_IMPU(parameters)

# SYNOPSIS
#   MOD_IMPU(parameters)
#
# ARGS
#   parameters      MOD_IMPU - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_IMPU
#
# RETURNS
#   parameters      MOD_IMPUResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_IMPUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_IMPU(parameters)

# SYNOPSIS
#   SET_IMPUSHARE(parameters)
#
# ARGS
#   parameters      SET_IMPUSHARE - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_IMPUSHARE
#
# RETURNS
#   parameters      SET_IMPUSHAREResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_IMPUSHAREResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_IMPUSHARE(parameters)

# SYNOPSIS
#   SET_IRS(parameters)
#
# ARGS
#   parameters      SET_IRS - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_IRS
#
# RETURNS
#   parameters      SET_IRSResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_IRSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_IRS(parameters)

# SYNOPSIS
#   SET_DEFIMPU(parameters)
#
# ARGS
#   parameters      SET_DEFIMPU - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_DEFIMPU
#
# RETURNS
#   parameters      SET_DEFIMPUResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_DEFIMPUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_DEFIMPU(parameters)

# SYNOPSIS
#   SET_CHARGID(parameters)
#
# ARGS
#   parameters      SET_CHARGID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_CHARGID
#
# RETURNS
#   parameters      SET_CHARGIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_CHARGIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_CHARGID(parameters)

# SYNOPSIS
#   LST_CHARGID(parameters)
#
# ARGS
#   parameters      LST_CHARGID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CHARGID
#
# RETURNS
#   parameters      LST_CHARGIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CHARGIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_CHARGID(parameters)

# SYNOPSIS
#   SET_BAR(parameters)
#
# ARGS
#   parameters      SET_BAR - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_BAR
#
# RETURNS
#   parameters      SET_BARResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_BARResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_BAR(parameters)

# SYNOPSIS
#   LST_BAR(parameters)
#
# ARGS
#   parameters      LST_BAR - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_BAR
#
# RETURNS
#   parameters      LST_BARResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_BARResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_BAR(parameters)

# SYNOPSIS
#   SET_REGAUTH(parameters)
#
# ARGS
#   parameters      SET_REGAUTH - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_REGAUTH
#
# RETURNS
#   parameters      SET_REGAUTHResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_REGAUTHResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_REGAUTH(parameters)

# SYNOPSIS
#   LST_REGAUTH(parameters)
#
# ARGS
#   parameters      LST_REGAUTH - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_REGAUTH
#
# RETURNS
#   parameters      LST_REGAUTHResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_REGAUTHResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_REGAUTH(parameters)

# SYNOPSIS
#   SET_VNTPLID(parameters)
#
# ARGS
#   parameters      SET_VNTPLID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_VNTPLID
#
# RETURNS
#   parameters      SET_VNTPLIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_VNTPLIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_VNTPLID(parameters)

# SYNOPSIS
#   LST_VNTPLID(parameters)
#
# ARGS
#   parameters      LST_VNTPLID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNTPLID
#
# RETURNS
#   parameters      LST_VNTPLIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNTPLIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_VNTPLID(parameters)

# SYNOPSIS
#   SET_MEDIAID(parameters)
#
# ARGS
#   parameters      SET_MEDIAID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_MEDIAID
#
# RETURNS
#   parameters      SET_MEDIAIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_MEDIAIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_MEDIAID(parameters)

# SYNOPSIS
#   LST_MEDIAID(parameters)
#
# ARGS
#   parameters      LST_MEDIAID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_MEDIAID
#
# RETURNS
#   parameters      LST_MEDIAIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_MEDIAIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_MEDIAID(parameters)

# SYNOPSIS
#   SET_MOCAP(parameters)
#
# ARGS
#   parameters      SET_MOCAP - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_MOCAP
#
# RETURNS
#   parameters      SET_MOCAPResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_MOCAPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_MOCAP(parameters)

# SYNOPSIS
#   LST_MOCAP(parameters)
#
# ARGS
#   parameters      LST_MOCAP - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_MOCAP
#
# RETURNS
#   parameters      LST_MOCAPResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_MOCAPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_MOCAP(parameters)

# SYNOPSIS
#   SET_EIA(parameters)
#
# ARGS
#   parameters      SET_EIA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_EIA
#
# RETURNS
#   parameters      SET_EIAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_EIAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_EIA(parameters)

# SYNOPSIS
#   LST_EIA(parameters)
#
# ARGS
#   parameters      LST_EIA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_EIA
#
# RETURNS
#   parameters      LST_EIAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_EIAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_EIA(parameters)

# SYNOPSIS
#   SET_EAA(parameters)
#
# ARGS
#   parameters      SET_EAA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_EAA
#
# RETURNS
#   parameters      SET_EAAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_EAAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_EAA(parameters)

# SYNOPSIS
#   LST_EAA(parameters)
#
# ARGS
#   parameters      LST_EAA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_EAA
#
# RETURNS
#   parameters      LST_EAAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_EAAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_EAA(parameters)

# SYNOPSIS
#   SET_AS(parameters)
#
# ARGS
#   parameters      SET_AS - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_AS
#
# RETURNS
#   parameters      SET_ASResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_ASResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_AS(parameters)

# SYNOPSIS
#   LST_AS(parameters)
#
# ARGS
#   parameters      LST_AS - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AS
#
# RETURNS
#   parameters      LST_ASResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_AS(parameters)

# SYNOPSIS
#   SET_VNCFLAG(parameters)
#
# ARGS
#   parameters      SET_VNCFLAG - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_VNCFLAG
#
# RETURNS
#   parameters      SET_VNCFLAGResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_VNCFLAGResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_VNCFLAG(parameters)

# SYNOPSIS
#   LST_VNCFLAG(parameters)
#
# ARGS
#   parameters      LST_VNCFLAG - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNCFLAG
#
# RETURNS
#   parameters      LST_VNCFLAGResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNCFLAGResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_VNCFLAG(parameters)

# SYNOPSIS
#   ADD_IFC(parameters)
#
# ARGS
#   parameters      ADD_IFC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_IFC
#
# RETURNS
#   parameters      ADD_IFCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_IFCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_IFC(parameters)

# SYNOPSIS
#   RMV_IFC(parameters)
#
# ARGS
#   parameters      RMV_IFC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_IFC
#
# RETURNS
#   parameters      RMV_IFCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_IFCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_IFC(parameters)

# SYNOPSIS
#   MOD_IFC(parameters)
#
# ARGS
#   parameters      MOD_IFC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_IFC
#
# RETURNS
#   parameters      MOD_IFCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_IFCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_IFC(parameters)

# SYNOPSIS
#   LST_IFC(parameters)
#
# ARGS
#   parameters      LST_IFC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_IFC
#
# RETURNS
#   parameters      LST_IFCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_IFCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_IFC(parameters)

# SYNOPSIS
#   ADD_CAPSCSCF(parameters)
#
# ARGS
#   parameters      ADD_CAPSCSCF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_CAPSCSCF
#
# RETURNS
#   parameters      ADD_CAPSCSCFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_CAPSCSCFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_CAPSCSCF(parameters)

# SYNOPSIS
#   RMV_CAPSCSCF(parameters)
#
# ARGS
#   parameters      RMV_CAPSCSCF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_CAPSCSCF
#
# RETURNS
#   parameters      RMV_CAPSCSCFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_CAPSCSCFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_CAPSCSCF(parameters)

# SYNOPSIS
#   LST_CAPSCSCF(parameters)
#
# ARGS
#   parameters      LST_CAPSCSCF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CAPSCSCF
#
# RETURNS
#   parameters      LST_CAPSCSCFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CAPSCSCFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_CAPSCSCF(parameters)

# SYNOPSIS
#   SET_SPSHARE(parameters)
#
# ARGS
#   parameters      SET_SPSHARE - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_SPSHARE
#
# RETURNS
#   parameters      SET_SPSHAREResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_SPSHAREResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_SPSHARE(parameters)

# SYNOPSIS
#   RMV_SPSHARE(parameters)
#
# ARGS
#   parameters      RMV_SPSHARE - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SPSHARE
#
# RETURNS
#   parameters      RMV_SPSHAREResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SPSHAREResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_SPSHARE(parameters)

# SYNOPSIS
#   LST_SPSHARE(parameters)
#
# ARGS
#   parameters      LST_SPSHARE - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SPSHARE
#
# RETURNS
#   parameters      LST_SPSHAREResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SPSHAREResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_SPSHARE(parameters)

# SYNOPSIS
#   DRG_USER(parameters)
#
# ARGS
#   parameters      DRG_USER - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}DRG_USER
#
# RETURNS
#   parameters      DRG_USERResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}DRG_USERResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.dRG_USER(parameters)

# SYNOPSIS
#   LST_DYNDATA(parameters)
#
# ARGS
#   parameters      LST_DYNDATA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_DYNDATA
#
# RETURNS
#   parameters      LST_DYNDATAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_DYNDATAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_DYNDATA(parameters)

# SYNOPSIS
#   LST_ASSUBDATA(parameters)
#
# ARGS
#   parameters      LST_ASSUBDATA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASSUBDATA
#
# RETURNS
#   parameters      LST_ASSUBDATAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASSUBDATAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_ASSUBDATA(parameters)

# SYNOPSIS
#   ADD_PSI(parameters)
#
# ARGS
#   parameters      ADD_PSI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_PSI
#
# RETURNS
#   parameters      ADD_PSIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_PSIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_PSI(parameters)

# SYNOPSIS
#   RMV_PSI(parameters)
#
# ARGS
#   parameters      RMV_PSI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_PSI
#
# RETURNS
#   parameters      RMV_PSIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_PSIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_PSI(parameters)

# SYNOPSIS
#   LST_PSI(parameters)
#
# ARGS
#   parameters      LST_PSI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_PSI
#
# RETURNS
#   parameters      LST_PSIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_PSIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_PSI(parameters)

# SYNOPSIS
#   ADD_HDAINF(parameters)
#
# ARGS
#   parameters      ADD_HDAINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HDAINF
#
# RETURNS
#   parameters      ADD_HDAINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HDAINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HDAINF(parameters)

# SYNOPSIS
#   RMV_HDAINF(parameters)
#
# ARGS
#   parameters      RMV_HDAINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HDAINF
#
# RETURNS
#   parameters      RMV_HDAINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HDAINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HDAINF(parameters)

# SYNOPSIS
#   MOD_HDAINF(parameters)
#
# ARGS
#   parameters      MOD_HDAINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HDAINF
#
# RETURNS
#   parameters      MOD_HDAINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HDAINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HDAINF(parameters)

# SYNOPSIS
#   LST_HDAINF(parameters)
#
# ARGS
#   parameters      LST_HDAINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HDAINF
#
# RETURNS
#   parameters      LST_HDAINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HDAINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HDAINF(parameters)

# SYNOPSIS
#   CHK_HDAPWD(parameters)
#
# ARGS
#   parameters      CHK_HDAPWD - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HDAPWD
#
# RETURNS
#   parameters      CHK_HDAPWDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HDAPWDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.cHK_HDAPWD(parameters)

# SYNOPSIS
#   ADD_IMPUTPL(parameters)
#
# ARGS
#   parameters      ADD_IMPUTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_IMPUTPL
#
# RETURNS
#   parameters      ADD_IMPUTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_IMPUTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_IMPUTPL(parameters)

# SYNOPSIS
#   RMV_IMPUTPL(parameters)
#
# ARGS
#   parameters      RMV_IMPUTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_IMPUTPL
#
# RETURNS
#   parameters      RMV_IMPUTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_IMPUTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_IMPUTPL(parameters)

# SYNOPSIS
#   MOD_IMPUTPL(parameters)
#
# ARGS
#   parameters      MOD_IMPUTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_IMPUTPL
#
# RETURNS
#   parameters      MOD_IMPUTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_IMPUTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_IMPUTPL(parameters)

# SYNOPSIS
#   LST_IMPUTPL(parameters)
#
# ARGS
#   parameters      LST_IMPUTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_IMPUTPL
#
# RETURNS
#   parameters      LST_IMPUTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_IMPUTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_IMPUTPL(parameters)

# SYNOPSIS
#   ADD_PUSITPL(parameters)
#
# ARGS
#   parameters      ADD_PUSITPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_PUSITPL
#
# RETURNS
#   parameters      ADD_PUSITPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_PUSITPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_PUSITPL(parameters)

# SYNOPSIS
#   RMV_PUSITPL(parameters)
#
# ARGS
#   parameters      RMV_PUSITPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_PUSITPL
#
# RETURNS
#   parameters      RMV_PUSITPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_PUSITPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_PUSITPL(parameters)

# SYNOPSIS
#   MOD_PUSITPL(parameters)
#
# ARGS
#   parameters      MOD_PUSITPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_PUSITPL
#
# RETURNS
#   parameters      MOD_PUSITPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_PUSITPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_PUSITPL(parameters)

# SYNOPSIS
#   LST_PUSITPL(parameters)
#
# ARGS
#   parameters      LST_PUSITPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_PUSITPL
#
# RETURNS
#   parameters      LST_PUSITPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_PUSITPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_PUSITPL(parameters)

# SYNOPSIS
#   ADD_IFCTPL(parameters)
#
# ARGS
#   parameters      ADD_IFCTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_IFCTPL
#
# RETURNS
#   parameters      ADD_IFCTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_IFCTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_IFCTPL(parameters)

# SYNOPSIS
#   RMV_IFCTPL(parameters)
#
# ARGS
#   parameters      RMV_IFCTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_IFCTPL
#
# RETURNS
#   parameters      RMV_IFCTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_IFCTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_IFCTPL(parameters)

# SYNOPSIS
#   MOD_IFCTPL(parameters)
#
# ARGS
#   parameters      MOD_IFCTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_IFCTPL
#
# RETURNS
#   parameters      MOD_IFCTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_IFCTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_IFCTPL(parameters)

# SYNOPSIS
#   LST_IFCTPL(parameters)
#
# ARGS
#   parameters      LST_IFCTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_IFCTPL
#
# RETURNS
#   parameters      LST_IFCTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_IFCTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_IFCTPL(parameters)

# SYNOPSIS
#   ADD_SPTPL(parameters)
#
# ARGS
#   parameters      ADD_SPTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SPTPL
#
# RETURNS
#   parameters      ADD_SPTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SPTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_SPTPL(parameters)

# SYNOPSIS
#   RMV_SPTPL(parameters)
#
# ARGS
#   parameters      RMV_SPTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SPTPL
#
# RETURNS
#   parameters      RMV_SPTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SPTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_SPTPL(parameters)

# SYNOPSIS
#   MOD_SPTPL(parameters)
#
# ARGS
#   parameters      MOD_SPTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SPTPL
#
# RETURNS
#   parameters      MOD_SPTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SPTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_SPTPL(parameters)

# SYNOPSIS
#   LST_SPTPL(parameters)
#
# ARGS
#   parameters      LST_SPTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SPTPL
#
# RETURNS
#   parameters      LST_SPTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SPTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_SPTPL(parameters)

# SYNOPSIS
#   ADD_AKATPL(parameters)
#
# ARGS
#   parameters      ADD_AKATPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_AKATPL
#
# RETURNS
#   parameters      ADD_AKATPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_AKATPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_AKATPL(parameters)

# SYNOPSIS
#   RMV_AKATPL(parameters)
#
# ARGS
#   parameters      RMV_AKATPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_AKATPL
#
# RETURNS
#   parameters      RMV_AKATPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_AKATPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_AKATPL(parameters)

# SYNOPSIS
#   MOD_AKATPL(parameters)
#
# ARGS
#   parameters      MOD_AKATPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_AKATPL
#
# RETURNS
#   parameters      MOD_AKATPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_AKATPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_AKATPL(parameters)

# SYNOPSIS
#   LST_AKATPL(parameters)
#
# ARGS
#   parameters      LST_AKATPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AKATPL
#
# RETURNS
#   parameters      LST_AKATPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AKATPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_AKATPL(parameters)

# SYNOPSIS
#   ADD_CAPTPL(parameters)
#
# ARGS
#   parameters      ADD_CAPTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_CAPTPL
#
# RETURNS
#   parameters      ADD_CAPTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_CAPTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_CAPTPL(parameters)

# SYNOPSIS
#   RMV_CAPTPL(parameters)
#
# ARGS
#   parameters      RMV_CAPTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_CAPTPL
#
# RETURNS
#   parameters      RMV_CAPTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_CAPTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_CAPTPL(parameters)

# SYNOPSIS
#   MOD_CAPTPL(parameters)
#
# ARGS
#   parameters      MOD_CAPTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_CAPTPL
#
# RETURNS
#   parameters      MOD_CAPTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_CAPTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_CAPTPL(parameters)

# SYNOPSIS
#   LST_CAPTPL(parameters)
#
# ARGS
#   parameters      LST_CAPTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CAPTPL
#
# RETURNS
#   parameters      LST_CAPTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CAPTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_CAPTPL(parameters)

# SYNOPSIS
#   LST_TPLINF(parameters)
#
# ARGS
#   parameters      LST_TPLINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_TPLINF
#
# RETURNS
#   parameters      LST_TPLINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_TPLINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_TPLINF(parameters)

# SYNOPSIS
#   ADD_TPLIFC(parameters)
#
# ARGS
#   parameters      ADD_TPLIFC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLIFC
#
# RETURNS
#   parameters      ADD_TPLIFCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLIFCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_TPLIFC(parameters)

# SYNOPSIS
#   ADD_TPLIMPU(parameters)
#
# ARGS
#   parameters      ADD_TPLIMPU - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLIMPU
#
# RETURNS
#   parameters      ADD_TPLIMPUResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLIMPUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_TPLIMPU(parameters)

# SYNOPSIS
#   ADD_TPLKI(parameters)
#
# ARGS
#   parameters      ADD_TPLKI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLKI
#
# RETURNS
#   parameters      ADD_TPLKIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLKIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_TPLKI(parameters)

# SYNOPSIS
#   ADD_TPLPSI(parameters)
#
# ARGS
#   parameters      ADD_TPLPSI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLPSI
#
# RETURNS
#   parameters      ADD_TPLPSIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLPSIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_TPLPSI(parameters)

# SYNOPSIS
#   ADD_TPLPUSI(parameters)
#
# ARGS
#   parameters      ADD_TPLPUSI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLPUSI
#
# RETURNS
#   parameters      ADD_TPLPUSIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLPUSIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_TPLPUSI(parameters)

# SYNOPSIS
#   ADD_TPLSUB(parameters)
#
# ARGS
#   parameters      ADD_TPLSUB - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLSUB
#
# RETURNS
#   parameters      ADD_TPLSUBResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLSUBResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_TPLSUB(parameters)

# SYNOPSIS
#   ADD_TPLIMPI(parameters)
#
# ARGS
#   parameters      ADD_TPLIMPI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLIMPI
#
# RETURNS
#   parameters      ADD_TPLIMPIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TPLIMPIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_TPLIMPI(parameters)

# SYNOPSIS
#   LST_PSIDYND(parameters)
#
# ARGS
#   parameters      LST_PSIDYND - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_PSIDYND
#
# RETURNS
#   parameters      LST_PSIDYNDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_PSIDYNDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_PSIDYND(parameters)

# SYNOPSIS
#   LST_AUTHINF(parameters)
#
# ARGS
#   parameters      LST_AUTHINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AUTHINF
#
# RETURNS
#   parameters      LST_AUTHINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_AUTHINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_AUTHINF(parameters)

# SYNOPSIS
#   SET_NATPLID(parameters)
#
# ARGS
#   parameters      SET_NATPLID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_NATPLID
#
# RETURNS
#   parameters      SET_NATPLIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_NATPLIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_NATPLID(parameters)

# SYNOPSIS
#   LST_NATPLID(parameters)
#
# ARGS
#   parameters      LST_NATPLID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NATPLID
#
# RETURNS
#   parameters      LST_NATPLIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NATPLIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_NATPLID(parameters)

# SYNOPSIS
#   SET_NNCFLAG(parameters)
#
# ARGS
#   parameters      SET_NNCFLAG - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_NNCFLAG
#
# RETURNS
#   parameters      SET_NNCFLAGResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_NNCFLAGResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_NNCFLAG(parameters)

# SYNOPSIS
#   LST_NNCFLAG(parameters)
#
# ARGS
#   parameters      LST_NNCFLAG - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NNCFLAG
#
# RETURNS
#   parameters      LST_NNCFLAGResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NNCFLAGResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_NNCFLAG(parameters)

# SYNOPSIS
#   ADD_NNRLI(parameters)
#
# ARGS
#   parameters      ADD_NNRLI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_NNRLI
#
# RETURNS
#   parameters      ADD_NNRLIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_NNRLIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_NNRLI(parameters)

# SYNOPSIS
#   RMV_NNRLI(parameters)
#
# ARGS
#   parameters      RMV_NNRLI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_NNRLI
#
# RETURNS
#   parameters      RMV_NNRLIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_NNRLIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_NNRLI(parameters)

# SYNOPSIS
#   MOD_NNRLI(parameters)
#
# ARGS
#   parameters      MOD_NNRLI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_NNRLI
#
# RETURNS
#   parameters      MOD_NNRLIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_NNRLIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_NNRLI(parameters)

# SYNOPSIS
#   LST_NNRLI(parameters)
#
# ARGS
#   parameters      LST_NNRLI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NNRLI
#
# RETURNS
#   parameters      LST_NNRLIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NNRLIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_NNRLI(parameters)

# SYNOPSIS
#   ADD_ASSPID(parameters)
#
# ARGS
#   parameters      ADD_ASSPID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_ASSPID
#
# RETURNS
#   parameters      ADD_ASSPIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_ASSPIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_ASSPID(parameters)

# SYNOPSIS
#   RMV_ASSPID(parameters)
#
# ARGS
#   parameters      RMV_ASSPID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_ASSPID
#
# RETURNS
#   parameters      RMV_ASSPIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_ASSPIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_ASSPID(parameters)

# SYNOPSIS
#   LST_ASSPID(parameters)
#
# ARGS
#   parameters      LST_ASSPID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASSPID
#
# RETURNS
#   parameters      LST_ASSPIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASSPIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_ASSPID(parameters)

# SYNOPSIS
#   SET_ALIASPU(parameters)
#
# ARGS
#   parameters      SET_ALIASPU - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_ALIASPU
#
# RETURNS
#   parameters      SET_ALIASPUResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_ALIASPUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_ALIASPU(parameters)

# SYNOPSIS
#   SET_REPDATA(parameters)
#
# ARGS
#   parameters      SET_REPDATA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_REPDATA
#
# RETURNS
#   parameters      SET_REPDATAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_REPDATAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_REPDATA(parameters)

# SYNOPSIS
#   LST_SRVIND(parameters)
#
# ARGS
#   parameters      LST_SRVIND - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SRVIND
#
# RETURNS
#   parameters      LST_SRVINDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SRVINDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_SRVIND(parameters)

# SYNOPSIS
#   LST_REPDATA(parameters)
#
# ARGS
#   parameters      LST_REPDATA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_REPDATA
#
# RETURNS
#   parameters      LST_REPDATAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_REPDATAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_REPDATA(parameters)

# SYNOPSIS
#   LST_DALI(parameters)
#
# ARGS
#   parameters      LST_DALI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_DALI
#
# RETURNS
#   parameters      LST_DALIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_DALIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_DALI(parameters)

# SYNOPSIS
#   ADD_IMSI(parameters)
#
# ARGS
#   parameters      ADD_IMSI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_IMSI
#
# RETURNS
#   parameters      ADD_IMSIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_IMSIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_IMSI(parameters)

# SYNOPSIS
#   RMV_IMSI(parameters)
#
# ARGS
#   parameters      RMV_IMSI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_IMSI
#
# RETURNS
#   parameters      RMV_IMSIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_IMSIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_IMSI(parameters)

# SYNOPSIS
#   MOD_IMSI(parameters)
#
# ARGS
#   parameters      MOD_IMSI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_IMSI
#
# RETURNS
#   parameters      MOD_IMSIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_IMSIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_IMSI(parameters)

# SYNOPSIS
#   ADD_ISDN(parameters)
#
# ARGS
#   parameters      ADD_ISDN - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_ISDN
#
# RETURNS
#   parameters      ADD_ISDNResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_ISDNResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_ISDN(parameters)

# SYNOPSIS
#   RMV_ISDN(parameters)
#
# ARGS
#   parameters      RMV_ISDN - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_ISDN
#
# RETURNS
#   parameters      RMV_ISDNResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_ISDNResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_ISDN(parameters)

# SYNOPSIS
#   MOD_ISDN(parameters)
#
# ARGS
#   parameters      MOD_ISDN - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_ISDN
#
# RETURNS
#   parameters      MOD_ISDNResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_ISDNResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_ISDN(parameters)

# SYNOPSIS
#   LST_MSID(parameters)
#
# ARGS
#   parameters      LST_MSID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_MSID
#
# RETURNS
#   parameters      LST_MSIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_MSIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_MSID(parameters)

# SYNOPSIS
#   ADD_ASSOC(parameters)
#
# ARGS
#   parameters      ADD_ASSOC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_ASSOC
#
# RETURNS
#   parameters      ADD_ASSOCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_ASSOCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_ASSOC(parameters)

# SYNOPSIS
#   RMV_ASSOC(parameters)
#
# ARGS
#   parameters      RMV_ASSOC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_ASSOC
#
# RETURNS
#   parameters      RMV_ASSOCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_ASSOCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_ASSOC(parameters)

# SYNOPSIS
#   LST_ASSOC(parameters)
#
# ARGS
#   parameters      LST_ASSOC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASSOC
#
# RETURNS
#   parameters      LST_ASSOCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ASSOCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_ASSOC(parameters)

# SYNOPSIS
#   ADD_NBAINF(parameters)
#
# ARGS
#   parameters      ADD_NBAINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_NBAINF
#
# RETURNS
#   parameters      ADD_NBAINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_NBAINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_NBAINF(parameters)

# SYNOPSIS
#   RMV_NBAINF(parameters)
#
# ARGS
#   parameters      RMV_NBAINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_NBAINF
#
# RETURNS
#   parameters      RMV_NBAINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_NBAINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_NBAINF(parameters)

# SYNOPSIS
#   LST_NBAINF(parameters)
#
# ARGS
#   parameters      LST_NBAINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NBAINF
#
# RETURNS
#   parameters      LST_NBAINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NBAINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_NBAINF(parameters)

# SYNOPSIS
#   ADD_CHGTPL(parameters)
#
# ARGS
#   parameters      ADD_CHGTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_CHGTPL
#
# RETURNS
#   parameters      ADD_CHGTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_CHGTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_CHGTPL(parameters)

# SYNOPSIS
#   RMV_CHGTPL(parameters)
#
# ARGS
#   parameters      RMV_CHGTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_CHGTPL
#
# RETURNS
#   parameters      RMV_CHGTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_CHGTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_CHGTPL(parameters)

# SYNOPSIS
#   MOD_CHGTPL(parameters)
#
# ARGS
#   parameters      MOD_CHGTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_CHGTPL
#
# RETURNS
#   parameters      MOD_CHGTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_CHGTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_CHGTPL(parameters)

# SYNOPSIS
#   LST_CHGTPL(parameters)
#
# ARGS
#   parameters      LST_CHGTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CHGTPL
#
# RETURNS
#   parameters      LST_CHGTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CHGTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_CHGTPL(parameters)

# SYNOPSIS
#   ADD_VNTPL(parameters)
#
# ARGS
#   parameters      ADD_VNTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_VNTPL
#
# RETURNS
#   parameters      ADD_VNTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_VNTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_VNTPL(parameters)

# SYNOPSIS
#   RMV_VNTPL(parameters)
#
# ARGS
#   parameters      RMV_VNTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_VNTPL
#
# RETURNS
#   parameters      RMV_VNTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_VNTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_VNTPL(parameters)

# SYNOPSIS
#   MOD_VNTPL(parameters)
#
# ARGS
#   parameters      MOD_VNTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_VNTPL
#
# RETURNS
#   parameters      MOD_VNTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_VNTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_VNTPL(parameters)

# SYNOPSIS
#   LST_VNTPL(parameters)
#
# ARGS
#   parameters      LST_VNTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNTPL
#
# RETURNS
#   parameters      LST_VNTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_VNTPL(parameters)

# SYNOPSIS
#   ADD_VNTPLADDR(parameters)
#
# ARGS
#   parameters      ADD_VNTPLADDR - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_VNTPLADDR
#
# RETURNS
#   parameters      ADD_VNTPLADDRResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_VNTPLADDRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_VNTPLADDR(parameters)

# SYNOPSIS
#   RMV_VNTPLADDR(parameters)
#
# ARGS
#   parameters      RMV_VNTPLADDR - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_VNTPLADDR
#
# RETURNS
#   parameters      RMV_VNTPLADDRResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_VNTPLADDRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_VNTPLADDR(parameters)

# SYNOPSIS
#   LST_VNTPLADDR(parameters)
#
# ARGS
#   parameters      LST_VNTPLADDR - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNTPLADDR
#
# RETURNS
#   parameters      LST_VNTPLADDRResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_VNTPLADDRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_VNTPLADDR(parameters)

# SYNOPSIS
#   ADD_NATPL(parameters)
#
# ARGS
#   parameters      ADD_NATPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_NATPL
#
# RETURNS
#   parameters      ADD_NATPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_NATPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_NATPL(parameters)

# SYNOPSIS
#   RMV_NATPL(parameters)
#
# ARGS
#   parameters      RMV_NATPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_NATPL
#
# RETURNS
#   parameters      RMV_NATPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_NATPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_NATPL(parameters)

# SYNOPSIS
#   MOD_NATPL(parameters)
#
# ARGS
#   parameters      MOD_NATPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_NATPL
#
# RETURNS
#   parameters      MOD_NATPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_NATPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_NATPL(parameters)

# SYNOPSIS
#   LST_NATPL(parameters)
#
# ARGS
#   parameters      LST_NATPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NATPL
#
# RETURNS
#   parameters      LST_NATPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NATPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_NATPL(parameters)

# SYNOPSIS
#   ADD_NATPLADDR(parameters)
#
# ARGS
#   parameters      ADD_NATPLADDR - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_NATPLADDR
#
# RETURNS
#   parameters      ADD_NATPLADDRResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_NATPLADDRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_NATPLADDR(parameters)

# SYNOPSIS
#   RMV_NATPLADDR(parameters)
#
# ARGS
#   parameters      RMV_NATPLADDR - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_NATPLADDR
#
# RETURNS
#   parameters      RMV_NATPLADDRResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_NATPLADDRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_NATPLADDR(parameters)

# SYNOPSIS
#   LST_NATPLADDR(parameters)
#
# ARGS
#   parameters      LST_NATPLADDR - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NATPLADDR
#
# RETURNS
#   parameters      LST_NATPLADDRResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_NATPLADDRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_NATPLADDR(parameters)

# SYNOPSIS
#   ADD_OCSITPL(parameters)
#
# ARGS
#   parameters      ADD_OCSITPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_OCSITPL
#
# RETURNS
#   parameters      ADD_OCSITPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_OCSITPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_OCSITPL(parameters)

# SYNOPSIS
#   RMV_OCSITPL(parameters)
#
# ARGS
#   parameters      RMV_OCSITPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_OCSITPL
#
# RETURNS
#   parameters      RMV_OCSITPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_OCSITPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_OCSITPL(parameters)

# SYNOPSIS
#   MOD_OCSITPL(parameters)
#
# ARGS
#   parameters      MOD_OCSITPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_OCSITPL
#
# RETURNS
#   parameters      MOD_OCSITPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_OCSITPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_OCSITPL(parameters)

# SYNOPSIS
#   LST_OCSITPL(parameters)
#
# ARGS
#   parameters      LST_OCSITPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_OCSITPL
#
# RETURNS
#   parameters      LST_OCSITPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_OCSITPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_OCSITPL(parameters)

# SYNOPSIS
#   ADD_TCSITPL(parameters)
#
# ARGS
#   parameters      ADD_TCSITPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TCSITPL
#
# RETURNS
#   parameters      ADD_TCSITPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_TCSITPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_TCSITPL(parameters)

# SYNOPSIS
#   RMV_TCSITPL(parameters)
#
# ARGS
#   parameters      RMV_TCSITPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_TCSITPL
#
# RETURNS
#   parameters      RMV_TCSITPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_TCSITPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_TCSITPL(parameters)

# SYNOPSIS
#   MOD_TCSITPL(parameters)
#
# ARGS
#   parameters      MOD_TCSITPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_TCSITPL
#
# RETURNS
#   parameters      MOD_TCSITPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_TCSITPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_TCSITPL(parameters)

# SYNOPSIS
#   LST_TCSITPL(parameters)
#
# ARGS
#   parameters      LST_TCSITPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_TCSITPL
#
# RETURNS
#   parameters      LST_TCSITPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_TCSITPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_TCSITPL(parameters)

# SYNOPSIS
#   SET_CSI(parameters)
#
# ARGS
#   parameters      SET_CSI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_CSI
#
# RETURNS
#   parameters      SET_CSIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_CSIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_CSI(parameters)

# SYNOPSIS
#   LST_CSI(parameters)
#
# ARGS
#   parameters      LST_CSI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CSI
#
# RETURNS
#   parameters      LST_CSIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_CSIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_CSI(parameters)

# SYNOPSIS
#   ADD_SERPRV(parameters)
#
# ARGS
#   parameters      ADD_SERPRV - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SERPRV
#
# RETURNS
#   parameters      ADD_SERPRVResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SERPRVResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_SERPRV(parameters)

# SYNOPSIS
#   RMV_SERPRV(parameters)
#
# ARGS
#   parameters      RMV_SERPRV - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SERPRV
#
# RETURNS
#   parameters      RMV_SERPRVResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SERPRVResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_SERPRV(parameters)

# SYNOPSIS
#   MOD_SERPRV(parameters)
#
# ARGS
#   parameters      MOD_SERPRV - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SERPRV
#
# RETURNS
#   parameters      MOD_SERPRVResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SERPRVResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_SERPRV(parameters)

# SYNOPSIS
#   LST_SERPRV(parameters)
#
# ARGS
#   parameters      LST_SERPRV - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SERPRV
#
# RETURNS
#   parameters      LST_SERPRVResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SERPRVResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_SERPRV(parameters)

# SYNOPSIS
#   SET_TAA(parameters)
#
# ARGS
#   parameters      SET_TAA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_TAA
#
# RETURNS
#   parameters      SET_TAAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_TAAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_TAA(parameters)

# SYNOPSIS
#   LST_TAA(parameters)
#
# ARGS
#   parameters      LST_TAA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_TAA
#
# RETURNS
#   parameters      LST_TAAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_TAAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_TAA(parameters)

# SYNOPSIS
#   SET_USRPRIOR(parameters)
#
# ARGS
#   parameters      SET_USRPRIOR - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_USRPRIOR
#
# RETURNS
#   parameters      SET_USRPRIORResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_USRPRIORResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_USRPRIOR(parameters)

# SYNOPSIS
#   LST_USRPRIOR(parameters)
#
# ARGS
#   parameters      LST_USRPRIOR - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_USRPRIOR
#
# RETURNS
#   parameters      LST_USRPRIORResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_USRPRIORResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_USRPRIOR(parameters)

# SYNOPSIS
#   ADD_SDAINF(parameters)
#
# ARGS
#   parameters      ADD_SDAINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SDAINF
#
# RETURNS
#   parameters      ADD_SDAINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SDAINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_SDAINF(parameters)

# SYNOPSIS
#   RMV_SDAINF(parameters)
#
# ARGS
#   parameters      RMV_SDAINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SDAINF
#
# RETURNS
#   parameters      RMV_SDAINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SDAINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_SDAINF(parameters)

# SYNOPSIS
#   MOD_SDAINF(parameters)
#
# ARGS
#   parameters      MOD_SDAINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SDAINF
#
# RETURNS
#   parameters      MOD_SDAINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SDAINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_SDAINF(parameters)

# SYNOPSIS
#   LST_SDAINF(parameters)
#
# ARGS
#   parameters      LST_SDAINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SDAINF
#
# RETURNS
#   parameters      LST_SDAINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SDAINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_SDAINF(parameters)

# SYNOPSIS
#   CHK_SDAPWD(parameters)
#
# ARGS
#   parameters      CHK_SDAPWD - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_SDAPWD
#
# RETURNS
#   parameters      CHK_SDAPWDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_SDAPWDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.cHK_SDAPWD(parameters)

# SYNOPSIS
#   SET_LRI(parameters)
#
# ARGS
#   parameters      SET_LRI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_LRI
#
# RETURNS
#   parameters      SET_LRIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_LRIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_LRI(parameters)

# SYNOPSIS
#   LST_LRI(parameters)
#
# ARGS
#   parameters      LST_LRI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_LRI
#
# RETURNS
#   parameters      LST_LRIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_LRIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_LRI(parameters)

# SYNOPSIS
#   ADD_SIFC(parameters)
#
# ARGS
#   parameters      ADD_SIFC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SIFC
#
# RETURNS
#   parameters      ADD_SIFCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SIFCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_SIFC(parameters)

# SYNOPSIS
#   RMV_SIFC(parameters)
#
# ARGS
#   parameters      RMV_SIFC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SIFC
#
# RETURNS
#   parameters      RMV_SIFCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SIFCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_SIFC(parameters)

# SYNOPSIS
#   MOD_SIFC(parameters)
#
# ARGS
#   parameters      MOD_SIFC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SIFC
#
# RETURNS
#   parameters      MOD_SIFCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SIFCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_SIFC(parameters)

# SYNOPSIS
#   LST_SIFC(parameters)
#
# ARGS
#   parameters      LST_SIFC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SIFC
#
# RETURNS
#   parameters      LST_SIFCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SIFCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_SIFC(parameters)

# SYNOPSIS
#   RMV_ALLIFC(parameters)
#
# ARGS
#   parameters      RMV_ALLIFC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_ALLIFC
#
# RETURNS
#   parameters      RMV_ALLIFCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_ALLIFCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_ALLIFC(parameters)

# SYNOPSIS
#   ADD_SIFCTPL(parameters)
#
# ARGS
#   parameters      ADD_SIFCTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SIFCTPL
#
# RETURNS
#   parameters      ADD_SIFCTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SIFCTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_SIFCTPL(parameters)

# SYNOPSIS
#   RMV_SIFCTPL(parameters)
#
# ARGS
#   parameters      RMV_SIFCTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SIFCTPL
#
# RETURNS
#   parameters      RMV_SIFCTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SIFCTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_SIFCTPL(parameters)

# SYNOPSIS
#   MOD_SIFCTPL(parameters)
#
# ARGS
#   parameters      MOD_SIFCTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SIFCTPL
#
# RETURNS
#   parameters      MOD_SIFCTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SIFCTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_SIFCTPL(parameters)

# SYNOPSIS
#   LST_SIFCTPL(parameters)
#
# ARGS
#   parameters      LST_SIFCTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SIFCTPL
#
# RETURNS
#   parameters      LST_SIFCTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SIFCTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_SIFCTPL(parameters)

# SYNOPSIS
#   ADD_SIFCINF(parameters)
#
# ARGS
#   parameters      ADD_SIFCINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SIFCINF
#
# RETURNS
#   parameters      ADD_SIFCINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_SIFCINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_SIFCINF(parameters)

# SYNOPSIS
#   RMV_SIFCINF(parameters)
#
# ARGS
#   parameters      RMV_SIFCINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SIFCINF
#
# RETURNS
#   parameters      RMV_SIFCINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_SIFCINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_SIFCINF(parameters)

# SYNOPSIS
#   MOD_SIFCINF(parameters)
#
# ARGS
#   parameters      MOD_SIFCINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SIFCINF
#
# RETURNS
#   parameters      MOD_SIFCINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_SIFCINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_SIFCINF(parameters)

# SYNOPSIS
#   LST_SIFCINF(parameters)
#
# ARGS
#   parameters      LST_SIFCINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SIFCINF
#
# RETURNS
#   parameters      LST_SIFCINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_SIFCINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_SIFCINF(parameters)

# SYNOPSIS
#   SET_ESRN(parameters)
#
# ARGS
#   parameters      SET_ESRN - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_ESRN
#
# RETURNS
#   parameters      SET_ESRNResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_ESRNResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_ESRN(parameters)

# SYNOPSIS
#   LST_ESRN(parameters)
#
# ARGS
#   parameters      LST_ESRN - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ESRN
#
# RETURNS
#   parameters      LST_ESRNResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ESRNResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_ESRN(parameters)

# SYNOPSIS
#   ADD_ONEKEY(parameters)
#
# ARGS
#   parameters      ADD_ONEKEY - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_ONEKEY
#
# RETURNS
#   parameters      ADD_ONEKEYResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_ONEKEYResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_ONEKEY(parameters)

# SYNOPSIS
#   MOD_ONEKEY(parameters)
#
# ARGS
#   parameters      MOD_ONEKEY - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_ONEKEY
#
# RETURNS
#   parameters      MOD_ONEKEYResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_ONEKEYResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_ONEKEY(parameters)

# SYNOPSIS
#   LST_ONEKEY(parameters)
#
# ARGS
#   parameters      LST_ONEKEY - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ONEKEY
#
# RETURNS
#   parameters      LST_ONEKEYResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_ONEKEYResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_ONEKEY(parameters)

# SYNOPSIS
#   RMV_ONEKEY(parameters)
#
# ARGS
#   parameters      RMV_ONEKEY - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_ONEKEY
#
# RETURNS
#   parameters      RMV_ONEKEYResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_ONEKEYResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_ONEKEY(parameters)

# SYNOPSIS
#   RMV_ASIFC(parameters)
#
# ARGS
#   parameters      RMV_ASIFC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_ASIFC
#
# RETURNS
#   parameters      RMV_ASIFCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_ASIFCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_ASIFC(parameters)

# SYNOPSIS
#   ADD_HOP(parameters)
#
# ARGS
#   parameters      ADD_HOP - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HOP
#
# RETURNS
#   parameters      ADD_HOPResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HOPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HOP(parameters)

# SYNOPSIS
#   RMV_HOP(parameters)
#
# ARGS
#   parameters      RMV_HOP - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HOP
#
# RETURNS
#   parameters      RMV_HOPResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HOPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HOP(parameters)

# SYNOPSIS
#   MOD_HOP(parameters)
#
# ARGS
#   parameters      MOD_HOP - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HOP
#
# RETURNS
#   parameters      MOD_HOPResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HOPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HOP(parameters)

# SYNOPSIS
#   LST_HOP(parameters)
#
# ARGS
#   parameters      LST_HOP - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HOP
#
# RETURNS
#   parameters      LST_HOPResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HOPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HOP(parameters)

# SYNOPSIS
#   CHK_HOP(parameters)
#
# ARGS
#   parameters      CHK_HOP - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HOP
#
# RETURNS
#   parameters      CHK_HOPResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HOPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.cHK_HOP(parameters)

# SYNOPSIS
#   ADD_HAMF(parameters)
#
# ARGS
#   parameters      ADD_HAMF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HAMF
#
# RETURNS
#   parameters      ADD_HAMFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HAMFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HAMF(parameters)

# SYNOPSIS
#   RMV_HAMF(parameters)
#
# ARGS
#   parameters      RMV_HAMF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HAMF
#
# RETURNS
#   parameters      RMV_HAMFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HAMFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HAMF(parameters)

# SYNOPSIS
#   MOD_HAMF(parameters)
#
# ARGS
#   parameters      MOD_HAMF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HAMF
#
# RETURNS
#   parameters      MOD_HAMFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HAMFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HAMF(parameters)

# SYNOPSIS
#   LST_HAMF(parameters)
#
# ARGS
#   parameters      LST_HAMF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAMF
#
# RETURNS
#   parameters      LST_HAMFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAMFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HAMF(parameters)

# SYNOPSIS
#   CHK_HAMF(parameters)
#
# ARGS
#   parameters      CHK_HAMF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HAMF
#
# RETURNS
#   parameters      CHK_HAMFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HAMFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.cHK_HAMF(parameters)

# SYNOPSIS
#   ADD_HK4(parameters)
#
# ARGS
#   parameters      ADD_HK4 - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HK4
#
# RETURNS
#   parameters      ADD_HK4Response - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HK4Response
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HK4(parameters)

# SYNOPSIS
#   RMV_HK4(parameters)
#
# ARGS
#   parameters      RMV_HK4 - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HK4
#
# RETURNS
#   parameters      RMV_HK4Response - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HK4Response
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HK4(parameters)

# SYNOPSIS
#   MOD_HK4(parameters)
#
# ARGS
#   parameters      MOD_HK4 - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HK4
#
# RETURNS
#   parameters      MOD_HK4Response - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HK4Response
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HK4(parameters)

# SYNOPSIS
#   LST_HK4(parameters)
#
# ARGS
#   parameters      LST_HK4 - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HK4
#
# RETURNS
#   parameters      LST_HK4Response - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HK4Response
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HK4(parameters)

# SYNOPSIS
#   CHK_HK4(parameters)
#
# ARGS
#   parameters      CHK_HK4 - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HK4
#
# RETURNS
#   parameters      CHK_HK4Response - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HK4Response
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.cHK_HK4(parameters)

# SYNOPSIS
#   ADD_HKI(parameters)
#
# ARGS
#   parameters      ADD_HKI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HKI
#
# RETURNS
#   parameters      ADD_HKIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HKIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HKI(parameters)

# SYNOPSIS
#   RMV_HKI(parameters)
#
# ARGS
#   parameters      RMV_HKI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HKI
#
# RETURNS
#   parameters      RMV_HKIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HKIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HKI(parameters)

# SYNOPSIS
#   MOD_HKI(parameters)
#
# ARGS
#   parameters      MOD_HKI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HKI
#
# RETURNS
#   parameters      MOD_HKIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HKIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HKI(parameters)

# SYNOPSIS
#   LST_HKI(parameters)
#
# ARGS
#   parameters      LST_HKI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HKI
#
# RETURNS
#   parameters      LST_HKIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HKIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HKI(parameters)

# SYNOPSIS
#   CHK_HKI(parameters)
#
# ARGS
#   parameters      CHK_HKI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HKI
#
# RETURNS
#   parameters      CHK_HKIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HKIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.cHK_HKI(parameters)

# SYNOPSIS
#   CHK_HOPC(parameters)
#
# ARGS
#   parameters      CHK_HOPC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HOPC
#
# RETURNS
#   parameters      CHK_HOPCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HOPCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.cHK_HOPC(parameters)

# SYNOPSIS
#   ADD_HSUB(parameters)
#
# ARGS
#   parameters      ADD_HSUB - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSUB
#
# RETURNS
#   parameters      ADD_HSUBResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSUBResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HSUB(parameters)

# SYNOPSIS
#   RMV_HSUB(parameters)
#
# ARGS
#   parameters      RMV_HSUB - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSUB
#
# RETURNS
#   parameters      RMV_HSUBResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSUBResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HSUB(parameters)

# SYNOPSIS
#   MOD_HSUBID(parameters)
#
# ARGS
#   parameters      MOD_HSUBID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSUBID
#
# RETURNS
#   parameters      MOD_HSUBIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSUBIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HSUBID(parameters)

# SYNOPSIS
#   LST_HSUB(parameters)
#
# ARGS
#   parameters      LST_HSUB - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSUB
#
# RETURNS
#   parameters      LST_HSUBResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSUBResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HSUB(parameters)

# SYNOPSIS
#   ADD_HIMPI(parameters)
#
# ARGS
#   parameters      ADD_HIMPI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HIMPI
#
# RETURNS
#   parameters      ADD_HIMPIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HIMPIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HIMPI(parameters)

# SYNOPSIS
#   RMV_HIMPI(parameters)
#
# ARGS
#   parameters      RMV_HIMPI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HIMPI
#
# RETURNS
#   parameters      RMV_HIMPIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HIMPIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HIMPI(parameters)

# SYNOPSIS
#   MOD_HIMPI(parameters)
#
# ARGS
#   parameters      MOD_HIMPI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HIMPI
#
# RETURNS
#   parameters      MOD_HIMPIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HIMPIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HIMPI(parameters)

# SYNOPSIS
#   ADD_HIMPU(parameters)
#
# ARGS
#   parameters      ADD_HIMPU - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HIMPU
#
# RETURNS
#   parameters      ADD_HIMPUResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HIMPUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HIMPU(parameters)

# SYNOPSIS
#   RMV_HIMPU(parameters)
#
# ARGS
#   parameters      RMV_HIMPU - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HIMPU
#
# RETURNS
#   parameters      RMV_HIMPUResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HIMPUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HIMPU(parameters)

# SYNOPSIS
#   MOD_HIMPU(parameters)
#
# ARGS
#   parameters      MOD_HIMPU - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HIMPU
#
# RETURNS
#   parameters      MOD_HIMPUResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HIMPUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HIMPU(parameters)

# SYNOPSIS
#   SET_HIMPUSHARE(parameters)
#
# ARGS
#   parameters      SET_HIMPUSHARE - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HIMPUSHARE
#
# RETURNS
#   parameters      SET_HIMPUSHAREResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HIMPUSHAREResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HIMPUSHARE(parameters)

# SYNOPSIS
#   SET_HIRS(parameters)
#
# ARGS
#   parameters      SET_HIRS - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HIRS
#
# RETURNS
#   parameters      SET_HIRSResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HIRSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HIRS(parameters)

# SYNOPSIS
#   SET_HDEFIMPU(parameters)
#
# ARGS
#   parameters      SET_HDEFIMPU - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HDEFIMPU
#
# RETURNS
#   parameters      SET_HDEFIMPUResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HDEFIMPUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HDEFIMPU(parameters)

# SYNOPSIS
#   SET_HCHARGID(parameters)
#
# ARGS
#   parameters      SET_HCHARGID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HCHARGID
#
# RETURNS
#   parameters      SET_HCHARGIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HCHARGIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HCHARGID(parameters)

# SYNOPSIS
#   LST_HCHARGID(parameters)
#
# ARGS
#   parameters      LST_HCHARGID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCHARGID
#
# RETURNS
#   parameters      LST_HCHARGIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCHARGIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HCHARGID(parameters)

# SYNOPSIS
#   SET_HBAR(parameters)
#
# ARGS
#   parameters      SET_HBAR - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HBAR
#
# RETURNS
#   parameters      SET_HBARResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HBARResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HBAR(parameters)

# SYNOPSIS
#   LST_HBAR(parameters)
#
# ARGS
#   parameters      LST_HBAR - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HBAR
#
# RETURNS
#   parameters      LST_HBARResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HBARResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HBAR(parameters)

# SYNOPSIS
#   SET_HREGAUTH(parameters)
#
# ARGS
#   parameters      SET_HREGAUTH - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HREGAUTH
#
# RETURNS
#   parameters      SET_HREGAUTHResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HREGAUTHResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HREGAUTH(parameters)

# SYNOPSIS
#   LST_HREGAUTH(parameters)
#
# ARGS
#   parameters      LST_HREGAUTH - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HREGAUTH
#
# RETURNS
#   parameters      LST_HREGAUTHResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HREGAUTHResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HREGAUTH(parameters)

# SYNOPSIS
#   SET_HVNTPLID(parameters)
#
# ARGS
#   parameters      SET_HVNTPLID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HVNTPLID
#
# RETURNS
#   parameters      SET_HVNTPLIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HVNTPLIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HVNTPLID(parameters)

# SYNOPSIS
#   LST_HVNTPLID(parameters)
#
# ARGS
#   parameters      LST_HVNTPLID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNTPLID
#
# RETURNS
#   parameters      LST_HVNTPLIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNTPLIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HVNTPLID(parameters)

# SYNOPSIS
#   SET_HMEDIAID(parameters)
#
# ARGS
#   parameters      SET_HMEDIAID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HMEDIAID
#
# RETURNS
#   parameters      SET_HMEDIAIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HMEDIAIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HMEDIAID(parameters)

# SYNOPSIS
#   LST_HMEDIAID(parameters)
#
# ARGS
#   parameters      LST_HMEDIAID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HMEDIAID
#
# RETURNS
#   parameters      LST_HMEDIAIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HMEDIAIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HMEDIAID(parameters)

# SYNOPSIS
#   SET_HMOCAP(parameters)
#
# ARGS
#   parameters      SET_HMOCAP - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HMOCAP
#
# RETURNS
#   parameters      SET_HMOCAPResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HMOCAPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HMOCAP(parameters)

# SYNOPSIS
#   LST_HMOCAP(parameters)
#
# ARGS
#   parameters      LST_HMOCAP - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HMOCAP
#
# RETURNS
#   parameters      LST_HMOCAPResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HMOCAPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HMOCAP(parameters)

# SYNOPSIS
#   SET_HEIA(parameters)
#
# ARGS
#   parameters      SET_HEIA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HEIA
#
# RETURNS
#   parameters      SET_HEIAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HEIAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HEIA(parameters)

# SYNOPSIS
#   LST_HEIA(parameters)
#
# ARGS
#   parameters      LST_HEIA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HEIA
#
# RETURNS
#   parameters      LST_HEIAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HEIAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HEIA(parameters)

# SYNOPSIS
#   SET_HEAA(parameters)
#
# ARGS
#   parameters      SET_HEAA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HEAA
#
# RETURNS
#   parameters      SET_HEAAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HEAAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HEAA(parameters)

# SYNOPSIS
#   LST_HEAA(parameters)
#
# ARGS
#   parameters      LST_HEAA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HEAA
#
# RETURNS
#   parameters      LST_HEAAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HEAAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HEAA(parameters)

# SYNOPSIS
#   SET_HAS(parameters)
#
# ARGS
#   parameters      SET_HAS - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HAS
#
# RETURNS
#   parameters      SET_HASResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HASResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HAS(parameters)

# SYNOPSIS
#   LST_HAS(parameters)
#
# ARGS
#   parameters      LST_HAS - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAS
#
# RETURNS
#   parameters      LST_HASResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HAS(parameters)

# SYNOPSIS
#   SET_HVNCFLAG(parameters)
#
# ARGS
#   parameters      SET_HVNCFLAG - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HVNCFLAG
#
# RETURNS
#   parameters      SET_HVNCFLAGResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HVNCFLAGResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HVNCFLAG(parameters)

# SYNOPSIS
#   LST_HVNCFLAG(parameters)
#
# ARGS
#   parameters      LST_HVNCFLAG - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNCFLAG
#
# RETURNS
#   parameters      LST_HVNCFLAGResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNCFLAGResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HVNCFLAG(parameters)

# SYNOPSIS
#   ADD_HIFC(parameters)
#
# ARGS
#   parameters      ADD_HIFC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HIFC
#
# RETURNS
#   parameters      ADD_HIFCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HIFCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HIFC(parameters)

# SYNOPSIS
#   RMV_HIFC(parameters)
#
# ARGS
#   parameters      RMV_HIFC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HIFC
#
# RETURNS
#   parameters      RMV_HIFCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HIFCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HIFC(parameters)

# SYNOPSIS
#   MOD_HIFC(parameters)
#
# ARGS
#   parameters      MOD_HIFC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HIFC
#
# RETURNS
#   parameters      MOD_HIFCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HIFCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HIFC(parameters)

# SYNOPSIS
#   LST_HIFC(parameters)
#
# ARGS
#   parameters      LST_HIFC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HIFC
#
# RETURNS
#   parameters      LST_HIFCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HIFCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HIFC(parameters)

# SYNOPSIS
#   ADD_HCAPSCSCF(parameters)
#
# ARGS
#   parameters      ADD_HCAPSCSCF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HCAPSCSCF
#
# RETURNS
#   parameters      ADD_HCAPSCSCFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HCAPSCSCFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HCAPSCSCF(parameters)

# SYNOPSIS
#   RMV_HCAPSCSCF(parameters)
#
# ARGS
#   parameters      RMV_HCAPSCSCF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HCAPSCSCF
#
# RETURNS
#   parameters      RMV_HCAPSCSCFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HCAPSCSCFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HCAPSCSCF(parameters)

# SYNOPSIS
#   LST_HCAPSCSCF(parameters)
#
# ARGS
#   parameters      LST_HCAPSCSCF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCAPSCSCF
#
# RETURNS
#   parameters      LST_HCAPSCSCFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCAPSCSCFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HCAPSCSCF(parameters)

# SYNOPSIS
#   SET_HSPSHARE(parameters)
#
# ARGS
#   parameters      SET_HSPSHARE - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HSPSHARE
#
# RETURNS
#   parameters      SET_HSPSHAREResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HSPSHAREResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HSPSHARE(parameters)

# SYNOPSIS
#   RMV_HSPSHARE(parameters)
#
# ARGS
#   parameters      RMV_HSPSHARE - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSPSHARE
#
# RETURNS
#   parameters      RMV_HSPSHAREResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSPSHAREResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HSPSHARE(parameters)

# SYNOPSIS
#   LST_HSPSHARE(parameters)
#
# ARGS
#   parameters      LST_HSPSHARE - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSPSHARE
#
# RETURNS
#   parameters      LST_HSPSHAREResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSPSHAREResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HSPSHARE(parameters)

# SYNOPSIS
#   DRG_HUSER(parameters)
#
# ARGS
#   parameters      DRG_HUSER - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}DRG_HUSER
#
# RETURNS
#   parameters      DRG_HUSERResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}DRG_HUSERResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.dRG_HUSER(parameters)

# SYNOPSIS
#   LST_HDYNDATA(parameters)
#
# ARGS
#   parameters      LST_HDYNDATA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HDYNDATA
#
# RETURNS
#   parameters      LST_HDYNDATAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HDYNDATAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HDYNDATA(parameters)

# SYNOPSIS
#   LST_HASSUBDATA(parameters)
#
# ARGS
#   parameters      LST_HASSUBDATA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASSUBDATA
#
# RETURNS
#   parameters      LST_HASSUBDATAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASSUBDATAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HASSUBDATA(parameters)

# SYNOPSIS
#   ADD_HPSI(parameters)
#
# ARGS
#   parameters      ADD_HPSI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HPSI
#
# RETURNS
#   parameters      ADD_HPSIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HPSIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HPSI(parameters)

# SYNOPSIS
#   RMV_HPSI(parameters)
#
# ARGS
#   parameters      RMV_HPSI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HPSI
#
# RETURNS
#   parameters      RMV_HPSIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HPSIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HPSI(parameters)

# SYNOPSIS
#   LST_HPSI(parameters)
#
# ARGS
#   parameters      LST_HPSI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPSI
#
# RETURNS
#   parameters      LST_HPSIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPSIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HPSI(parameters)

# SYNOPSIS
#   ADD_HHDAINF(parameters)
#
# ARGS
#   parameters      ADD_HHDAINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HHDAINF
#
# RETURNS
#   parameters      ADD_HHDAINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HHDAINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HHDAINF(parameters)

# SYNOPSIS
#   RMV_HHDAINF(parameters)
#
# ARGS
#   parameters      RMV_HHDAINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HHDAINF
#
# RETURNS
#   parameters      RMV_HHDAINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HHDAINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HHDAINF(parameters)

# SYNOPSIS
#   MOD_HHDAINF(parameters)
#
# ARGS
#   parameters      MOD_HHDAINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HHDAINF
#
# RETURNS
#   parameters      MOD_HHDAINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HHDAINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HHDAINF(parameters)

# SYNOPSIS
#   LST_HHDAINF(parameters)
#
# ARGS
#   parameters      LST_HHDAINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HHDAINF
#
# RETURNS
#   parameters      LST_HHDAINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HHDAINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HHDAINF(parameters)

# SYNOPSIS
#   CHK_HHDAPWD(parameters)
#
# ARGS
#   parameters      CHK_HHDAPWD - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HHDAPWD
#
# RETURNS
#   parameters      CHK_HHDAPWDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HHDAPWDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.cHK_HHDAPWD(parameters)

# SYNOPSIS
#   ADD_HIMPUTPL(parameters)
#
# ARGS
#   parameters      ADD_HIMPUTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HIMPUTPL
#
# RETURNS
#   parameters      ADD_HIMPUTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HIMPUTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HIMPUTPL(parameters)

# SYNOPSIS
#   RMV_HIMPUTPL(parameters)
#
# ARGS
#   parameters      RMV_HIMPUTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HIMPUTPL
#
# RETURNS
#   parameters      RMV_HIMPUTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HIMPUTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HIMPUTPL(parameters)

# SYNOPSIS
#   MOD_HIMPUTPL(parameters)
#
# ARGS
#   parameters      MOD_HIMPUTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HIMPUTPL
#
# RETURNS
#   parameters      MOD_HIMPUTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HIMPUTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HIMPUTPL(parameters)

# SYNOPSIS
#   LST_HIMPUTPL(parameters)
#
# ARGS
#   parameters      LST_HIMPUTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HIMPUTPL
#
# RETURNS
#   parameters      LST_HIMPUTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HIMPUTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HIMPUTPL(parameters)

# SYNOPSIS
#   ADD_HPUSITPL(parameters)
#
# ARGS
#   parameters      ADD_HPUSITPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HPUSITPL
#
# RETURNS
#   parameters      ADD_HPUSITPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HPUSITPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HPUSITPL(parameters)

# SYNOPSIS
#   RMV_HPUSITPL(parameters)
#
# ARGS
#   parameters      RMV_HPUSITPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HPUSITPL
#
# RETURNS
#   parameters      RMV_HPUSITPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HPUSITPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HPUSITPL(parameters)

# SYNOPSIS
#   MOD_HPUSITPL(parameters)
#
# ARGS
#   parameters      MOD_HPUSITPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HPUSITPL
#
# RETURNS
#   parameters      MOD_HPUSITPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HPUSITPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HPUSITPL(parameters)

# SYNOPSIS
#   LST_HPUSITPL(parameters)
#
# ARGS
#   parameters      LST_HPUSITPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPUSITPL
#
# RETURNS
#   parameters      LST_HPUSITPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPUSITPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HPUSITPL(parameters)

# SYNOPSIS
#   ADD_HIFCTPL(parameters)
#
# ARGS
#   parameters      ADD_HIFCTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HIFCTPL
#
# RETURNS
#   parameters      ADD_HIFCTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HIFCTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HIFCTPL(parameters)

# SYNOPSIS
#   RMV_HIFCTPL(parameters)
#
# ARGS
#   parameters      RMV_HIFCTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HIFCTPL
#
# RETURNS
#   parameters      RMV_HIFCTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HIFCTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HIFCTPL(parameters)

# SYNOPSIS
#   MOD_HIFCTPL(parameters)
#
# ARGS
#   parameters      MOD_HIFCTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HIFCTPL
#
# RETURNS
#   parameters      MOD_HIFCTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HIFCTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HIFCTPL(parameters)

# SYNOPSIS
#   LST_HIFCTPL(parameters)
#
# ARGS
#   parameters      LST_HIFCTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HIFCTPL
#
# RETURNS
#   parameters      LST_HIFCTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HIFCTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HIFCTPL(parameters)

# SYNOPSIS
#   ADD_HSPTPL(parameters)
#
# ARGS
#   parameters      ADD_HSPTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSPTPL
#
# RETURNS
#   parameters      ADD_HSPTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSPTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HSPTPL(parameters)

# SYNOPSIS
#   RMV_HSPTPL(parameters)
#
# ARGS
#   parameters      RMV_HSPTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSPTPL
#
# RETURNS
#   parameters      RMV_HSPTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSPTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HSPTPL(parameters)

# SYNOPSIS
#   MOD_HSPTPL(parameters)
#
# ARGS
#   parameters      MOD_HSPTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSPTPL
#
# RETURNS
#   parameters      MOD_HSPTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSPTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HSPTPL(parameters)

# SYNOPSIS
#   LST_HSPTPL(parameters)
#
# ARGS
#   parameters      LST_HSPTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSPTPL
#
# RETURNS
#   parameters      LST_HSPTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSPTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HSPTPL(parameters)

# SYNOPSIS
#   ADD_HAKATPL(parameters)
#
# ARGS
#   parameters      ADD_HAKATPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HAKATPL
#
# RETURNS
#   parameters      ADD_HAKATPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HAKATPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HAKATPL(parameters)

# SYNOPSIS
#   RMV_HAKATPL(parameters)
#
# ARGS
#   parameters      RMV_HAKATPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HAKATPL
#
# RETURNS
#   parameters      RMV_HAKATPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HAKATPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HAKATPL(parameters)

# SYNOPSIS
#   MOD_HAKATPL(parameters)
#
# ARGS
#   parameters      MOD_HAKATPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HAKATPL
#
# RETURNS
#   parameters      MOD_HAKATPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HAKATPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HAKATPL(parameters)

# SYNOPSIS
#   LST_HAKATPL(parameters)
#
# ARGS
#   parameters      LST_HAKATPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAKATPL
#
# RETURNS
#   parameters      LST_HAKATPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAKATPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HAKATPL(parameters)

# SYNOPSIS
#   ADD_HCAPTPL(parameters)
#
# ARGS
#   parameters      ADD_HCAPTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HCAPTPL
#
# RETURNS
#   parameters      ADD_HCAPTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HCAPTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HCAPTPL(parameters)

# SYNOPSIS
#   RMV_HCAPTPL(parameters)
#
# ARGS
#   parameters      RMV_HCAPTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HCAPTPL
#
# RETURNS
#   parameters      RMV_HCAPTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HCAPTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HCAPTPL(parameters)

# SYNOPSIS
#   MOD_HCAPTPL(parameters)
#
# ARGS
#   parameters      MOD_HCAPTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HCAPTPL
#
# RETURNS
#   parameters      MOD_HCAPTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HCAPTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HCAPTPL(parameters)

# SYNOPSIS
#   LST_HCAPTPL(parameters)
#
# ARGS
#   parameters      LST_HCAPTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCAPTPL
#
# RETURNS
#   parameters      LST_HCAPTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCAPTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HCAPTPL(parameters)

# SYNOPSIS
#   LST_HTPLINF(parameters)
#
# ARGS
#   parameters      LST_HTPLINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HTPLINF
#
# RETURNS
#   parameters      LST_HTPLINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HTPLINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HTPLINF(parameters)

# SYNOPSIS
#   ADD_HTPLIFC(parameters)
#
# ARGS
#   parameters      ADD_HTPLIFC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLIFC
#
# RETURNS
#   parameters      ADD_HTPLIFCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLIFCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HTPLIFC(parameters)

# SYNOPSIS
#   ADD_HTPLIMPU(parameters)
#
# ARGS
#   parameters      ADD_HTPLIMPU - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLIMPU
#
# RETURNS
#   parameters      ADD_HTPLIMPUResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLIMPUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HTPLIMPU(parameters)

# SYNOPSIS
#   ADD_HTPLKI(parameters)
#
# ARGS
#   parameters      ADD_HTPLKI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLKI
#
# RETURNS
#   parameters      ADD_HTPLKIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLKIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HTPLKI(parameters)

# SYNOPSIS
#   ADD_HTPLPSI(parameters)
#
# ARGS
#   parameters      ADD_HTPLPSI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLPSI
#
# RETURNS
#   parameters      ADD_HTPLPSIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLPSIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HTPLPSI(parameters)

# SYNOPSIS
#   ADD_HTPLPUSI(parameters)
#
# ARGS
#   parameters      ADD_HTPLPUSI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLPUSI
#
# RETURNS
#   parameters      ADD_HTPLPUSIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLPUSIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HTPLPUSI(parameters)

# SYNOPSIS
#   ADD_HTPLSUB(parameters)
#
# ARGS
#   parameters      ADD_HTPLSUB - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLSUB
#
# RETURNS
#   parameters      ADD_HTPLSUBResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLSUBResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HTPLSUB(parameters)

# SYNOPSIS
#   ADD_HTPLIMPI(parameters)
#
# ARGS
#   parameters      ADD_HTPLIMPI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLIMPI
#
# RETURNS
#   parameters      ADD_HTPLIMPIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTPLIMPIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HTPLIMPI(parameters)

# SYNOPSIS
#   LST_HPSIDYND(parameters)
#
# ARGS
#   parameters      LST_HPSIDYND - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPSIDYND
#
# RETURNS
#   parameters      LST_HPSIDYNDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPSIDYNDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HPSIDYND(parameters)

# SYNOPSIS
#   LST_HAUTHINF(parameters)
#
# ARGS
#   parameters      LST_HAUTHINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAUTHINF
#
# RETURNS
#   parameters      LST_HAUTHINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HAUTHINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HAUTHINF(parameters)

# SYNOPSIS
#   SET_HNATPLID(parameters)
#
# ARGS
#   parameters      SET_HNATPLID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HNATPLID
#
# RETURNS
#   parameters      SET_HNATPLIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HNATPLIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HNATPLID(parameters)

# SYNOPSIS
#   LST_HNATPLID(parameters)
#
# ARGS
#   parameters      LST_HNATPLID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNATPLID
#
# RETURNS
#   parameters      LST_HNATPLIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNATPLIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HNATPLID(parameters)

# SYNOPSIS
#   SET_HNNCFLAG(parameters)
#
# ARGS
#   parameters      SET_HNNCFLAG - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HNNCFLAG
#
# RETURNS
#   parameters      SET_HNNCFLAGResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HNNCFLAGResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HNNCFLAG(parameters)

# SYNOPSIS
#   LST_HNNCFLAG(parameters)
#
# ARGS
#   parameters      LST_HNNCFLAG - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNNCFLAG
#
# RETURNS
#   parameters      LST_HNNCFLAGResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNNCFLAGResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HNNCFLAG(parameters)

# SYNOPSIS
#   ADD_HNNRLI(parameters)
#
# ARGS
#   parameters      ADD_HNNRLI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HNNRLI
#
# RETURNS
#   parameters      ADD_HNNRLIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HNNRLIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HNNRLI(parameters)

# SYNOPSIS
#   RMV_HNNRLI(parameters)
#
# ARGS
#   parameters      RMV_HNNRLI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HNNRLI
#
# RETURNS
#   parameters      RMV_HNNRLIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HNNRLIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HNNRLI(parameters)

# SYNOPSIS
#   MOD_HNNRLI(parameters)
#
# ARGS
#   parameters      MOD_HNNRLI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HNNRLI
#
# RETURNS
#   parameters      MOD_HNNRLIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HNNRLIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HNNRLI(parameters)

# SYNOPSIS
#   LST_HNNRLI(parameters)
#
# ARGS
#   parameters      LST_HNNRLI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNNRLI
#
# RETURNS
#   parameters      LST_HNNRLIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNNRLIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HNNRLI(parameters)

# SYNOPSIS
#   ADD_HASSPID(parameters)
#
# ARGS
#   parameters      ADD_HASSPID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HASSPID
#
# RETURNS
#   parameters      ADD_HASSPIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HASSPIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HASSPID(parameters)

# SYNOPSIS
#   RMV_HASSPID(parameters)
#
# ARGS
#   parameters      RMV_HASSPID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HASSPID
#
# RETURNS
#   parameters      RMV_HASSPIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HASSPIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HASSPID(parameters)

# SYNOPSIS
#   LST_HASSPID(parameters)
#
# ARGS
#   parameters      LST_HASSPID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASSPID
#
# RETURNS
#   parameters      LST_HASSPIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASSPIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HASSPID(parameters)

# SYNOPSIS
#   SET_HALIASPU(parameters)
#
# ARGS
#   parameters      SET_HALIASPU - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HALIASPU
#
# RETURNS
#   parameters      SET_HALIASPUResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HALIASPUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HALIASPU(parameters)

# SYNOPSIS
#   SET_HREPDATA(parameters)
#
# ARGS
#   parameters      SET_HREPDATA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HREPDATA
#
# RETURNS
#   parameters      SET_HREPDATAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HREPDATAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HREPDATA(parameters)

# SYNOPSIS
#   LST_HSRVIND(parameters)
#
# ARGS
#   parameters      LST_HSRVIND - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSRVIND
#
# RETURNS
#   parameters      LST_HSRVINDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSRVINDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HSRVIND(parameters)

# SYNOPSIS
#   LST_HREPDATA(parameters)
#
# ARGS
#   parameters      LST_HREPDATA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HREPDATA
#
# RETURNS
#   parameters      LST_HREPDATAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HREPDATAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HREPDATA(parameters)

# SYNOPSIS
#   LST_HDALI(parameters)
#
# ARGS
#   parameters      LST_HDALI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HDALI
#
# RETURNS
#   parameters      LST_HDALIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HDALIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HDALI(parameters)

# SYNOPSIS
#   ADD_HIMSI(parameters)
#
# ARGS
#   parameters      ADD_HIMSI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HIMSI
#
# RETURNS
#   parameters      ADD_HIMSIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HIMSIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HIMSI(parameters)

# SYNOPSIS
#   RMV_HIMSI(parameters)
#
# ARGS
#   parameters      RMV_HIMSI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HIMSI
#
# RETURNS
#   parameters      RMV_HIMSIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HIMSIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HIMSI(parameters)

# SYNOPSIS
#   MOD_HIMSI(parameters)
#
# ARGS
#   parameters      MOD_HIMSI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HIMSI
#
# RETURNS
#   parameters      MOD_HIMSIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HIMSIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HIMSI(parameters)

# SYNOPSIS
#   ADD_HISDN(parameters)
#
# ARGS
#   parameters      ADD_HISDN - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HISDN
#
# RETURNS
#   parameters      ADD_HISDNResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HISDNResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HISDN(parameters)

# SYNOPSIS
#   RMV_HISDN(parameters)
#
# ARGS
#   parameters      RMV_HISDN - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HISDN
#
# RETURNS
#   parameters      RMV_HISDNResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HISDNResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HISDN(parameters)

# SYNOPSIS
#   MOD_HISDN(parameters)
#
# ARGS
#   parameters      MOD_HISDN - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HISDN
#
# RETURNS
#   parameters      MOD_HISDNResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HISDNResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HISDN(parameters)

# SYNOPSIS
#   LST_HMSID(parameters)
#
# ARGS
#   parameters      LST_HMSID - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HMSID
#
# RETURNS
#   parameters      LST_HMSIDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HMSIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HMSID(parameters)

# SYNOPSIS
#   ADD_HASSOC(parameters)
#
# ARGS
#   parameters      ADD_HASSOC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HASSOC
#
# RETURNS
#   parameters      ADD_HASSOCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HASSOCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HASSOC(parameters)

# SYNOPSIS
#   RMV_HASSOC(parameters)
#
# ARGS
#   parameters      RMV_HASSOC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HASSOC
#
# RETURNS
#   parameters      RMV_HASSOCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HASSOCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HASSOC(parameters)

# SYNOPSIS
#   LST_HASSOC(parameters)
#
# ARGS
#   parameters      LST_HASSOC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASSOC
#
# RETURNS
#   parameters      LST_HASSOCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HASSOCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HASSOC(parameters)

# SYNOPSIS
#   ADD_HNBAINF(parameters)
#
# ARGS
#   parameters      ADD_HNBAINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HNBAINF
#
# RETURNS
#   parameters      ADD_HNBAINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HNBAINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HNBAINF(parameters)

# SYNOPSIS
#   RMV_HNBAINF(parameters)
#
# ARGS
#   parameters      RMV_HNBAINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HNBAINF
#
# RETURNS
#   parameters      RMV_HNBAINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HNBAINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HNBAINF(parameters)

# SYNOPSIS
#   LST_HNBAINF(parameters)
#
# ARGS
#   parameters      LST_HNBAINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNBAINF
#
# RETURNS
#   parameters      LST_HNBAINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNBAINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HNBAINF(parameters)

# SYNOPSIS
#   ADD_HCHGTPL(parameters)
#
# ARGS
#   parameters      ADD_HCHGTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HCHGTPL
#
# RETURNS
#   parameters      ADD_HCHGTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HCHGTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HCHGTPL(parameters)

# SYNOPSIS
#   RMV_HCHGTPL(parameters)
#
# ARGS
#   parameters      RMV_HCHGTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HCHGTPL
#
# RETURNS
#   parameters      RMV_HCHGTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HCHGTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HCHGTPL(parameters)

# SYNOPSIS
#   MOD_HCHGTPL(parameters)
#
# ARGS
#   parameters      MOD_HCHGTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HCHGTPL
#
# RETURNS
#   parameters      MOD_HCHGTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HCHGTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HCHGTPL(parameters)

# SYNOPSIS
#   LST_HCHGTPL(parameters)
#
# ARGS
#   parameters      LST_HCHGTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCHGTPL
#
# RETURNS
#   parameters      LST_HCHGTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCHGTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HCHGTPL(parameters)

# SYNOPSIS
#   ADD_HVNTPL(parameters)
#
# ARGS
#   parameters      ADD_HVNTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HVNTPL
#
# RETURNS
#   parameters      ADD_HVNTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HVNTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HVNTPL(parameters)

# SYNOPSIS
#   RMV_HVNTPL(parameters)
#
# ARGS
#   parameters      RMV_HVNTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HVNTPL
#
# RETURNS
#   parameters      RMV_HVNTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HVNTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HVNTPL(parameters)

# SYNOPSIS
#   MOD_HVNTPL(parameters)
#
# ARGS
#   parameters      MOD_HVNTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HVNTPL
#
# RETURNS
#   parameters      MOD_HVNTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HVNTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HVNTPL(parameters)

# SYNOPSIS
#   LST_HVNTPL(parameters)
#
# ARGS
#   parameters      LST_HVNTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNTPL
#
# RETURNS
#   parameters      LST_HVNTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HVNTPL(parameters)

# SYNOPSIS
#   ADD_HVNTPLADDR(parameters)
#
# ARGS
#   parameters      ADD_HVNTPLADDR - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HVNTPLADDR
#
# RETURNS
#   parameters      ADD_HVNTPLADDRResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HVNTPLADDRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HVNTPLADDR(parameters)

# SYNOPSIS
#   RMV_HVNTPLADDR(parameters)
#
# ARGS
#   parameters      RMV_HVNTPLADDR - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HVNTPLADDR
#
# RETURNS
#   parameters      RMV_HVNTPLADDRResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HVNTPLADDRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HVNTPLADDR(parameters)

# SYNOPSIS
#   LST_HVNTPLADDR(parameters)
#
# ARGS
#   parameters      LST_HVNTPLADDR - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNTPLADDR
#
# RETURNS
#   parameters      LST_HVNTPLADDRResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HVNTPLADDRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HVNTPLADDR(parameters)

# SYNOPSIS
#   ADD_HNATPL(parameters)
#
# ARGS
#   parameters      ADD_HNATPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HNATPL
#
# RETURNS
#   parameters      ADD_HNATPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HNATPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HNATPL(parameters)

# SYNOPSIS
#   RMV_HNATPL(parameters)
#
# ARGS
#   parameters      RMV_HNATPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HNATPL
#
# RETURNS
#   parameters      RMV_HNATPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HNATPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HNATPL(parameters)

# SYNOPSIS
#   MOD_HNATPL(parameters)
#
# ARGS
#   parameters      MOD_HNATPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HNATPL
#
# RETURNS
#   parameters      MOD_HNATPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HNATPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HNATPL(parameters)

# SYNOPSIS
#   LST_HNATPL(parameters)
#
# ARGS
#   parameters      LST_HNATPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNATPL
#
# RETURNS
#   parameters      LST_HNATPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNATPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HNATPL(parameters)

# SYNOPSIS
#   ADD_HNATPLADDR(parameters)
#
# ARGS
#   parameters      ADD_HNATPLADDR - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HNATPLADDR
#
# RETURNS
#   parameters      ADD_HNATPLADDRResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HNATPLADDRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HNATPLADDR(parameters)

# SYNOPSIS
#   RMV_HNATPLADDR(parameters)
#
# ARGS
#   parameters      RMV_HNATPLADDR - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HNATPLADDR
#
# RETURNS
#   parameters      RMV_HNATPLADDRResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HNATPLADDRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HNATPLADDR(parameters)

# SYNOPSIS
#   LST_HNATPLADDR(parameters)
#
# ARGS
#   parameters      LST_HNATPLADDR - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNATPLADDR
#
# RETURNS
#   parameters      LST_HNATPLADDRResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HNATPLADDRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HNATPLADDR(parameters)

# SYNOPSIS
#   ADD_HOCSITPL(parameters)
#
# ARGS
#   parameters      ADD_HOCSITPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HOCSITPL
#
# RETURNS
#   parameters      ADD_HOCSITPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HOCSITPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HOCSITPL(parameters)

# SYNOPSIS
#   RMV_HOCSITPL(parameters)
#
# ARGS
#   parameters      RMV_HOCSITPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HOCSITPL
#
# RETURNS
#   parameters      RMV_HOCSITPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HOCSITPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HOCSITPL(parameters)

# SYNOPSIS
#   MOD_HOCSITPL(parameters)
#
# ARGS
#   parameters      MOD_HOCSITPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HOCSITPL
#
# RETURNS
#   parameters      MOD_HOCSITPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HOCSITPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HOCSITPL(parameters)

# SYNOPSIS
#   LST_HOCSITPL(parameters)
#
# ARGS
#   parameters      LST_HOCSITPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HOCSITPL
#
# RETURNS
#   parameters      LST_HOCSITPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HOCSITPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HOCSITPL(parameters)

# SYNOPSIS
#   ADD_HTCSITPL(parameters)
#
# ARGS
#   parameters      ADD_HTCSITPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTCSITPL
#
# RETURNS
#   parameters      ADD_HTCSITPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HTCSITPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HTCSITPL(parameters)

# SYNOPSIS
#   RMV_HTCSITPL(parameters)
#
# ARGS
#   parameters      RMV_HTCSITPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HTCSITPL
#
# RETURNS
#   parameters      RMV_HTCSITPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HTCSITPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HTCSITPL(parameters)

# SYNOPSIS
#   MOD_HTCSITPL(parameters)
#
# ARGS
#   parameters      MOD_HTCSITPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HTCSITPL
#
# RETURNS
#   parameters      MOD_HTCSITPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HTCSITPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HTCSITPL(parameters)

# SYNOPSIS
#   LST_HTCSITPL(parameters)
#
# ARGS
#   parameters      LST_HTCSITPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HTCSITPL
#
# RETURNS
#   parameters      LST_HTCSITPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HTCSITPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HTCSITPL(parameters)

# SYNOPSIS
#   SET_HCSI(parameters)
#
# ARGS
#   parameters      SET_HCSI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HCSI
#
# RETURNS
#   parameters      SET_HCSIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HCSIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HCSI(parameters)

# SYNOPSIS
#   LST_HCSI(parameters)
#
# ARGS
#   parameters      LST_HCSI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCSI
#
# RETURNS
#   parameters      LST_HCSIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCSIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HCSI(parameters)

# SYNOPSIS
#   ADD_HSERPRV(parameters)
#
# ARGS
#   parameters      ADD_HSERPRV - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSERPRV
#
# RETURNS
#   parameters      ADD_HSERPRVResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSERPRVResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HSERPRV(parameters)

# SYNOPSIS
#   RMV_HSERPRV(parameters)
#
# ARGS
#   parameters      RMV_HSERPRV - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSERPRV
#
# RETURNS
#   parameters      RMV_HSERPRVResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSERPRVResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HSERPRV(parameters)

# SYNOPSIS
#   MOD_HSERPRV(parameters)
#
# ARGS
#   parameters      MOD_HSERPRV - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSERPRV
#
# RETURNS
#   parameters      MOD_HSERPRVResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSERPRVResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HSERPRV(parameters)

# SYNOPSIS
#   LST_HSERPRV(parameters)
#
# ARGS
#   parameters      LST_HSERPRV - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSERPRV
#
# RETURNS
#   parameters      LST_HSERPRVResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSERPRVResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HSERPRV(parameters)

# SYNOPSIS
#   SET_HTAA(parameters)
#
# ARGS
#   parameters      SET_HTAA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HTAA
#
# RETURNS
#   parameters      SET_HTAAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HTAAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HTAA(parameters)

# SYNOPSIS
#   LST_HTAA(parameters)
#
# ARGS
#   parameters      LST_HTAA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HTAA
#
# RETURNS
#   parameters      LST_HTAAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HTAAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HTAA(parameters)

# SYNOPSIS
#   SET_HUSRPRIOR(parameters)
#
# ARGS
#   parameters      SET_HUSRPRIOR - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HUSRPRIOR
#
# RETURNS
#   parameters      SET_HUSRPRIORResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HUSRPRIORResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HUSRPRIOR(parameters)

# SYNOPSIS
#   LST_HUSRPRIOR(parameters)
#
# ARGS
#   parameters      LST_HUSRPRIOR - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HUSRPRIOR
#
# RETURNS
#   parameters      LST_HUSRPRIORResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HUSRPRIORResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HUSRPRIOR(parameters)

# SYNOPSIS
#   ADD_HSDAINF(parameters)
#
# ARGS
#   parameters      ADD_HSDAINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSDAINF
#
# RETURNS
#   parameters      ADD_HSDAINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSDAINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HSDAINF(parameters)

# SYNOPSIS
#   RMV_HSDAINF(parameters)
#
# ARGS
#   parameters      RMV_HSDAINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSDAINF
#
# RETURNS
#   parameters      RMV_HSDAINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSDAINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HSDAINF(parameters)

# SYNOPSIS
#   MOD_HSDAINF(parameters)
#
# ARGS
#   parameters      MOD_HSDAINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSDAINF
#
# RETURNS
#   parameters      MOD_HSDAINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSDAINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HSDAINF(parameters)

# SYNOPSIS
#   LST_HSDAINF(parameters)
#
# ARGS
#   parameters      LST_HSDAINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSDAINF
#
# RETURNS
#   parameters      LST_HSDAINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSDAINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HSDAINF(parameters)

# SYNOPSIS
#   CHK_HSDAPWD(parameters)
#
# ARGS
#   parameters      CHK_HSDAPWD - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HSDAPWD
#
# RETURNS
#   parameters      CHK_HSDAPWDResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}CHK_HSDAPWDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.cHK_HSDAPWD(parameters)

# SYNOPSIS
#   SET_HLRI(parameters)
#
# ARGS
#   parameters      SET_HLRI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HLRI
#
# RETURNS
#   parameters      SET_HLRIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HLRIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HLRI(parameters)

# SYNOPSIS
#   LST_HLRI(parameters)
#
# ARGS
#   parameters      LST_HLRI - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HLRI
#
# RETURNS
#   parameters      LST_HLRIResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HLRIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HLRI(parameters)

# SYNOPSIS
#   ADD_HSIFC(parameters)
#
# ARGS
#   parameters      ADD_HSIFC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSIFC
#
# RETURNS
#   parameters      ADD_HSIFCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSIFCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HSIFC(parameters)

# SYNOPSIS
#   RMV_HSIFC(parameters)
#
# ARGS
#   parameters      RMV_HSIFC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSIFC
#
# RETURNS
#   parameters      RMV_HSIFCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSIFCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HSIFC(parameters)

# SYNOPSIS
#   MOD_HSIFC(parameters)
#
# ARGS
#   parameters      MOD_HSIFC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSIFC
#
# RETURNS
#   parameters      MOD_HSIFCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSIFCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HSIFC(parameters)

# SYNOPSIS
#   LST_HSIFC(parameters)
#
# ARGS
#   parameters      LST_HSIFC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSIFC
#
# RETURNS
#   parameters      LST_HSIFCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSIFCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HSIFC(parameters)

# SYNOPSIS
#   RMV_HALLIFC(parameters)
#
# ARGS
#   parameters      RMV_HALLIFC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HALLIFC
#
# RETURNS
#   parameters      RMV_HALLIFCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HALLIFCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HALLIFC(parameters)

# SYNOPSIS
#   ADD_HSIFCTPL(parameters)
#
# ARGS
#   parameters      ADD_HSIFCTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSIFCTPL
#
# RETURNS
#   parameters      ADD_HSIFCTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSIFCTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HSIFCTPL(parameters)

# SYNOPSIS
#   RMV_HSIFCTPL(parameters)
#
# ARGS
#   parameters      RMV_HSIFCTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSIFCTPL
#
# RETURNS
#   parameters      RMV_HSIFCTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSIFCTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HSIFCTPL(parameters)

# SYNOPSIS
#   MOD_HSIFCTPL(parameters)
#
# ARGS
#   parameters      MOD_HSIFCTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSIFCTPL
#
# RETURNS
#   parameters      MOD_HSIFCTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSIFCTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HSIFCTPL(parameters)

# SYNOPSIS
#   LST_HSIFCTPL(parameters)
#
# ARGS
#   parameters      LST_HSIFCTPL - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSIFCTPL
#
# RETURNS
#   parameters      LST_HSIFCTPLResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSIFCTPLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HSIFCTPL(parameters)

# SYNOPSIS
#   ADD_HSIFCINF(parameters)
#
# ARGS
#   parameters      ADD_HSIFCINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSIFCINF
#
# RETURNS
#   parameters      ADD_HSIFCINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HSIFCINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HSIFCINF(parameters)

# SYNOPSIS
#   RMV_HSIFCINF(parameters)
#
# ARGS
#   parameters      RMV_HSIFCINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSIFCINF
#
# RETURNS
#   parameters      RMV_HSIFCINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HSIFCINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HSIFCINF(parameters)

# SYNOPSIS
#   MOD_HSIFCINF(parameters)
#
# ARGS
#   parameters      MOD_HSIFCINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSIFCINF
#
# RETURNS
#   parameters      MOD_HSIFCINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HSIFCINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HSIFCINF(parameters)

# SYNOPSIS
#   LST_HSIFCINF(parameters)
#
# ARGS
#   parameters      LST_HSIFCINF - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSIFCINF
#
# RETURNS
#   parameters      LST_HSIFCINFResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HSIFCINFResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HSIFCINF(parameters)

# SYNOPSIS
#   SET_HESRN(parameters)
#
# ARGS
#   parameters      SET_HESRN - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HESRN
#
# RETURNS
#   parameters      SET_HESRNResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HESRNResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HESRN(parameters)

# SYNOPSIS
#   LST_HESRN(parameters)
#
# ARGS
#   parameters      LST_HESRN - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HESRN
#
# RETURNS
#   parameters      LST_HESRNResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HESRNResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HESRN(parameters)

# SYNOPSIS
#   ADD_HONEKEY(parameters)
#
# ARGS
#   parameters      ADD_HONEKEY - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HONEKEY
#
# RETURNS
#   parameters      ADD_HONEKEYResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HONEKEYResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HONEKEY(parameters)

# SYNOPSIS
#   MOD_HONEKEY(parameters)
#
# ARGS
#   parameters      MOD_HONEKEY - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HONEKEY
#
# RETURNS
#   parameters      MOD_HONEKEYResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HONEKEYResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HONEKEY(parameters)

# SYNOPSIS
#   LST_HONEKEY(parameters)
#
# ARGS
#   parameters      LST_HONEKEY - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HONEKEY
#
# RETURNS
#   parameters      LST_HONEKEYResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HONEKEYResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HONEKEY(parameters)

# SYNOPSIS
#   RMV_HONEKEY(parameters)
#
# ARGS
#   parameters      RMV_HONEKEY - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HONEKEY
#
# RETURNS
#   parameters      RMV_HONEKEYResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HONEKEYResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HONEKEY(parameters)

# SYNOPSIS
#   RMV_HASIFC(parameters)
#
# ARGS
#   parameters      RMV_HASIFC - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HASIFC
#
# RETURNS
#   parameters      RMV_HASIFCResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HASIFCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HASIFC(parameters)

# SYNOPSIS
#   SET_HCAA(parameters)
#
# ARGS
#   parameters      SET_HCAA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HCAA
#
# RETURNS
#   parameters      SET_HCAAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HCAAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HCAA(parameters)

# SYNOPSIS
#   LST_HCAA(parameters)
#
# ARGS
#   parameters      LST_HCAA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCAA
#
# RETURNS
#   parameters      LST_HCAAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HCAAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HCAA(parameters)

# SYNOPSIS
#   SET_HPBXU(parameters)
#
# ARGS
#   parameters      SET_HPBXU - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HPBXU
#
# RETURNS
#   parameters      SET_HPBXUResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}SET_HPBXUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.sET_HPBXU(parameters)

# SYNOPSIS
#   LST_HPBXU(parameters)
#
# ARGS
#   parameters      LST_HPBXU - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPBXU
#
# RETURNS
#   parameters      LST_HPBXUResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPBXUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HPBXU(parameters)

# SYNOPSIS
#   ADD_HPREPDATA(parameters)
#
# ARGS
#   parameters      ADD_HPREPDATA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HPREPDATA
#
# RETURNS
#   parameters      ADD_HPREPDATAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}ADD_HPREPDATAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.aDD_HPREPDATA(parameters)

# SYNOPSIS
#   RMV_HPREPDATA(parameters)
#
# ARGS
#   parameters      RMV_HPREPDATA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HPREPDATA
#
# RETURNS
#   parameters      RMV_HPREPDATAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}RMV_HPREPDATAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.rMV_HPREPDATA(parameters)

# SYNOPSIS
#   MOD_HPREPDATA(parameters)
#
# ARGS
#   parameters      MOD_HPREPDATA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HPREPDATA
#
# RETURNS
#   parameters      MOD_HPREPDATAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}MOD_HPREPDATAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.mOD_HPREPDATA(parameters)

# SYNOPSIS
#   LST_HPREPDATA(parameters)
#
# ARGS
#   parameters      LST_HPREPDATA - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPREPDATA
#
# RETURNS
#   parameters      LST_HPREPDATAResponse - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}LST_HPREPDATAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/HSS/V900R008C02SPC200/}OperationFault
#
parameters = nil
puts obj.lST_HPREPDATA(parameters)


