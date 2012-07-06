
# Скрипт определения абонента NGN анкоринг IMS или нет.
require 'rubygems'

# Добавление в поиск частей программы директорию из которой запустили данный файл
WORK_DIR, DIR = File.dirname(__FILE__)
$:.unshift(File.dirname(__FILE__) + "/lib")

require 'connection_to_commutation_system'

system("chcp 1251") # Устанавливаем в консоли Windows кодировку CP1251  (chcp 65001 utf-8)
# Шапка
puts '*' * 43
puts "(C)2010 Sintyalev Sergey <sintyalev@mail.ru>"
puts "Testing a subscriber NGN to the IMS."
puts '*' * 43
puts

print 'Введите номер телефона [7 цифр][number]: ' 
number = gets.chomp!

ats = ConnectionTelnet_SoftX.new(:host => '10.200.16.8', :username => 'opts270', :password => '270270')

print 'Connecting to NGN ...'.ljust(25)
puts _connect = ats.connect
print 'Authorization ...'.ljust(25)
puts _login = ats.login

unless _connect && _login
  ats.close
  puts 'ERROR. Connect or authorization.'
  exit
end

unless ats.cmd("LST VSBR: D=K'#{number}, LP=0;")[:successful]
  ats.close
  puts "ERROR. There is no subscriber number (#{number}) at the NGN station."
  exit
end

print 'Test VSBR'.ljust(25)
puts ats.cmd("LST VSBR: D=K'#{number}, LP=0;")[:successful]
vsbr = ats.answer[:data]

print "Test CNACLD #{number}".ljust(25)
puts ats.cmd("LST CNACLD: LP=0, PFX=K'#{number};")[:successful]
cnacld = ats.answer[:data]

 
CSC = vsbr[/Call source code  =  \d+/].sub("Call source code  =  ", "")

i = 1
while cnacld[/No matching result is found/]
	print "Test CNACLD #{number[0,number.length - i]}".ljust(25)
	puts ats.cmd("LST CNACLD: LP=0, PFX=K'#{number[0,number.length - i]};")[:successful]
	cnacld = ats.answer[:data]
	i += 1
end
puts

SPCHG = cnacld[/Special called number change  =  (False|True)/].sub("Special called number change  =  ", "")





print "Subscriber number #{number}: "
puts 'Not anchor' if (CSC == '0' && SPCHG == 'False')
puts 'Anchor' if (CSC == '422' && SPCHG == 'True')
puts 'Inconsistency data' unless ((CSC == '0' && SPCHG == 'False') || (CSC == '422' && SPCHG == 'True'))


ats.close

puts 'THE END'
gets


# puts 'Not anchor' if (CSC == '0' && SPCHG == 'False')
#puts 'Anchor' if (CSC == '422' && SPCHG == 'True')
#puts 'Inconsistency data' unless ((CSC == '0' && SPCHG == 'False') || (CSC == '422' && SPCHG == 'True'))