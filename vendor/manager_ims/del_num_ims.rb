#!/usr/bin/ruby

# Скрипт по удалению абонента или диапазона с абонентами

system("chcp 1251") # Устанавливаем в консоли Windows кодировку CP1251  (chcp 65001 utf-8)

require 'rubygems'


# Добавление в поиск частей программы директорию из которой запустили данный файл
DIR = File.dirname(__FILE__)
$:.unshift(File.dirname(__FILE__) + "/lib")



require 'subscriber_management'
require 'excel.rb'


# Шапка
puts '*' * 43
puts "(C)2010 Sintyalev Sergey <sintyalev@mail.ru>"
puts "Removing a subscriber to the IMS."
puts '*' * 43
puts

loop do 
	print 'Введите номер телефона в полном формате[number]: ' 	
	number = gets.chomp!
	break if number == ''

	tel = SubscriberIMS.new("#{number}", "nn.ims.volga.rt.ru")
	query_subscriberIMS_data(tel)	
	
	result = delete_sub(tel)	
	result[:all] ? puts("Номер #{number} успешно удален") : puts("Номер #{number} удален с ошибками")	
	puts "Предупреждение !!! Авторизация для номера #{number} не удалялась, т.к для данного номера не был найден IMPI." if result.length == 2	
	
end

