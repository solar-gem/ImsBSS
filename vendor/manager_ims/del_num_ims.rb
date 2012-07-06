#!/usr/bin/ruby

# ������ �� �������� �������� ��� ��������� � ����������

system("chcp 1251") # ������������� � ������� Windows ��������� CP1251  (chcp 65001 utf-8)

require 'rubygems'


# ���������� � ����� ������ ��������� ���������� �� ������� ��������� ������ ����
DIR = File.dirname(__FILE__)
$:.unshift(File.dirname(__FILE__) + "/lib")



require 'subscriber_management'
require 'excel.rb'


# �����
puts '*' * 43
puts "(C)2010 Sintyalev Sergey <sintyalev@mail.ru>"
puts "Removing a subscriber to the IMS."
puts '*' * 43
puts

loop do 
	print '������� ����� �������� � ������ �������[number]: ' 	
	number = gets.chomp!
	break if number == ''

	tel = SubscriberIMS.new("#{number}", "nn.ims.volga.rt.ru")
	query_subscriberIMS_data(tel)	
	
	result = delete_sub(tel)	
	result[:all] ? puts("����� #{number} ������� ������") : puts("����� #{number} ������ � ��������")	
	puts "�������������� !!! ����������� ��� ������ #{number} �� ���������, �.� ��� ������� ������ �� ��� ������ IMPI." if result.length == 2	
	
end

