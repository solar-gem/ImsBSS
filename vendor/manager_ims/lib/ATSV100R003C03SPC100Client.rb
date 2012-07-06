#!/usr/bin/env ruby
require 'defaultDriver.rb'

endpoint_url = ARGV.shift
obj = ATSV100R003C03SPC100.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   ADD_SBR(parameters)
#
# ARGS
#   parameters      ADD_SBR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_SBR
#
# RETURNS
#   parameters      ADD_SBRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_SBRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aDD_SBR(parameters)

# SYNOPSIS
#   MOD_SBR(parameters)
#
# ARGS
#   parameters      MOD_SBR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_SBR
#
# RETURNS
#   parameters      MOD_SBRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_SBRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.mOD_SBR(parameters)

# SYNOPSIS
#   RMV_SBR(parameters)
#
# ARGS
#   parameters      RMV_SBR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_SBR
#
# RETURNS
#   parameters      RMV_SBRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_SBRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rMV_SBR(parameters)

# SYNOPSIS
#   LST_SBR(parameters)
#
# ARGS
#   parameters      LST_SBR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_SBR
#
# RETURNS
#   parameters      LST_SBRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_SBRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_SBR(parameters)

# SYNOPSIS
#   MOD_SS(parameters)
#
# ARGS
#   parameters      MOD_SS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_SS
#
# RETURNS
#   parameters      MOD_SSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_SSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.mOD_SS(parameters)

# SYNOPSIS
#   LST_SS(parameters)
#
# ARGS
#   parameters      LST_SS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_SS
#
# RETURNS
#   parameters      LST_SSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_SSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_SS(parameters)

# SYNOPSIS
#   REG_COMSS(parameters)
#
# ARGS
#   parameters      REG_COMSS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_COMSS
#
# RETURNS
#   parameters      REG_COMSSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_COMSSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_COMSS(parameters)

# SYNOPSIS
#   DSP_COMSS(parameters)
#
# ARGS
#   parameters      DSP_COMSS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_COMSS
#
# RETURNS
#   parameters      DSP_COMSSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_COMSSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_COMSS(parameters)

# SYNOPSIS
#   RPL_SS(parameters)
#
# ARGS
#   parameters      RPL_SS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_SS
#
# RETURNS
#   parameters      RPL_SSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_SSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_SS(parameters)

# SYNOPSIS
#   ACT_SS(parameters)
#
# ARGS
#   parameters      ACT_SS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_SS
#
# RETURNS
#   parameters      ACT_SSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_SSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aCT_SS(parameters)

# SYNOPSIS
#   DEA_SS(parameters)
#
# ARGS
#   parameters      DEA_SS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_SS
#
# RETURNS
#   parameters      DEA_SSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_SSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dEA_SS(parameters)

# SYNOPSIS
#   QRY_SS(parameters)
#
# ARGS
#   parameters      QRY_SS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}QRY_SS
#
# RETURNS
#   parameters      QRY_SSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}QRY_SSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.qRY_SS(parameters)

# SYNOPSIS
#   REG_CFU(parameters)
#
# ARGS
#   parameters      REG_CFU - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFU
#
# RETURNS
#   parameters      REG_CFUResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_CFU(parameters)

# SYNOPSIS
#   RPL_CFU(parameters)
#
# ARGS
#   parameters      RPL_CFU - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFU
#
# RETURNS
#   parameters      RPL_CFUResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_CFU(parameters)

# SYNOPSIS
#   DSP_CFU(parameters)
#
# ARGS
#   parameters      DSP_CFU - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFU
#
# RETURNS
#   parameters      DSP_CFUResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_CFU(parameters)

# SYNOPSIS
#   ACT_CFU(parameters)
#
# ARGS
#   parameters      ACT_CFU - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_CFU
#
# RETURNS
#   parameters      ACT_CFUResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_CFUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aCT_CFU(parameters)

# SYNOPSIS
#   DEA_CFU(parameters)
#
# ARGS
#   parameters      DEA_CFU - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_CFU
#
# RETURNS
#   parameters      DEA_CFUResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_CFUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dEA_CFU(parameters)

# SYNOPSIS
#   REG_CLIR(parameters)
#
# ARGS
#   parameters      REG_CLIR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CLIR
#
# RETURNS
#   parameters      REG_CLIRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CLIRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_CLIR(parameters)

# SYNOPSIS
#   RPL_CLIR(parameters)
#
# ARGS
#   parameters      RPL_CLIR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CLIR
#
# RETURNS
#   parameters      RPL_CLIRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CLIRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_CLIR(parameters)

# SYNOPSIS
#   DSP_CLIR(parameters)
#
# ARGS
#   parameters      DSP_CLIR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CLIR
#
# RETURNS
#   parameters      DSP_CLIRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CLIRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_CLIR(parameters)

# SYNOPSIS
#   REG_COLR(parameters)
#
# ARGS
#   parameters      REG_COLR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_COLR
#
# RETURNS
#   parameters      REG_COLRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_COLRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_COLR(parameters)

# SYNOPSIS
#   RPL_COLR(parameters)
#
# ARGS
#   parameters      RPL_COLR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_COLR
#
# RETURNS
#   parameters      RPL_COLRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_COLRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_COLR(parameters)

# SYNOPSIS
#   DSP_COLR(parameters)
#
# ARGS
#   parameters      DSP_COLR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_COLR
#
# RETURNS
#   parameters      DSP_COLRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_COLRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_COLR(parameters)

# SYNOPSIS
#   REG_WAKE_UP(parameters)
#
# ARGS
#   parameters      REG_WAKE_UP - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_WAKE_UP
#
# RETURNS
#   parameters      REG_WAKE_UPResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_WAKE_UPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_WAKE_UP(parameters)

# SYNOPSIS
#   RPL_WAKE_UP(parameters)
#
# ARGS
#   parameters      RPL_WAKE_UP - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_WAKE_UP
#
# RETURNS
#   parameters      RPL_WAKE_UPResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_WAKE_UPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_WAKE_UP(parameters)

# SYNOPSIS
#   DSP_WAKE_UP(parameters)
#
# ARGS
#   parameters      DSP_WAKE_UP - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_WAKE_UP
#
# RETURNS
#   parameters      DSP_WAKE_UPResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_WAKE_UPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_WAKE_UP(parameters)

# SYNOPSIS
#   REG_CFTB(parameters)
#
# ARGS
#   parameters      REG_CFTB - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFTB
#
# RETURNS
#   parameters      REG_CFTBResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFTBResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_CFTB(parameters)

# SYNOPSIS
#   RPL_CFTB(parameters)
#
# ARGS
#   parameters      RPL_CFTB - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFTB
#
# RETURNS
#   parameters      RPL_CFTBResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFTBResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_CFTB(parameters)

# SYNOPSIS
#   DSP_CFTB(parameters)
#
# ARGS
#   parameters      DSP_CFTB - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFTB
#
# RETURNS
#   parameters      DSP_CFTBResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFTBResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_CFTB(parameters)

# SYNOPSIS
#   REG_UINFO(parameters)
#
# ARGS
#   parameters      REG_UINFO - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_UINFO
#
# RETURNS
#   parameters      REG_UINFOResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_UINFOResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_UINFO(parameters)

# SYNOPSIS
#   RPL_UINFO(parameters)
#
# ARGS
#   parameters      RPL_UINFO - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_UINFO
#
# RETURNS
#   parameters      RPL_UINFOResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_UINFOResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_UINFO(parameters)

# SYNOPSIS
#   DSP_UINFO(parameters)
#
# ARGS
#   parameters      DSP_UINFO - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_UINFO
#
# RETURNS
#   parameters      DSP_UINFOResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_UINFOResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_UINFO(parameters)

# SYNOPSIS
#   REG_SOC(parameters)
#
# ARGS
#   parameters      REG_SOC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_SOC
#
# RETURNS
#   parameters      REG_SOCResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_SOCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_SOC(parameters)

# SYNOPSIS
#   RPL_SOC(parameters)
#
# ARGS
#   parameters      RPL_SOC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_SOC
#
# RETURNS
#   parameters      RPL_SOCResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_SOCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_SOC(parameters)

# SYNOPSIS
#   DSP_SOC(parameters)
#
# ARGS
#   parameters      DSP_SOC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SOC
#
# RETURNS
#   parameters      DSP_SOCResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SOCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_SOC(parameters)

# SYNOPSIS
#   REG_DN_CALL_OUT_ALLOW(parameters)
#
# ARGS
#   parameters      REG_DN_CALL_OUT_ALLOW - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_DN_CALL_OUT_ALLOW
#
# RETURNS
#   parameters      REG_DN_CALL_OUT_ALLOWResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_DN_CALL_OUT_ALLOWResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_DN_CALL_OUT_ALLOW(parameters)

# SYNOPSIS
#   RPL_DN_CALL_OUT_ALLOW(parameters)
#
# ARGS
#   parameters      RPL_DN_CALL_OUT_ALLOW - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_DN_CALL_OUT_ALLOW
#
# RETURNS
#   parameters      RPL_DN_CALL_OUT_ALLOWResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_DN_CALL_OUT_ALLOWResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_DN_CALL_OUT_ALLOW(parameters)

# SYNOPSIS
#   DSP_DN_CALL_OUT_ALLOW(parameters)
#
# ARGS
#   parameters      DSP_DN_CALL_OUT_ALLOW - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DN_CALL_OUT_ALLOW
#
# RETURNS
#   parameters      DSP_DN_CALL_OUT_ALLOWResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DN_CALL_OUT_ALLOWResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_DN_CALL_OUT_ALLOW(parameters)

# SYNOPSIS
#   REG_DND(parameters)
#
# ARGS
#   parameters      REG_DND - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_DND
#
# RETURNS
#   parameters      REG_DNDResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_DNDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_DND(parameters)

# SYNOPSIS
#   RPL_DND(parameters)
#
# ARGS
#   parameters      RPL_DND - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_DND
#
# RETURNS
#   parameters      RPL_DNDResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_DNDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_DND(parameters)

# SYNOPSIS
#   DSP_DND(parameters)
#
# ARGS
#   parameters      DSP_DND - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DND
#
# RETURNS
#   parameters      DSP_DNDResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DNDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_DND(parameters)

# SYNOPSIS
#   REG_CBA(parameters)
#
# ARGS
#   parameters      REG_CBA - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CBA
#
# RETURNS
#   parameters      REG_CBAResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CBAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_CBA(parameters)

# SYNOPSIS
#   RPL_CBA(parameters)
#
# ARGS
#   parameters      RPL_CBA - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CBA
#
# RETURNS
#   parameters      RPL_CBAResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CBAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_CBA(parameters)

# SYNOPSIS
#   DSP_CBA(parameters)
#
# ARGS
#   parameters      DSP_CBA - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CBA
#
# RETURNS
#   parameters      DSP_CBAResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CBAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_CBA(parameters)

# SYNOPSIS
#   REG_TMP_LIN(parameters)
#
# ARGS
#   parameters      REG_TMP_LIN - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_TMP_LIN
#
# RETURNS
#   parameters      REG_TMP_LINResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_TMP_LINResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_TMP_LIN(parameters)

# SYNOPSIS
#   RPL_TMP_LIN(parameters)
#
# ARGS
#   parameters      RPL_TMP_LIN - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_TMP_LIN
#
# RETURNS
#   parameters      RPL_TMP_LINResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_TMP_LINResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_TMP_LIN(parameters)

# SYNOPSIS
#   DSP_TMP_LIN(parameters)
#
# ARGS
#   parameters      DSP_TMP_LIN - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_TMP_LIN
#
# RETURNS
#   parameters      DSP_TMP_LINResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_TMP_LINResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_TMP_LIN(parameters)

# SYNOPSIS
#   REG_CODEC_CNTRL(parameters)
#
# ARGS
#   parameters      REG_CODEC_CNTRL - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CODEC_CNTRL
#
# RETURNS
#   parameters      REG_CODEC_CNTRLResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CODEC_CNTRLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_CODEC_CNTRL(parameters)

# SYNOPSIS
#   RPL_CODEC_CNTRL(parameters)
#
# ARGS
#   parameters      RPL_CODEC_CNTRL - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CODEC_CNTRL
#
# RETURNS
#   parameters      RPL_CODEC_CNTRLResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CODEC_CNTRLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_CODEC_CNTRL(parameters)

# SYNOPSIS
#   DSP_CODEC_CNTRL(parameters)
#
# ARGS
#   parameters      DSP_CODEC_CNTRL - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CODEC_CNTRL
#
# RETURNS
#   parameters      DSP_CODEC_CNTRLResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CODEC_CNTRLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_CODEC_CNTRL(parameters)

# SYNOPSIS
#   REG_SIC(parameters)
#
# ARGS
#   parameters      REG_SIC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_SIC
#
# RETURNS
#   parameters      REG_SICResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_SICResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_SIC(parameters)

# SYNOPSIS
#   RPL_SIC(parameters)
#
# ARGS
#   parameters      RPL_SIC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_SIC
#
# RETURNS
#   parameters      RPL_SICResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_SICResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_SIC(parameters)

# SYNOPSIS
#   DSP_SIC(parameters)
#
# ARGS
#   parameters      DSP_SIC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SIC
#
# RETURNS
#   parameters      DSP_SICResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SICResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_SIC(parameters)

# SYNOPSIS
#   REG_CFS(parameters)
#
# ARGS
#   parameters      REG_CFS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFS
#
# RETURNS
#   parameters      REG_CFSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_CFS(parameters)

# SYNOPSIS
#   ACT_CFS(parameters)
#
# ARGS
#   parameters      ACT_CFS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_CFS
#
# RETURNS
#   parameters      ACT_CFSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_CFSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aCT_CFS(parameters)

# SYNOPSIS
#   DEA_CFS(parameters)
#
# ARGS
#   parameters      DEA_CFS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_CFS
#
# RETURNS
#   parameters      DEA_CFSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_CFSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dEA_CFS(parameters)

# SYNOPSIS
#   RPL_CFS(parameters)
#
# ARGS
#   parameters      RPL_CFS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFS
#
# RETURNS
#   parameters      RPL_CFSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_CFS(parameters)

# SYNOPSIS
#   DSP_CFS(parameters)
#
# ARGS
#   parameters      DSP_CFS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFS
#
# RETURNS
#   parameters      DSP_CFSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_CFS(parameters)

# SYNOPSIS
#   REG_DN_CALL_OUT_BAR(parameters)
#
# ARGS
#   parameters      REG_DN_CALL_OUT_BAR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_DN_CALL_OUT_BAR
#
# RETURNS
#   parameters      REG_DN_CALL_OUT_BARResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_DN_CALL_OUT_BARResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_DN_CALL_OUT_BAR(parameters)

# SYNOPSIS
#   RPL_DN_CALL_OUT_BAR(parameters)
#
# ARGS
#   parameters      RPL_DN_CALL_OUT_BAR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_DN_CALL_OUT_BAR
#
# RETURNS
#   parameters      RPL_DN_CALL_OUT_BARResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_DN_CALL_OUT_BARResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_DN_CALL_OUT_BAR(parameters)

# SYNOPSIS
#   DSP_DN_CALL_OUT_BAR(parameters)
#
# ARGS
#   parameters      DSP_DN_CALL_OUT_BAR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DN_CALL_OUT_BAR
#
# RETURNS
#   parameters      DSP_DN_CALL_OUT_BARResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DN_CALL_OUT_BARResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_DN_CALL_OUT_BAR(parameters)

# SYNOPSIS
#   REG_CFSB(parameters)
#
# ARGS
#   parameters      REG_CFSB - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFSB
#
# RETURNS
#   parameters      REG_CFSBResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFSBResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_CFSB(parameters)

# SYNOPSIS
#   RPL_CFSB(parameters)
#
# ARGS
#   parameters      RPL_CFSB - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFSB
#
# RETURNS
#   parameters      RPL_CFSBResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFSBResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_CFSB(parameters)

# SYNOPSIS
#   DSP_CFSB(parameters)
#
# ARGS
#   parameters      DSP_CFSB - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFSB
#
# RETURNS
#   parameters      DSP_CFSBResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFSBResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_CFSB(parameters)

# SYNOPSIS
#   REG_CFB(parameters)
#
# ARGS
#   parameters      REG_CFB - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFB
#
# RETURNS
#   parameters      REG_CFBResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFBResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_CFB(parameters)

# SYNOPSIS
#   RPL_CFB(parameters)
#
# ARGS
#   parameters      RPL_CFB - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFB
#
# RETURNS
#   parameters      RPL_CFBResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFBResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_CFB(parameters)

# SYNOPSIS
#   DSP_CFB(parameters)
#
# ARGS
#   parameters      DSP_CFB - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFB
#
# RETURNS
#   parameters      DSP_CFBResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFBResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_CFB(parameters)

# SYNOPSIS
#   ACT_CFB(parameters)
#
# ARGS
#   parameters      ACT_CFB - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_CFB
#
# RETURNS
#   parameters      ACT_CFBResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_CFBResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aCT_CFB(parameters)

# SYNOPSIS
#   DEA_CFB(parameters)
#
# ARGS
#   parameters      DEA_CFB - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_CFB
#
# RETURNS
#   parameters      DEA_CFBResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_CFBResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dEA_CFB(parameters)

# SYNOPSIS
#   REG_CFNR(parameters)
#
# ARGS
#   parameters      REG_CFNR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFNR
#
# RETURNS
#   parameters      REG_CFNRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFNRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_CFNR(parameters)

# SYNOPSIS
#   RPL_CFNR(parameters)
#
# ARGS
#   parameters      RPL_CFNR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFNR
#
# RETURNS
#   parameters      RPL_CFNRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFNRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_CFNR(parameters)

# SYNOPSIS
#   DSP_CFNR(parameters)
#
# ARGS
#   parameters      DSP_CFNR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFNR
#
# RETURNS
#   parameters      DSP_CFNRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFNRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_CFNR(parameters)

# SYNOPSIS
#   ACT_CFNR(parameters)
#
# ARGS
#   parameters      ACT_CFNR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_CFNR
#
# RETURNS
#   parameters      ACT_CFNRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_CFNRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aCT_CFNR(parameters)

# SYNOPSIS
#   DEA_CFNR(parameters)
#
# ARGS
#   parameters      DEA_CFNR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_CFNR
#
# RETURNS
#   parameters      DEA_CFNRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_CFNRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dEA_CFNR(parameters)

# SYNOPSIS
#   REG_CFNL(parameters)
#
# ARGS
#   parameters      REG_CFNL - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFNL
#
# RETURNS
#   parameters      REG_CFNLResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFNLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_CFNL(parameters)

# SYNOPSIS
#   RPL_CFNL(parameters)
#
# ARGS
#   parameters      RPL_CFNL - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFNL
#
# RETURNS
#   parameters      RPL_CFNLResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFNLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_CFNL(parameters)

# SYNOPSIS
#   DSP_CFNL(parameters)
#
# ARGS
#   parameters      DSP_CFNL - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFNL
#
# RETURNS
#   parameters      DSP_CFNLResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFNLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_CFNL(parameters)

# SYNOPSIS
#   REG_CFNRC(parameters)
#
# ARGS
#   parameters      REG_CFNRC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFNRC
#
# RETURNS
#   parameters      REG_CFNRCResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CFNRCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_CFNRC(parameters)

# SYNOPSIS
#   RPL_CFNRC(parameters)
#
# ARGS
#   parameters      RPL_CFNRC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFNRC
#
# RETURNS
#   parameters      RPL_CFNRCResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CFNRCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_CFNRC(parameters)

# SYNOPSIS
#   DSP_CFNRC(parameters)
#
# ARGS
#   parameters      DSP_CFNRC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFNRC
#
# RETURNS
#   parameters      DSP_CFNRCResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CFNRCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_CFNRC(parameters)

# SYNOPSIS
#   ACT_CFNRC(parameters)
#
# ARGS
#   parameters      ACT_CFNRC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_CFNRC
#
# RETURNS
#   parameters      ACT_CFNRCResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_CFNRCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aCT_CFNRC(parameters)

# SYNOPSIS
#   DEA_CFNRC(parameters)
#
# ARGS
#   parameters      DEA_CFNRC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_CFNRC
#
# RETURNS
#   parameters      DEA_CFNRCResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_CFNRCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dEA_CFNRC(parameters)

# SYNOPSIS
#   REG_CWCFNR(parameters)
#
# ARGS
#   parameters      REG_CWCFNR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CWCFNR
#
# RETURNS
#   parameters      REG_CWCFNRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CWCFNRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_CWCFNR(parameters)

# SYNOPSIS
#   RPL_CWCFNR(parameters)
#
# ARGS
#   parameters      RPL_CWCFNR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CWCFNR
#
# RETURNS
#   parameters      RPL_CWCFNRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CWCFNRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_CWCFNR(parameters)

# SYNOPSIS
#   DSP_CWCFNR(parameters)
#
# ARGS
#   parameters      DSP_CWCFNR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CWCFNR
#
# RETURNS
#   parameters      DSP_CWCFNRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CWCFNRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_CWCFNR(parameters)

# SYNOPSIS
#   REG_MRINGMODE(parameters)
#
# ARGS
#   parameters      REG_MRINGMODE - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_MRINGMODE
#
# RETURNS
#   parameters      REG_MRINGMODEResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_MRINGMODEResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_MRINGMODE(parameters)

# SYNOPSIS
#   RPL_MRINGMODE(parameters)
#
# ARGS
#   parameters      RPL_MRINGMODE - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_MRINGMODE
#
# RETURNS
#   parameters      RPL_MRINGMODEResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_MRINGMODEResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_MRINGMODE(parameters)

# SYNOPSIS
#   DSP_MRINGMODE(parameters)
#
# ARGS
#   parameters      DSP_MRINGMODE - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_MRINGMODE
#
# RETURNS
#   parameters      DSP_MRINGMODEResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_MRINGMODEResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_MRINGMODE(parameters)

# SYNOPSIS
#   REG_CIS(parameters)
#
# ARGS
#   parameters      REG_CIS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CIS
#
# RETURNS
#   parameters      REG_CISResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CISResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_CIS(parameters)

# SYNOPSIS
#   RPL_CIS(parameters)
#
# ARGS
#   parameters      RPL_CIS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CIS
#
# RETURNS
#   parameters      RPL_CISResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CISResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_CIS(parameters)

# SYNOPSIS
#   DSP_CIS(parameters)
#
# ARGS
#   parameters      DSP_CIS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CIS
#
# RETURNS
#   parameters      DSP_CISResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CISResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_CIS(parameters)

# SYNOPSIS
#   ADD_CFDATA(parameters)
#
# ARGS
#   parameters      ADD_CFDATA - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CFDATA
#
# RETURNS
#   parameters      ADD_CFDATAResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CFDATAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aDD_CFDATA(parameters)

# SYNOPSIS
#   RMV_CFDATA(parameters)
#
# ARGS
#   parameters      RMV_CFDATA - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CFDATA
#
# RETURNS
#   parameters      RMV_CFDATAResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CFDATAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rMV_CFDATA(parameters)

# SYNOPSIS
#   LST_CFDATA(parameters)
#
# ARGS
#   parameters      LST_CFDATA - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CFDATA
#
# RETURNS
#   parameters      LST_CFDATAResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CFDATAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_CFDATA(parameters)

# SYNOPSIS
#   ADD_NUMCHG(parameters)
#
# ARGS
#   parameters      ADD_NUMCHG - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_NUMCHG
#
# RETURNS
#   parameters      ADD_NUMCHGResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_NUMCHGResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aDD_NUMCHG(parameters)

# SYNOPSIS
#   MOD_NUMCHG(parameters)
#
# ARGS
#   parameters      MOD_NUMCHG - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_NUMCHG
#
# RETURNS
#   parameters      MOD_NUMCHGResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_NUMCHGResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.mOD_NUMCHG(parameters)

# SYNOPSIS
#   RMV_NUMCHG(parameters)
#
# ARGS
#   parameters      RMV_NUMCHG - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_NUMCHG
#
# RETURNS
#   parameters      RMV_NUMCHGResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_NUMCHGResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rMV_NUMCHG(parameters)

# SYNOPSIS
#   LST_NUMCHG(parameters)
#
# ARGS
#   parameters      LST_NUMCHG - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_NUMCHG
#
# RETURNS
#   parameters      LST_NUMCHGResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_NUMCHGResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_NUMCHG(parameters)

# SYNOPSIS
#   ADD_BLKNUM(parameters)
#
# ARGS
#   parameters      ADD_BLKNUM - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_BLKNUM
#
# RETURNS
#   parameters      ADD_BLKNUMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_BLKNUMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aDD_BLKNUM(parameters)

# SYNOPSIS
#   RMV_BLKNUM(parameters)
#
# ARGS
#   parameters      RMV_BLKNUM - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_BLKNUM
#
# RETURNS
#   parameters      RMV_BLKNUMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_BLKNUMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rMV_BLKNUM(parameters)

# SYNOPSIS
#   LST_BLKNUM(parameters)
#
# ARGS
#   parameters      LST_BLKNUM - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_BLKNUM
#
# RETURNS
#   parameters      LST_BLKNUMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_BLKNUMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_BLKNUM(parameters)

# SYNOPSIS
#   ADD_WTNUM(parameters)
#
# ARGS
#   parameters      ADD_WTNUM - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_WTNUM
#
# RETURNS
#   parameters      ADD_WTNUMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_WTNUMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aDD_WTNUM(parameters)

# SYNOPSIS
#   RMV_WTNUM(parameters)
#
# ARGS
#   parameters      RMV_WTNUM - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_WTNUM
#
# RETURNS
#   parameters      RMV_WTNUMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_WTNUMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rMV_WTNUM(parameters)

# SYNOPSIS
#   LST_WTNUM(parameters)
#
# ARGS
#   parameters      LST_WTNUM - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WTNUM
#
# RETURNS
#   parameters      LST_WTNUMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WTNUMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_WTNUM(parameters)

# SYNOPSIS
#   SET_OWSBR(parameters)
#
# ARGS
#   parameters      SET_OWSBR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}SET_OWSBR
#
# RETURNS
#   parameters      SET_OWSBRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}SET_OWSBRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.sET_OWSBR(parameters)

# SYNOPSIS
#   RMV_OWSBR(parameters)
#
# ARGS
#   parameters      RMV_OWSBR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_OWSBR
#
# RETURNS
#   parameters      RMV_OWSBRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_OWSBRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rMV_OWSBR(parameters)

# SYNOPSIS
#   LST_OWSBR(parameters)
#
# ARGS
#   parameters      LST_OWSBR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_OWSBR
#
# RETURNS
#   parameters      LST_OWSBRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_OWSBRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_OWSBR(parameters)

# SYNOPSIS
#   PRK_OWSBR(parameters)
#
# ARGS
#   parameters      PRK_OWSBR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}PRK_OWSBR
#
# RETURNS
#   parameters      PRK_OWSBRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}PRK_OWSBRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.pRK_OWSBR(parameters)

# SYNOPSIS
#   RES_OWSBR(parameters)
#
# ARGS
#   parameters      RES_OWSBR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RES_OWSBR
#
# RETURNS
#   parameters      RES_OWSBRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RES_OWSBRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rES_OWSBR(parameters)

# SYNOPSIS
#   ADD_STRATEGY(parameters)
#
# ARGS
#   parameters      ADD_STRATEGY - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_STRATEGY
#
# RETURNS
#   parameters      ADD_STRATEGYResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_STRATEGYResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aDD_STRATEGY(parameters)

# SYNOPSIS
#   MOD_STRATEGY(parameters)
#
# ARGS
#   parameters      MOD_STRATEGY - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_STRATEGY
#
# RETURNS
#   parameters      MOD_STRATEGYResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_STRATEGYResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.mOD_STRATEGY(parameters)

# SYNOPSIS
#   LST_STRATEGY(parameters)
#
# ARGS
#   parameters      LST_STRATEGY - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_STRATEGY
#
# RETURNS
#   parameters      LST_STRATEGYResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_STRATEGYResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_STRATEGY(parameters)

# SYNOPSIS
#   RMV_STRATEGY(parameters)
#
# ARGS
#   parameters      RMV_STRATEGY - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_STRATEGY
#
# RETURNS
#   parameters      RMV_STRATEGYResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_STRATEGYResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rMV_STRATEGY(parameters)

# SYNOPSIS
#   ADD_GREENNUM(parameters)
#
# ARGS
#   parameters      ADD_GREENNUM - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_GREENNUM
#
# RETURNS
#   parameters      ADD_GREENNUMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_GREENNUMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aDD_GREENNUM(parameters)

# SYNOPSIS
#   RMV_GREENNUM(parameters)
#
# ARGS
#   parameters      RMV_GREENNUM - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_GREENNUM
#
# RETURNS
#   parameters      RMV_GREENNUMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_GREENNUMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rMV_GREENNUM(parameters)

# SYNOPSIS
#   LST_GREENNUM(parameters)
#
# ARGS
#   parameters      LST_GREENNUM - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_GREENNUM
#
# RETURNS
#   parameters      LST_GREENNUMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_GREENNUMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_GREENNUM(parameters)

# SYNOPSIS
#   ADD_REDNUM(parameters)
#
# ARGS
#   parameters      ADD_REDNUM - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_REDNUM
#
# RETURNS
#   parameters      ADD_REDNUMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_REDNUMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aDD_REDNUM(parameters)

# SYNOPSIS
#   RMV_REDNUM(parameters)
#
# ARGS
#   parameters      RMV_REDNUM - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_REDNUM
#
# RETURNS
#   parameters      RMV_REDNUMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_REDNUMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rMV_REDNUM(parameters)

# SYNOPSIS
#   LST_REDNUM(parameters)
#
# ARGS
#   parameters      LST_REDNUM - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_REDNUM
#
# RETURNS
#   parameters      LST_REDNUMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_REDNUMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_REDNUM(parameters)

# SYNOPSIS
#   ACT_BAOC(parameters)
#
# ARGS
#   parameters      ACT_BAOC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_BAOC
#
# RETURNS
#   parameters      ACT_BAOCResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_BAOCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aCT_BAOC(parameters)

# SYNOPSIS
#   DSP_BAOC(parameters)
#
# ARGS
#   parameters      DSP_BAOC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BAOC
#
# RETURNS
#   parameters      DSP_BAOCResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BAOCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_BAOC(parameters)

# SYNOPSIS
#   DEA_BAOC(parameters)
#
# ARGS
#   parameters      DEA_BAOC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_BAOC
#
# RETURNS
#   parameters      DEA_BAOCResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_BAOCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dEA_BAOC(parameters)

# SYNOPSIS
#   ACT_BOIC(parameters)
#
# ARGS
#   parameters      ACT_BOIC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_BOIC
#
# RETURNS
#   parameters      ACT_BOICResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_BOICResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aCT_BOIC(parameters)

# SYNOPSIS
#   DSP_BOIC(parameters)
#
# ARGS
#   parameters      DSP_BOIC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BOIC
#
# RETURNS
#   parameters      DSP_BOICResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BOICResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_BOIC(parameters)

# SYNOPSIS
#   DEA_BOIC(parameters)
#
# ARGS
#   parameters      DEA_BOIC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_BOIC
#
# RETURNS
#   parameters      DEA_BOICResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_BOICResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dEA_BOIC(parameters)

# SYNOPSIS
#   ACT_BOICEXHC(parameters)
#
# ARGS
#   parameters      ACT_BOICEXHC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_BOICEXHC
#
# RETURNS
#   parameters      ACT_BOICEXHCResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_BOICEXHCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aCT_BOICEXHC(parameters)

# SYNOPSIS
#   DSP_BOICEXHC(parameters)
#
# ARGS
#   parameters      DSP_BOICEXHC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BOICEXHC
#
# RETURNS
#   parameters      DSP_BOICEXHCResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BOICEXHCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_BOICEXHC(parameters)

# SYNOPSIS
#   DEA_BOICEXHC(parameters)
#
# ARGS
#   parameters      DEA_BOICEXHC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_BOICEXHC
#
# RETURNS
#   parameters      DEA_BOICEXHCResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_BOICEXHCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dEA_BOICEXHC(parameters)

# SYNOPSIS
#   ACT_BAIC(parameters)
#
# ARGS
#   parameters      ACT_BAIC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_BAIC
#
# RETURNS
#   parameters      ACT_BAICResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_BAICResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aCT_BAIC(parameters)

# SYNOPSIS
#   DSP_BAIC(parameters)
#
# ARGS
#   parameters      DSP_BAIC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BAIC
#
# RETURNS
#   parameters      DSP_BAICResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BAICResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_BAIC(parameters)

# SYNOPSIS
#   DEA_BAIC(parameters)
#
# ARGS
#   parameters      DEA_BAIC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_BAIC
#
# RETURNS
#   parameters      DEA_BAICResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_BAICResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dEA_BAIC(parameters)

# SYNOPSIS
#   ACT_BICROM(parameters)
#
# ARGS
#   parameters      ACT_BICROM - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_BICROM
#
# RETURNS
#   parameters      ACT_BICROMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_BICROMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aCT_BICROM(parameters)

# SYNOPSIS
#   DSP_BICROM(parameters)
#
# ARGS
#   parameters      DSP_BICROM - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BICROM
#
# RETURNS
#   parameters      DSP_BICROMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BICROMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_BICROM(parameters)

# SYNOPSIS
#   DEA_BICROM(parameters)
#
# ARGS
#   parameters      DEA_BICROM - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_BICROM
#
# RETURNS
#   parameters      DEA_BICROMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_BICROMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dEA_BICROM(parameters)

# SYNOPSIS
#   REG_SPEED_DIAL(parameters)
#
# ARGS
#   parameters      REG_SPEED_DIAL - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_SPEED_DIAL
#
# RETURNS
#   parameters      REG_SPEED_DIALResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_SPEED_DIALResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_SPEED_DIAL(parameters)

# SYNOPSIS
#   RPL_SPEED_DIAL(parameters)
#
# ARGS
#   parameters      RPL_SPEED_DIAL - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_SPEED_DIAL
#
# RETURNS
#   parameters      RPL_SPEED_DIALResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_SPEED_DIALResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_SPEED_DIAL(parameters)

# SYNOPSIS
#   DSP_SPEED_DIAL(parameters)
#
# ARGS
#   parameters      DSP_SPEED_DIAL - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SPEED_DIAL
#
# RETURNS
#   parameters      DSP_SPEED_DIALResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SPEED_DIALResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_SPEED_DIAL(parameters)

# SYNOPSIS
#   REG_GRNCALL(parameters)
#
# ARGS
#   parameters      REG_GRNCALL - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_GRNCALL
#
# RETURNS
#   parameters      REG_GRNCALLResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_GRNCALLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_GRNCALL(parameters)

# SYNOPSIS
#   RPL_GRNCALL(parameters)
#
# ARGS
#   parameters      RPL_GRNCALL - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_GRNCALL
#
# RETURNS
#   parameters      RPL_GRNCALLResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_GRNCALLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_GRNCALL(parameters)

# SYNOPSIS
#   DSP_GRNCALL(parameters)
#
# ARGS
#   parameters      DSP_GRNCALL - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_GRNCALL
#
# RETURNS
#   parameters      DSP_GRNCALLResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_GRNCALLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_GRNCALL(parameters)

# SYNOPSIS
#   SET_UPGRADE(parameters)
#
# ARGS
#   parameters      SET_UPGRADE - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}SET_UPGRADE
#
# RETURNS
#   parameters      SET_UPGRADEResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}SET_UPGRADEResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.sET_UPGRADE(parameters)

# SYNOPSIS
#   REG_AUTOCON(parameters)
#
# ARGS
#   parameters      REG_AUTOCON - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_AUTOCON
#
# RETURNS
#   parameters      REG_AUTOCONResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_AUTOCONResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_AUTOCON(parameters)

# SYNOPSIS
#   RPL_AUTOCON(parameters)
#
# ARGS
#   parameters      RPL_AUTOCON - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_AUTOCON
#
# RETURNS
#   parameters      RPL_AUTOCONResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_AUTOCONResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_AUTOCON(parameters)

# SYNOPSIS
#   DSP_AUTOCON(parameters)
#
# ARGS
#   parameters      DSP_AUTOCON - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_AUTOCON
#
# RETURNS
#   parameters      DSP_AUTOCONResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_AUTOCONResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_AUTOCON(parameters)

# SYNOPSIS
#   REG_NIGHTSRV(parameters)
#
# ARGS
#   parameters      REG_NIGHTSRV - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_NIGHTSRV
#
# RETURNS
#   parameters      REG_NIGHTSRVResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_NIGHTSRVResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_NIGHTSRV(parameters)

# SYNOPSIS
#   RPL_NIGHTSRV(parameters)
#
# ARGS
#   parameters      RPL_NIGHTSRV - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_NIGHTSRV
#
# RETURNS
#   parameters      RPL_NIGHTSRVResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_NIGHTSRVResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_NIGHTSRV(parameters)

# SYNOPSIS
#   DSP_NIGHTSRV(parameters)
#
# ARGS
#   parameters      DSP_NIGHTSRV - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_NIGHTSRV
#
# RETURNS
#   parameters      DSP_NIGHTSRVResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_NIGHTSRVResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_NIGHTSRV(parameters)

# SYNOPSIS
#   REG_BACKNUM(parameters)
#
# ARGS
#   parameters      REG_BACKNUM - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_BACKNUM
#
# RETURNS
#   parameters      REG_BACKNUMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_BACKNUMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_BACKNUM(parameters)

# SYNOPSIS
#   RPL_BACKNUM(parameters)
#
# ARGS
#   parameters      RPL_BACKNUM - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_BACKNUM
#
# RETURNS
#   parameters      RPL_BACKNUMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_BACKNUMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_BACKNUM(parameters)

# SYNOPSIS
#   DSP_BACKNUM(parameters)
#
# ARGS
#   parameters      DSP_BACKNUM - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BACKNUM
#
# RETURNS
#   parameters      DSP_BACKNUMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_BACKNUMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_BACKNUM(parameters)

# SYNOPSIS
#   REG_ABSENT(parameters)
#
# ARGS
#   parameters      REG_ABSENT - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_ABSENT
#
# RETURNS
#   parameters      REG_ABSENTResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_ABSENTResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_ABSENT(parameters)

# SYNOPSIS
#   RPL_ABSENT(parameters)
#
# ARGS
#   parameters      RPL_ABSENT - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_ABSENT
#
# RETURNS
#   parameters      RPL_ABSENTResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_ABSENTResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_ABSENT(parameters)

# SYNOPSIS
#   DSP_ABSENT(parameters)
#
# ARGS
#   parameters      DSP_ABSENT - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ABSENT
#
# RETURNS
#   parameters      DSP_ABSENTResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ABSENTResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_ABSENT(parameters)

# SYNOPSIS
#   REG_ASI(parameters)
#
# ARGS
#   parameters      REG_ASI - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_ASI
#
# RETURNS
#   parameters      REG_ASIResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_ASIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_ASI(parameters)

# SYNOPSIS
#   RPL_ASI(parameters)
#
# ARGS
#   parameters      RPL_ASI - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_ASI
#
# RETURNS
#   parameters      RPL_ASIResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_ASIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_ASI(parameters)

# SYNOPSIS
#   DSP_ASI(parameters)
#
# ARGS
#   parameters      DSP_ASI - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ASI
#
# RETURNS
#   parameters      DSP_ASIResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ASIResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_ASI(parameters)

# SYNOPSIS
#   REG_HOTLINE(parameters)
#
# ARGS
#   parameters      REG_HOTLINE - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_HOTLINE
#
# RETURNS
#   parameters      REG_HOTLINEResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_HOTLINEResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_HOTLINE(parameters)

# SYNOPSIS
#   DSP_HOTLINE(parameters)
#
# ARGS
#   parameters      DSP_HOTLINE - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_HOTLINE
#
# RETURNS
#   parameters      DSP_HOTLINEResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_HOTLINEResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_HOTLINE(parameters)

# SYNOPSIS
#   RPL_HOTLINE(parameters)
#
# ARGS
#   parameters      RPL_HOTLINE - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_HOTLINE
#
# RETURNS
#   parameters      RPL_HOTLINEResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_HOTLINEResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_HOTLINE(parameters)

# SYNOPSIS
#   REG_CETMCID(parameters)
#
# ARGS
#   parameters      REG_CETMCID - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CETMCID
#
# RETURNS
#   parameters      REG_CETMCIDResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CETMCIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_CETMCID(parameters)

# SYNOPSIS
#   DSP_CETMCID(parameters)
#
# ARGS
#   parameters      DSP_CETMCID - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CETMCID
#
# RETURNS
#   parameters      DSP_CETMCIDResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CETMCIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_CETMCID(parameters)

# SYNOPSIS
#   RPL_CETMCID(parameters)
#
# ARGS
#   parameters      RPL_CETMCID - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CETMCID
#
# RETURNS
#   parameters      RPL_CETMCIDResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CETMCIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_CETMCID(parameters)

# SYNOPSIS
#   REG_MCN(parameters)
#
# ARGS
#   parameters      REG_MCN - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_MCN
#
# RETURNS
#   parameters      REG_MCNResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_MCNResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_MCN(parameters)

# SYNOPSIS
#   DSP_MCN(parameters)
#
# ARGS
#   parameters      DSP_MCN - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_MCN
#
# RETURNS
#   parameters      DSP_MCNResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_MCNResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_MCN(parameters)

# SYNOPSIS
#   RPL_MCN(parameters)
#
# ARGS
#   parameters      RPL_MCN - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_MCN
#
# RETURNS
#   parameters      RPL_MCNResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_MCNResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_MCN(parameters)

# SYNOPSIS
#   SET_SUBS(parameters)
#
# ARGS
#   parameters      SET_SUBS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}SET_SUBS
#
# RETURNS
#   parameters      SET_SUBSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}SET_SUBSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.sET_SUBS(parameters)

# SYNOPSIS
#   LST_SUBS(parameters)
#
# ARGS
#   parameters      LST_SUBS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_SUBS
#
# RETURNS
#   parameters      LST_SUBSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_SUBSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_SUBS(parameters)

# SYNOPSIS
#   REG_ONEKEY(parameters)
#
# ARGS
#   parameters      REG_ONEKEY - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_ONEKEY
#
# RETURNS
#   parameters      REG_ONEKEYResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_ONEKEYResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_ONEKEY(parameters)

# SYNOPSIS
#   RPL_ONEKEY(parameters)
#
# ARGS
#   parameters      RPL_ONEKEY - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_ONEKEY
#
# RETURNS
#   parameters      RPL_ONEKEYResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_ONEKEYResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_ONEKEY(parameters)

# SYNOPSIS
#   DSP_ONEKEY(parameters)
#
# ARGS
#   parameters      DSP_ONEKEY - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ONEKEY
#
# RETURNS
#   parameters      DSP_ONEKEYResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ONEKEYResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_ONEKEY(parameters)

# SYNOPSIS
#   REG_IBDS(parameters)
#
# ARGS
#   parameters      REG_IBDS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_IBDS
#
# RETURNS
#   parameters      REG_IBDSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_IBDSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_IBDS(parameters)

# SYNOPSIS
#   DSP_IBDS(parameters)
#
# ARGS
#   parameters      DSP_IBDS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_IBDS
#
# RETURNS
#   parameters      DSP_IBDSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_IBDSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_IBDS(parameters)

# SYNOPSIS
#   RPL_IBDS(parameters)
#
# ARGS
#   parameters      RPL_IBDS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_IBDS
#
# RETURNS
#   parameters      RPL_IBDSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_IBDSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_IBDS(parameters)

# SYNOPSIS
#   QRY_IBDS(parameters)
#
# ARGS
#   parameters      QRY_IBDS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}QRY_IBDS
#
# RETURNS
#   parameters      QRY_IBDSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}QRY_IBDSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.qRY_IBDS(parameters)

# SYNOPSIS
#   REG_OBDS(parameters)
#
# ARGS
#   parameters      REG_OBDS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_OBDS
#
# RETURNS
#   parameters      REG_OBDSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_OBDSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_OBDS(parameters)

# SYNOPSIS
#   DSP_OBDS(parameters)
#
# ARGS
#   parameters      DSP_OBDS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_OBDS
#
# RETURNS
#   parameters      DSP_OBDSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_OBDSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_OBDS(parameters)

# SYNOPSIS
#   RPL_OBDS(parameters)
#
# ARGS
#   parameters      RPL_OBDS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_OBDS
#
# RETURNS
#   parameters      RPL_OBDSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_OBDSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_OBDS(parameters)

# SYNOPSIS
#   ADD_NPAS(parameters)
#
# ARGS
#   parameters      ADD_NPAS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_NPAS
#
# RETURNS
#   parameters      ADD_NPASResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_NPASResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aDD_NPAS(parameters)

# SYNOPSIS
#   MOD_NPAS(parameters)
#
# ARGS
#   parameters      MOD_NPAS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_NPAS
#
# RETURNS
#   parameters      MOD_NPASResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_NPASResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.mOD_NPAS(parameters)

# SYNOPSIS
#   RMV_NPAS(parameters)
#
# ARGS
#   parameters      RMV_NPAS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_NPAS
#
# RETURNS
#   parameters      RMV_NPASResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_NPASResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rMV_NPAS(parameters)

# SYNOPSIS
#   LST_NPAS(parameters)
#
# ARGS
#   parameters      LST_NPAS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_NPAS
#
# RETURNS
#   parameters      LST_NPASResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_NPASResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_NPAS(parameters)

# SYNOPSIS
#   REG_ALLCFX(parameters)
#
# ARGS
#   parameters      REG_ALLCFX - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_ALLCFX
#
# RETURNS
#   parameters      REG_ALLCFXResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_ALLCFXResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_ALLCFX(parameters)

# SYNOPSIS
#   RPL_ALLCFX(parameters)
#
# ARGS
#   parameters      RPL_ALLCFX - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_ALLCFX
#
# RETURNS
#   parameters      RPL_ALLCFXResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_ALLCFXResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_ALLCFX(parameters)

# SYNOPSIS
#   REG_CONCFX(parameters)
#
# ARGS
#   parameters      REG_CONCFX - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CONCFX
#
# RETURNS
#   parameters      REG_CONCFXResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CONCFXResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_CONCFX(parameters)

# SYNOPSIS
#   RPL_CONCFX(parameters)
#
# ARGS
#   parameters      RPL_CONCFX - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CONCFX
#
# RETURNS
#   parameters      RPL_CONCFXResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CONCFXResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_CONCFX(parameters)

# SYNOPSIS
#   REG_GOIR(parameters)
#
# ARGS
#   parameters      REG_GOIR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_GOIR
#
# RETURNS
#   parameters      REG_GOIRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_GOIRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_GOIR(parameters)

# SYNOPSIS
#   RPL_GOIR(parameters)
#
# ARGS
#   parameters      RPL_GOIR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_GOIR
#
# RETURNS
#   parameters      RPL_GOIRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_GOIRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_GOIR(parameters)

# SYNOPSIS
#   DSP_GOIR(parameters)
#
# ARGS
#   parameters      DSP_GOIR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_GOIR
#
# RETURNS
#   parameters      DSP_GOIRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_GOIRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_GOIR(parameters)

# SYNOPSIS
#   REG_MOIR(parameters)
#
# ARGS
#   parameters      REG_MOIR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_MOIR
#
# RETURNS
#   parameters      REG_MOIRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_MOIRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_MOIR(parameters)

# SYNOPSIS
#   RPL_MOIR(parameters)
#
# ARGS
#   parameters      RPL_MOIR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_MOIR
#
# RETURNS
#   parameters      RPL_MOIRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_MOIRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_MOIR(parameters)

# SYNOPSIS
#   DSP_MOIR(parameters)
#
# ARGS
#   parameters      DSP_MOIR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_MOIR
#
# RETURNS
#   parameters      DSP_MOIRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_MOIRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_MOIR(parameters)

# SYNOPSIS
#   REG_TIR(parameters)
#
# ARGS
#   parameters      REG_TIR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_TIR
#
# RETURNS
#   parameters      REG_TIRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_TIRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_TIR(parameters)

# SYNOPSIS
#   RPL_TIR(parameters)
#
# ARGS
#   parameters      RPL_TIR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_TIR
#
# RETURNS
#   parameters      RPL_TIRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_TIRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_TIR(parameters)

# SYNOPSIS
#   DSP_TIR(parameters)
#
# ARGS
#   parameters      DSP_TIR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_TIR
#
# RETURNS
#   parameters      DSP_TIRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_TIRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_TIR(parameters)

# SYNOPSIS
#   REG_DSTR(parameters)
#
# ARGS
#   parameters      REG_DSTR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_DSTR
#
# RETURNS
#   parameters      REG_DSTRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_DSTRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_DSTR(parameters)

# SYNOPSIS
#   RPL_DSTR(parameters)
#
# ARGS
#   parameters      RPL_DSTR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_DSTR
#
# RETURNS
#   parameters      RPL_DSTRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_DSTRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_DSTR(parameters)

# SYNOPSIS
#   DSP_DSTR(parameters)
#
# ARGS
#   parameters      DSP_DSTR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DSTR
#
# RETURNS
#   parameters      DSP_DSTRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_DSTRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_DSTR(parameters)

# SYNOPSIS
#   ADD_VIMPU(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      ADD_VIMPURequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_VIMPURequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      ADD_VIMPUResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_VIMPUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.aDD_VIMPU(parametersHeader, parameters)

# SYNOPSIS
#   RMV_VIMPU(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      RMV_VIMPURequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_VIMPURequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      RMV_VIMPUResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_VIMPUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.rMV_VIMPU(parametersHeader, parameters)

# SYNOPSIS
#   MOD_VIMPU(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      MOD_VIMPURequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_VIMPURequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      MOD_VIMPUResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_VIMPUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.mOD_VIMPU(parametersHeader, parameters)

# SYNOPSIS
#   LST_VIMPU(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      LST_VIMPURequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_VIMPURequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      LST_VIMPUResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_VIMPUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.lST_VIMPU(parametersHeader, parameters)

# SYNOPSIS
#   LST_IBDVIMPU(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      LST_IBDVIMPURequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_IBDVIMPURequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      LST_IBDVIMPUResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_IBDVIMPUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.lST_IBDVIMPU(parametersHeader, parameters)

# SYNOPSIS
#   PRK_SBR(parameters)
#
# ARGS
#   parameters      PRK_SBR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}PRK_SBR
#
# RETURNS
#   parameters      PRK_SBRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}PRK_SBRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.pRK_SBR(parameters)

# SYNOPSIS
#   LST_PRKSBR(parameters)
#
# ARGS
#   parameters      LST_PRKSBR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PRKSBR
#
# RETURNS
#   parameters      LST_PRKSBRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PRKSBRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_PRKSBR(parameters)

# SYNOPSIS
#   RES_PRKSBR(parameters)
#
# ARGS
#   parameters      RES_PRKSBR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RES_PRKSBR
#
# RETURNS
#   parameters      RES_PRKSBRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RES_PRKSBRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rES_PRKSBR(parameters)

# SYNOPSIS
#   ADD_NUMINVA(parameters)
#
# ARGS
#   parameters      ADD_NUMINVA - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_NUMINVA
#
# RETURNS
#   parameters      ADD_NUMINVAResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_NUMINVAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aDD_NUMINVA(parameters)

# SYNOPSIS
#   MOD_NUMINVA(parameters)
#
# ARGS
#   parameters      MOD_NUMINVA - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_NUMINVA
#
# RETURNS
#   parameters      MOD_NUMINVAResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_NUMINVAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.mOD_NUMINVA(parameters)

# SYNOPSIS
#   RMV_NUMINVA(parameters)
#
# ARGS
#   parameters      RMV_NUMINVA - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_NUMINVA
#
# RETURNS
#   parameters      RMV_NUMINVAResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_NUMINVAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rMV_NUMINVA(parameters)

# SYNOPSIS
#   LST_NUMINVA(parameters)
#
# ARGS
#   parameters      LST_NUMINVA - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_NUMINVA
#
# RETURNS
#   parameters      LST_NUMINVAResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_NUMINVAResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_NUMINVA(parameters)

# SYNOPSIS
#   ADD_OUTBOUNDUSER(parameters)
#
# ARGS
#   parameters      ADD_OUTBOUNDUSER - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_OUTBOUNDUSER
#
# RETURNS
#   parameters      ADD_OUTBOUNDUSERResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_OUTBOUNDUSERResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aDD_OUTBOUNDUSER(parameters)

# SYNOPSIS
#   RMV_OUTBOUNDUSER(parameters)
#
# ARGS
#   parameters      RMV_OUTBOUNDUSER - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_OUTBOUNDUSER
#
# RETURNS
#   parameters      RMV_OUTBOUNDUSERResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_OUTBOUNDUSERResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rMV_OUTBOUNDUSER(parameters)

# SYNOPSIS
#   ADD_OUTBOUNDVIMPU(parameters)
#
# ARGS
#   parameters      ADD_OUTBOUNDVIMPU - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_OUTBOUNDVIMPU
#
# RETURNS
#   parameters      ADD_OUTBOUNDVIMPUResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_OUTBOUNDVIMPUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aDD_OUTBOUNDVIMPU(parameters)

# SYNOPSIS
#   RMV_OUTBOUNDVIMPU(parameters)
#
# ARGS
#   parameters      RMV_OUTBOUNDVIMPU - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_OUTBOUNDVIMPU
#
# RETURNS
#   parameters      RMV_OUTBOUNDVIMPUResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_OUTBOUNDVIMPUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rMV_OUTBOUNDVIMPU(parameters)

# SYNOPSIS
#   APPLY_PRVSNSBR(parameters)
#
# ARGS
#   parameters      APPLY_PRVSNSBR - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}APPLY_PRVSNSBR
#
# RETURNS
#   parameters      APPLY_PRVSNSBRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}APPLY_PRVSNSBRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aPPLY_PRVSNSBR(parameters)

# SYNOPSIS
#   ADD_IBDSUBNUM(parameters)
#
# ARGS
#   parameters      ADD_IBDSUBNUM - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_IBDSUBNUM
#
# RETURNS
#   parameters      ADD_IBDSUBNUMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_IBDSUBNUMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aDD_IBDSUBNUM(parameters)

# SYNOPSIS
#   LST_IBDSUBNUM(parameters)
#
# ARGS
#   parameters      LST_IBDSUBNUM - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_IBDSUBNUM
#
# RETURNS
#   parameters      LST_IBDSUBNUMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_IBDSUBNUMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_IBDSUBNUM(parameters)

# SYNOPSIS
#   AddSubUsr(parameters)
#
# ARGS
#   parameters      AddSubUsr - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}AddSubUsr
#
# RETURNS
#   parameters      AddSubUsrResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}AddSubUsrResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.addSubUsr(parameters)

# SYNOPSIS
#   CancelSubUsr(parameters)
#
# ARGS
#   parameters      CancelSubUsr - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}CancelSubUsr
#
# RETURNS
#   parameters      CancelSubUsrResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}CancelSubUsrResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.cancelSubUsr(parameters)

# SYNOPSIS
#   RmvSubUsr(parameters)
#
# ARGS
#   parameters      RmvSubUsr - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RmvSubUsr
#
# RETURNS
#   parameters      RmvSubUsrResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RmvSubUsrResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rmvSubUsr(parameters)

# SYNOPSIS
#   REG_CALLERID(parameters)
#
# ARGS
#   parameters      REG_CALLERID - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CALLERID
#
# RETURNS
#   parameters      REG_CALLERIDResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CALLERIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_CALLERID(parameters)

# SYNOPSIS
#   RPL_CALLERID(parameters)
#
# ARGS
#   parameters      RPL_CALLERID - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CALLERID
#
# RETURNS
#   parameters      RPL_CALLERIDResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CALLERIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_CALLERID(parameters)

# SYNOPSIS
#   DSP_CALLERID(parameters)
#
# ARGS
#   parameters      DSP_CALLERID - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CALLERID
#
# RETURNS
#   parameters      DSP_CALLERIDResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CALLERIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_CALLERID(parameters)

# SYNOPSIS
#   ACT_CALLERID(parameters)
#
# ARGS
#   parameters      ACT_CALLERID - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_CALLERID
#
# RETURNS
#   parameters      ACT_CALLERIDResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ACT_CALLERIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aCT_CALLERID(parameters)

# SYNOPSIS
#   DEA_CALLERID(parameters)
#
# ARGS
#   parameters      DEA_CALLERID - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_CALLERID
#
# RETURNS
#   parameters      DEA_CALLERIDResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DEA_CALLERIDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dEA_CALLERID(parameters)

# SYNOPSIS
#   REG_IPTVVC(parameters)
#
# ARGS
#   parameters      REG_IPTVVC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_IPTVVC
#
# RETURNS
#   parameters      REG_IPTVVCResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_IPTVVCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_IPTVVC(parameters)

# SYNOPSIS
#   RPL_IPTVVC(parameters)
#
# ARGS
#   parameters      RPL_IPTVVC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_IPTVVC
#
# RETURNS
#   parameters      RPL_IPTVVCResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_IPTVVCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_IPTVVC(parameters)

# SYNOPSIS
#   DSP_IPTVVC(parameters)
#
# ARGS
#   parameters      DSP_IPTVVC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_IPTVVC
#
# RETURNS
#   parameters      DSP_IPTVVCResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_IPTVVCResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_IPTVVC(parameters)

# SYNOPSIS
#   REG_NP(parameters)
#
# ARGS
#   parameters      REG_NP - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_NP
#
# RETURNS
#   parameters      REG_NPResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_NPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_NP(parameters)

# SYNOPSIS
#   RPL_NP(parameters)
#
# ARGS
#   parameters      RPL_NP - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_NP
#
# RETURNS
#   parameters      RPL_NPResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_NPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_NP(parameters)

# SYNOPSIS
#   DSP_NP(parameters)
#
# ARGS
#   parameters      DSP_NP - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_NP
#
# RETURNS
#   parameters      DSP_NPResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_NPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_NP(parameters)

# SYNOPSIS
#   REG_SEC(parameters)
#
# ARGS
#   parameters      REG_SEC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_SEC
#
# RETURNS
#   parameters      REG_SECResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_SECResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_SEC(parameters)

# SYNOPSIS
#   RPL_SEC(parameters)
#
# ARGS
#   parameters      RPL_SEC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_SEC
#
# RETURNS
#   parameters      RPL_SECResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_SECResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_SEC(parameters)

# SYNOPSIS
#   DSP_SEC(parameters)
#
# ARGS
#   parameters      DSP_SEC - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SEC
#
# RETURNS
#   parameters      DSP_SECResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SECResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_SEC(parameters)

# SYNOPSIS
#   REG_SB(parameters)
#
# ARGS
#   parameters      REG_SB - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_SB
#
# RETURNS
#   parameters      REG_SBResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_SBResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_SB(parameters)

# SYNOPSIS
#   RPL_SB(parameters)
#
# ARGS
#   parameters      RPL_SB - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_SB
#
# RETURNS
#   parameters      RPL_SBResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_SBResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_SB(parameters)

# SYNOPSIS
#   DSP_SB(parameters)
#
# ARGS
#   parameters      DSP_SB - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SB
#
# RETURNS
#   parameters      DSP_SBResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SBResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_SB(parameters)

# SYNOPSIS
#   ADD_FILCRIT(parameters)
#
# ARGS
#   parameters      ADD_FILCRIT - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_FILCRIT
#
# RETURNS
#   parameters      ADD_FILCRITResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_FILCRITResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aDD_FILCRIT(parameters)

# SYNOPSIS
#   RMV_FILCRIT(parameters)
#
# ARGS
#   parameters      RMV_FILCRIT - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_FILCRIT
#
# RETURNS
#   parameters      RMV_FILCRITResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_FILCRITResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rMV_FILCRIT(parameters)

# SYNOPSIS
#   MOD_FILCRIT(parameters)
#
# ARGS
#   parameters      MOD_FILCRIT - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_FILCRIT
#
# RETURNS
#   parameters      MOD_FILCRITResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_FILCRITResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.mOD_FILCRIT(parameters)

# SYNOPSIS
#   LST_FILCRIT(parameters)
#
# ARGS
#   parameters      LST_FILCRIT - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_FILCRIT
#
# RETURNS
#   parameters      LST_FILCRITResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_FILCRITResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_FILCRIT(parameters)

# SYNOPSIS
#   ADD_CALLERINFO(parameters)
#
# ARGS
#   parameters      ADD_CALLERINFO - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CALLERINFO
#
# RETURNS
#   parameters      ADD_CALLERINFOResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CALLERINFOResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aDD_CALLERINFO(parameters)

# SYNOPSIS
#   RMV_CALLERINFO(parameters)
#
# ARGS
#   parameters      RMV_CALLERINFO - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CALLERINFO
#
# RETURNS
#   parameters      RMV_CALLERINFOResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CALLERINFOResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rMV_CALLERINFO(parameters)

# SYNOPSIS
#   MOD_CALLERINFO(parameters)
#
# ARGS
#   parameters      MOD_CALLERINFO - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CALLERINFO
#
# RETURNS
#   parameters      MOD_CALLERINFOResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CALLERINFOResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.mOD_CALLERINFO(parameters)

# SYNOPSIS
#   LST_CALLERINFO(parameters)
#
# ARGS
#   parameters      LST_CALLERINFO - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CALLERINFO
#
# RETURNS
#   parameters      LST_CALLERINFOResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CALLERINFOResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_CALLERINFO(parameters)

# SYNOPSIS
#   SET_PRESSTUS(parameters)
#
# ARGS
#   parameters      SET_PRESSTUS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}SET_PRESSTUS
#
# RETURNS
#   parameters      SET_PRESSTUSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}SET_PRESSTUSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.sET_PRESSTUS(parameters)

# SYNOPSIS
#   LST_PRESSTUS(parameters)
#
# ARGS
#   parameters      LST_PRESSTUS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PRESSTUS
#
# RETURNS
#   parameters      LST_PRESSTUSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PRESSTUSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_PRESSTUS(parameters)

# SYNOPSIS
#   ADD_ONENUM(parameters)
#
# ARGS
#   parameters      ADD_ONENUM - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_ONENUM
#
# RETURNS
#   parameters      ADD_ONENUMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_ONENUMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aDD_ONENUM(parameters)

# SYNOPSIS
#   RMV_ONENUM(parameters)
#
# ARGS
#   parameters      RMV_ONENUM - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_ONENUM
#
# RETURNS
#   parameters      RMV_ONENUMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_ONENUMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rMV_ONENUM(parameters)

# SYNOPSIS
#   MOD_ONENUM(parameters)
#
# ARGS
#   parameters      MOD_ONENUM - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_ONENUM
#
# RETURNS
#   parameters      MOD_ONENUMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_ONENUMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.mOD_ONENUM(parameters)

# SYNOPSIS
#   LST_ONENUM(parameters)
#
# ARGS
#   parameters      LST_ONENUM - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ONENUM
#
# RETURNS
#   parameters      LST_ONENUMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ONENUMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_ONENUM(parameters)

# SYNOPSIS
#   ADD_ASSLST(parameters)
#
# ARGS
#   parameters      ADD_ASSLST - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_ASSLST
#
# RETURNS
#   parameters      ADD_ASSLSTResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_ASSLSTResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aDD_ASSLST(parameters)

# SYNOPSIS
#   RMV_ASSLST(parameters)
#
# ARGS
#   parameters      RMV_ASSLST - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_ASSLST
#
# RETURNS
#   parameters      RMV_ASSLSTResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_ASSLSTResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rMV_ASSLST(parameters)

# SYNOPSIS
#   MOD_ASSLST(parameters)
#
# ARGS
#   parameters      MOD_ASSLST - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_ASSLST
#
# RETURNS
#   parameters      MOD_ASSLSTResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_ASSLSTResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.mOD_ASSLST(parameters)

# SYNOPSIS
#   LST_ASSLST(parameters)
#
# ARGS
#   parameters      LST_ASSLST - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ASSLST
#
# RETURNS
#   parameters      LST_ASSLSTResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ASSLSTResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_ASSLST(parameters)

# SYNOPSIS
#   ADD_CUGINFO(parameters)
#
# ARGS
#   parameters      ADD_CUGINFO - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CUGINFO
#
# RETURNS
#   parameters      ADD_CUGINFOResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CUGINFOResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aDD_CUGINFO(parameters)

# SYNOPSIS
#   MOD_CUGINFO(parameters)
#
# ARGS
#   parameters      MOD_CUGINFO - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CUGINFO
#
# RETURNS
#   parameters      MOD_CUGINFOResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CUGINFOResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.mOD_CUGINFO(parameters)

# SYNOPSIS
#   RMV_CUGINFO(parameters)
#
# ARGS
#   parameters      RMV_CUGINFO - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CUGINFO
#
# RETURNS
#   parameters      RMV_CUGINFOResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CUGINFOResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rMV_CUGINFO(parameters)

# SYNOPSIS
#   LST_CUGINFO(parameters)
#
# ARGS
#   parameters      LST_CUGINFO - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CUGINFO
#
# RETURNS
#   parameters      LST_CUGINFOResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CUGINFOResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_CUGINFO(parameters)

# SYNOPSIS
#   REG_SS(parameters)
#
# ARGS
#   parameters      REG_SS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_SS
#
# RETURNS
#   parameters      REG_SSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_SSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_SS(parameters)

# SYNOPSIS
#   DSP_SS(parameters)
#
# ARGS
#   parameters      DSP_SS - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SS
#
# RETURNS
#   parameters      DSP_SSResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SSResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_SS(parameters)

# SYNOPSIS
#   RST_PIN(parameters)
#
# ARGS
#   parameters      RST_PIN - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RST_PIN
#
# RETURNS
#   parameters      RST_PINResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RST_PINResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rST_PIN(parameters)

# SYNOPSIS
#   DSP_PIN(parameters)
#
# ARGS
#   parameters      DSP_PIN - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_PIN
#
# RETURNS
#   parameters      DSP_PINResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_PINResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_PIN(parameters)

# SYNOPSIS
#   SET_PINMODE(parameters)
#
# ARGS
#   parameters      SET_PINMODE - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}SET_PINMODE
#
# RETURNS
#   parameters      SET_PINMODEResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}SET_PINMODEResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.sET_PINMODE(parameters)

# SYNOPSIS
#   LST_PINMODE(parameters)
#
# ARGS
#   parameters      LST_PINMODE - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PINMODE
#
# RETURNS
#   parameters      LST_PINMODEResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PINMODEResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_PINMODE(parameters)

# SYNOPSIS
#   SET_CDIVBARGRP(parameters)
#
# ARGS
#   parameters      SET_CDIVBARGRP - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}SET_CDIVBARGRP
#
# RETURNS
#   parameters      SET_CDIVBARGRPResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}SET_CDIVBARGRPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.sET_CDIVBARGRP(parameters)

# SYNOPSIS
#   LST_CDIVBARGRP(parameters)
#
# ARGS
#   parameters      LST_CDIVBARGRP - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CDIVBARGRP
#
# RETURNS
#   parameters      LST_CDIVBARGRPResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CDIVBARGRPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_CDIVBARGRP(parameters)

# SYNOPSIS
#   DSP_SS_USE_ALLOWED(parameters)
#
# ARGS
#   parameters      DSP_SS_USE_ALLOWED - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SS_USE_ALLOWED
#
# RETURNS
#   parameters      DSP_SS_USE_ALLOWEDResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SS_USE_ALLOWEDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_SS_USE_ALLOWED(parameters)

# SYNOPSIS
#   ADD_TP(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      ADD_TPRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_TPRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      ADD_TPResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_TPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.aDD_TP(parametersHeader, parameters)

# SYNOPSIS
#   MOD_TP(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      MOD_TPRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_TPRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      MOD_TPResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_TPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.mOD_TP(parametersHeader, parameters)

# SYNOPSIS
#   RMV_TP(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      RMV_TPRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_TPRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      RMV_TPResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_TPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.rMV_TP(parametersHeader, parameters)

# SYNOPSIS
#   LST_TP(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      LST_TPRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_TPRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      LST_TPResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_TPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.lST_TP(parametersHeader, parameters)

# SYNOPSIS
#   ADD_CXSBR(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      ADD_CXSBRRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXSBRRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      ADD_CXSBRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXSBRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.aDD_CXSBR(parametersHeader, parameters)

# SYNOPSIS
#   RMV_CXSBR(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      RMV_CXSBRRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXSBRRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      RMV_CXSBRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXSBRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.rMV_CXSBR(parametersHeader, parameters)

# SYNOPSIS
#   MOD_CXSBR(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      MOD_CXSBRRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXSBRRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      MOD_CXSBRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXSBRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.mOD_CXSBR(parametersHeader, parameters)

# SYNOPSIS
#   LST_CXSBR(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      LST_CXSBRRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSBRRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      LST_CXSBRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSBRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.lST_CXSBR(parametersHeader, parameters)

# SYNOPSIS
#   ADD_CXGRP(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      ADD_CXGRPRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXGRPRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      ADD_CXGRPResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXGRPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.aDD_CXGRP(parametersHeader, parameters)

# SYNOPSIS
#   RMV_CXGRP(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      RMV_CXGRPRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXGRPRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      RMV_CXGRPResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXGRPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.rMV_CXGRP(parametersHeader, parameters)

# SYNOPSIS
#   MOD_CXGRP(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      MOD_CXGRPRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXGRPRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      MOD_CXGRPResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXGRPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.mOD_CXGRP(parametersHeader, parameters)

# SYNOPSIS
#   LST_CXGRP(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      LST_CXGRPRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXGRPRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      LST_CXGRPResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXGRPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.lST_CXGRP(parametersHeader, parameters)

# SYNOPSIS
#   ADD_CXSUBGRP(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      ADD_CXSUBGRPRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXSUBGRPRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      ADD_CXSUBGRPResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXSUBGRPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.aDD_CXSUBGRP(parametersHeader, parameters)

# SYNOPSIS
#   RMV_CXSUBGRP(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      RMV_CXSUBGRPRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXSUBGRPRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      RMV_CXSUBGRPResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXSUBGRPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.rMV_CXSUBGRP(parametersHeader, parameters)

# SYNOPSIS
#   MOD_CXSUBGRP(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      MOD_CXSUBGRPRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXSUBGRPRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      MOD_CXSUBGRPResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXSUBGRPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.mOD_CXSUBGRP(parametersHeader, parameters)

# SYNOPSIS
#   LST_CXSUBGRP(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      LST_CXSUBGRPRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSUBGRPRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      LST_CXSUBGRPResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSUBGRPResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.lST_CXSUBGRP(parametersHeader, parameters)

# SYNOPSIS
#   ADD_OCXPFX(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      ADD_OCXPFXRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_OCXPFXRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      ADD_OCXPFXResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_OCXPFXResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.aDD_OCXPFX(parametersHeader, parameters)

# SYNOPSIS
#   RMV_OCXPFX(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      RMV_OCXPFXRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_OCXPFXRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      RMV_OCXPFXResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_OCXPFXResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.rMV_OCXPFX(parametersHeader, parameters)

# SYNOPSIS
#   MOD_OCXPFX(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      MOD_OCXPFXRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_OCXPFXRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      MOD_OCXPFXResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_OCXPFXResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.mOD_OCXPFX(parametersHeader, parameters)

# SYNOPSIS
#   LST_OCXPFX(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      LST_OCXPFXRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_OCXPFXRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      LST_OCXPFXResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_OCXPFXResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.lST_OCXPFX(parametersHeader, parameters)

# SYNOPSIS
#   ADD_ICXPFX(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      ADD_ICXPFXRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_ICXPFXRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      ADD_ICXPFXResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_ICXPFXResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.aDD_ICXPFX(parametersHeader, parameters)

# SYNOPSIS
#   RMV_ICXPFX(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      RMV_ICXPFXRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_ICXPFXRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      RMV_ICXPFXResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_ICXPFXResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.rMV_ICXPFX(parametersHeader, parameters)

# SYNOPSIS
#   MOD_ICXPFX(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      MOD_ICXPFXRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_ICXPFXRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      MOD_ICXPFXResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_ICXPFXResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.mOD_ICXPFX(parametersHeader, parameters)

# SYNOPSIS
#   LST_ICXPFX(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      LST_ICXPFXRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ICXPFXRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      LST_ICXPFXResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ICXPFXResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.lST_ICXPFX(parametersHeader, parameters)

# SYNOPSIS
#   ADD_WACCTL(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      ADD_WACCTLRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_WACCTLRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      ADD_WACCTLResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_WACCTLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.aDD_WACCTL(parametersHeader, parameters)

# SYNOPSIS
#   RMV_WACCTL(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      RMV_WACCTLRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_WACCTLRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      RMV_WACCTLResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_WACCTLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.rMV_WACCTL(parametersHeader, parameters)

# SYNOPSIS
#   MOD_WACCTL(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      MOD_WACCTLRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_WACCTLRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      MOD_WACCTLResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_WACCTLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.mOD_WACCTL(parametersHeader, parameters)

# SYNOPSIS
#   LST_WACCTL(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      LST_WACCTLRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WACCTLRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      LST_WACCTLResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WACCTLResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.lST_WACCTL(parametersHeader, parameters)

# SYNOPSIS
#   ADD_WCXPFX(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      ADD_WCXPFXRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_WCXPFXRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      ADD_WCXPFXResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_WCXPFXResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.aDD_WCXPFX(parametersHeader, parameters)

# SYNOPSIS
#   RMV_WCXPFX(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      RMV_WCXPFXRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_WCXPFXRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      RMV_WCXPFXResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_WCXPFXResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.rMV_WCXPFX(parametersHeader, parameters)

# SYNOPSIS
#   MOD_WCXPFX(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      MOD_WCXPFXRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_WCXPFXRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      MOD_WCXPFXResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_WCXPFXResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.mOD_WCXPFX(parametersHeader, parameters)

# SYNOPSIS
#   LST_WCXPFX(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      LST_WCXPFXRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WCXPFXRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      LST_WCXPFXResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WCXPFXResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.lST_WCXPFX(parametersHeader, parameters)

# SYNOPSIS
#   ADD_PBX(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      ADD_PBXRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_PBXRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      ADD_PBXResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_PBXResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.aDD_PBX(parametersHeader, parameters)

# SYNOPSIS
#   RMV_PBX(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      RMV_PBXRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_PBXRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      RMV_PBXResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_PBXResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.rMV_PBX(parametersHeader, parameters)

# SYNOPSIS
#   MOD_PBX(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      MOD_PBXRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_PBXRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      MOD_PBXResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_PBXResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.mOD_PBX(parametersHeader, parameters)

# SYNOPSIS
#   LST_PBX(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      LST_PBXRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PBXRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      LST_PBXResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PBXResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.lST_PBX(parametersHeader, parameters)

# SYNOPSIS
#   ADD_PBXSBR(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      ADD_PBXSBRRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_PBXSBRRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      ADD_PBXSBRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_PBXSBRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.aDD_PBXSBR(parametersHeader, parameters)

# SYNOPSIS
#   RMV_PBXSBR(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      RMV_PBXSBRRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_PBXSBRRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      RMV_PBXSBRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_PBXSBRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.rMV_PBXSBR(parametersHeader, parameters)

# SYNOPSIS
#   MOD_PBXSBR(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      MOD_PBXSBRRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_PBXSBRRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      MOD_PBXSBRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_PBXSBRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.mOD_PBXSBR(parametersHeader, parameters)

# SYNOPSIS
#   LST_PBXSBR(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      LST_PBXSBRRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PBXSBRRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      LST_PBXSBRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_PBXSBRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.lST_PBXSBR(parametersHeader, parameters)

# SYNOPSIS
#   ADD_CXSD(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      ADD_CXSDRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXSDRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      ADD_CXSDResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXSDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.aDD_CXSD(parametersHeader, parameters)

# SYNOPSIS
#   RMV_CXSD(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      RMV_CXSDRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXSDRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      RMV_CXSDResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXSDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.rMV_CXSD(parametersHeader, parameters)

# SYNOPSIS
#   MOD_CXSD(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      MOD_CXSDRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXSDRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      MOD_CXSDResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXSDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.mOD_CXSD(parametersHeader, parameters)

# SYNOPSIS
#   LST_CXSD(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      LST_CXSDRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSDRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      LST_CXSDResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSDResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.lST_CXSD(parametersHeader, parameters)

# SYNOPSIS
#   LST_CXUNUM(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      LST_CXUNUMRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXUNUMRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      LST_CXUNUMResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXUNUMResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.lST_CXUNUM(parametersHeader, parameters)

# SYNOPSIS
#   ADD_WCIMPU(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      ADD_WCIMPURequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_WCIMPURequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      ADD_WCIMPUResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_WCIMPUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.aDD_WCIMPU(parametersHeader, parameters)

# SYNOPSIS
#   RMV_WCIMPU(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      RMV_WCIMPURequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_WCIMPURequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      RMV_WCIMPUResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_WCIMPUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.rMV_WCIMPU(parametersHeader, parameters)

# SYNOPSIS
#   MOD_WCIMPU(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      MOD_WCIMPURequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_WCIMPURequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      MOD_WCIMPUResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_WCIMPUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.mOD_WCIMPU(parametersHeader, parameters)

# SYNOPSIS
#   LST_WCIMPU(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      LST_WCIMPURequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WCIMPURequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      LST_WCIMPUResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_WCIMPUResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.lST_WCIMPU(parametersHeader, parameters)

# SYNOPSIS
#   ADD_CXOCR(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      ADD_CXOCRRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXOCRRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      ADD_CXOCRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXOCRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.aDD_CXOCR(parametersHeader, parameters)

# SYNOPSIS
#   RMV_CXOCR(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      RMV_CXOCRRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXOCRRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      RMV_CXOCRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXOCRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.rMV_CXOCR(parametersHeader, parameters)

# SYNOPSIS
#   MOD_CXOCR(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      MOD_CXOCRRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXOCRRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      MOD_CXOCRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXOCRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.mOD_CXOCR(parametersHeader, parameters)

# SYNOPSIS
#   LST_CXOCR(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      LST_CXOCRRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXOCRRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      LST_CXOCRResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXOCRResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.lST_CXOCR(parametersHeader, parameters)

# SYNOPSIS
#   ADD_CXPFXPRO(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      ADD_CXPFXPRORequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXPFXPRORequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      ADD_CXPFXPROResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXPFXPROResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.aDD_CXPFXPRO(parametersHeader, parameters)

# SYNOPSIS
#   RMV_CXPFXPRO(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      RMV_CXPFXPRORequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXPFXPRORequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      RMV_CXPFXPROResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXPFXPROResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.rMV_CXPFXPRO(parametersHeader, parameters)

# SYNOPSIS
#   MOD_CXPFXPRO(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      MOD_CXPFXPRORequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXPFXPRORequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      MOD_CXPFXPROResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXPFXPROResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.mOD_CXPFXPRO(parametersHeader, parameters)

# SYNOPSIS
#   LST_CXPFXPRO(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      LST_CXPFXPRORequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXPFXPRORequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      LST_CXPFXPROResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXPFXPROResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.lST_CXPFXPRO(parametersHeader, parameters)

# SYNOPSIS
#   ADD_CXACT(parameters)
#
# ARGS
#   parameters      ADD_CXACTRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXACTRequest
#
# RETURNS
#   parameters      ADD_CXACTResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_CXACTResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aDD_CXACT(parameters)

# SYNOPSIS
#   RMV_CXACT(parameters)
#
# ARGS
#   parameters      RMV_CXACTRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXACTRequest
#
# RETURNS
#   parameters      RMV_CXACTResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_CXACTResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rMV_CXACT(parameters)

# SYNOPSIS
#   MOD_CXACT(parameters)
#
# ARGS
#   parameters      MOD_CXACTRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXACTRequest
#
# RETURNS
#   parameters      MOD_CXACTResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXACTResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.mOD_CXACT(parameters)

# SYNOPSIS
#   LST_CXACT(parameters)
#
# ARGS
#   parameters      LST_CXACTRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXACTRequest
#
# RETURNS
#   parameters      LST_CXACTResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXACTResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_CXACT(parameters)

# SYNOPSIS
#   DSP_CXACT(parameters)
#
# ARGS
#   parameters      DSP_CXACTRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CXACTRequest
#
# RETURNS
#   parameters      DSP_CXACTResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CXACTResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_CXACT(parameters)

# SYNOPSIS
#   INL_CXACT(parameters)
#
# ARGS
#   parameters      INL_CXACTRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}INL_CXACTRequest
#
# RETURNS
#   parameters      INL_CXACTResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}INL_CXACTResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.iNL_CXACT(parameters)

# SYNOPSIS
#   REG_CON(parameters)
#
# ARGS
#   parameters      REG_CONRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CONRequest
#
# RETURNS
#   parameters      REG_CONResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}REG_CONResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rEG_CON(parameters)

# SYNOPSIS
#   RPL_CON(parameters)
#
# ARGS
#   parameters      RPL_CONRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CONRequest
#
# RETURNS
#   parameters      RPL_CONResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RPL_CONResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rPL_CON(parameters)

# SYNOPSIS
#   DSP_CON(parameters)
#
# ARGS
#   parameters      DSP_CONRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CONRequest
#
# RETURNS
#   parameters      DSP_CONResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_CONResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_CON(parameters)

# SYNOPSIS
#   LST_CON(parameters)
#
# ARGS
#   parameters      LST_CONRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CONRequest
#
# RETURNS
#   parameters      LST_CONResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CONResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_CON(parameters)

# SYNOPSIS
#   ADD_ROLE(parameters)
#
# ARGS
#   parameters      ADD_ROLERequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_ROLERequest
#
# RETURNS
#   parameters      ADD_ROLEResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}ADD_ROLEResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.aDD_ROLE(parameters)

# SYNOPSIS
#   RMV_ROLE(parameters)
#
# ARGS
#   parameters      RMV_ROLERequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_ROLERequest
#
# RETURNS
#   parameters      RMV_ROLEResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}RMV_ROLEResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.rMV_ROLE(parameters)

# SYNOPSIS
#   MOD_ROLE(parameters)
#
# ARGS
#   parameters      MOD_ROLERequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_ROLERequest
#
# RETURNS
#   parameters      MOD_ROLEResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_ROLEResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.mOD_ROLE(parameters)

# SYNOPSIS
#   LST_ROLE(parameters)
#
# ARGS
#   parameters      LST_ROLERequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ROLERequest
#
# RETURNS
#   parameters      LST_ROLEResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ROLEResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_ROLE(parameters)

# SYNOPSIS
#   DSP_ROLE(parameters)
#
# ARGS
#   parameters      DSP_ROLERequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ROLERequest
#
# RETURNS
#   parameters      DSP_ROLEResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ROLEResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_ROLE(parameters)

# SYNOPSIS
#   LST_ACTRT(parameters)
#
# ARGS
#   parameters      LST_ACTRTRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ACTRTRequest
#
# RETURNS
#   parameters      LST_ACTRTResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_ACTRTResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_ACTRT(parameters)

# SYNOPSIS
#   DSP_ACTRT(parameters)
#
# ARGS
#   parameters      DSP_ACTRTRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ACTRTRequest
#
# RETURNS
#   parameters      DSP_ACTRTResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_ACTRTResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_ACTRT(parameters)

# SYNOPSIS
#   MOD_SBGLAN(parameters)
#
# ARGS
#   parameters      MOD_SBGLANRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_SBGLANRequest
#
# RETURNS
#   parameters      MOD_SBGLANResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_SBGLANResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.mOD_SBGLAN(parameters)

# SYNOPSIS
#   DSP_SBGLAN(parameters)
#
# ARGS
#   parameters      DSP_SBGLANRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SBGLANRequest
#
# RETURNS
#   parameters      DSP_SBGLANResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}DSP_SBGLANResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.dSP_SBGLAN(parameters)

# SYNOPSIS
#   LST_LAN(parameters)
#
# ARGS
#   parameters      LST_LANRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_LANRequest
#
# RETURNS
#   parameters      LST_LANResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_LANResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parameters = nil
puts obj.lST_LAN(parameters)

# SYNOPSIS
#   MOD_CXSBRCON(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      MOD_CXSBRCONRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXSBRCONRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      MOD_CXSBRCONResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}MOD_CXSBRCONResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.mOD_CXSBRCON(parametersHeader, parameters)

# SYNOPSIS
#   LST_CXSBRCON(parametersHeader, parameters)
#
# ARGS
#   parametersHeader RequestCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}RequestCommonInfoType
#   parameters      LST_CXSBRCONRequest - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSBRCONRequest
#
# RETURNS
#   parametersHeader ResponseCommonInfoType - {http://www.huawei.com/IMS/ATSV100R003C03SPC100}ResponseCommonInfoType
#   parameters      LST_CXSBRCONResponse - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}LST_CXSBRCONResponse
#
# RAISES
#   fault           OperationFault - {http://www.huawei.com/IMS/ATS/V100R003C03SPC100/}OperationFault
#
parametersHeader = parameters = nil
puts obj.lST_CXSBRCON(parametersHeader, parameters)


