# Анализ лицензии с ATS IMS.
# Заходим на IMS, запрашиваем DSP LICENSE:;
# Распределяем по пакетам

# Добавление в поиск частей программы директорию из которой запустили данный файл
WORK_DIR, LOCAL_DIR = File.dirname(__FILE__)
$:.unshift(File.dirname(__FILE__) + "/lib")

# Моя библиотека по подключению к станциям.
require 'connection_to_commutation_system.rb'


# Шапка
puts '*' * 44
puts "(C)2012 Sintyalev Sergey <sintyalev@mail.ru>"
puts "Analysis of the licenses for ATS IMS."
puts '*' * 44
puts



@omu_ats = ConnectionTelnet_IMS.new(:host => "10.52.249.6",
    :username => "admin",
    :password => "lem")
	
print 'Connecting to IMS...'.ljust(25)
@omu_ats.connect ? puts('SUCCESSFUL connection') : (puts 'NOT SUCCESSFUL connection'; exit)
puts
print 'Authorization...'.ljust(25)
@omu_ats.login ? puts('SUCCESSFUL authorization') : (puts 'NOT SUCCESSFUL authorization'; @omu_ats.close; exit)
puts
# Выбираем ME ATS 
@omu_ats.cmd("USE ME:MEID=51;")

all_data_license = @omu_ats.cmd("DSP LICENSE: DT=DEV;")[:data]
basic_service_package = []
all_data_license.scan(/Basic Service Package.+/) do |dvo|
	basic_service_package << dvo.sub(/Basic Service Package, /, '')
end
puts 'Basic Service Package'
basic_service_package.each{|dvo| puts dvo}
puts basic_service_package.length
puts '*' * 50

puts 'Personal Service Enhanced Package/Enterprise Service Package'
personal_service_enhanced_package = []
all_data_license.scan(/Personal Service Enhanced Package\/Enterprise Service Package.+/) do |dvo|
	personal_service_enhanced_package << dvo.sub(/Personal Service Enhanced Package\/Enterprise Service Package, /, '')
end
personal_service_enhanced_package.each{|dvo| puts dvo}
puts personal_service_enhanced_package.length
puts '*' * 50





@omu_ats.close