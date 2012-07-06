# Формируем header
require 'soap/header/simplehandler'

class SoapHeader_MessageID < SOAP::Header::SimpleHandler
  def initialize(namespace, message_id = 0)
    @message_id = message_id
	@namespace = namespace
	super(XSD::QName.new(@namespace, 'MessageID'))	
  end
  def on_simple_outbound
	@message_id
  end
end

class SoapHeader_MEName < SOAP::Header::SimpleHandler
  def initialize(namespace, me_name)
	@me_name = me_name
	@namespace = namespace
	super(XSD::QName.new(@namespace, 'MEName'))	
  end
  def on_simple_outbound
	@me_name
  end
end

class SoapHeader_Authentication < SOAP::Header::SimpleHandler
  def initialize(namespace)
    @namespace = namespace
	super(XSD::QName.new(namespace, 'Authentication'))	
  end
  def on_simple_outbound
	{"Username" => "BSSuser", "Password" => "B0615B41A96152056463B30B756F7A9C"}
	#{"Username" => "s.sintyalev", "Password" => "B0615B41A96152056463B30B756F7A9C"}
  end
end


class HSSV900R008C02SPC200 < ::SOAP::RPC::Driver
  def headerhandlers
    self.headerhandler << SoapHeader_MessageID.new(HSS_DefaultMappingRegistry::NsV900R008C02SPC200, "Test")
    self.headerhandler << SoapHeader_MEName.new(HSS_DefaultMappingRegistry::NsV900R008C02SPC200, "HSS01")
    self.headerhandler << SoapHeader_Authentication.new(HSS_DefaultMappingRegistry::NsV900R008C02SPC200)  
  end
end

class ATSV100R003C03SPC100 < ::SOAP::RPC::Driver
  def headerhandlers
    self.headerhandler << SoapHeader_MessageID.new(ATS_DefaultMappingRegistry::NsV100R003C03SPC100, "Test")
    self.headerhandler << SoapHeader_MEName.new(ATS_DefaultMappingRegistry::NsV100R003C03SPC100, "ATS01")
    self.headerhandler << SoapHeader_Authentication.new(ATS_DefaultMappingRegistry::NsV100R003C03SPC100)
  end
end