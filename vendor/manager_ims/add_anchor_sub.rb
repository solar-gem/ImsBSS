
# Скрипт добавления абонента NGN в анкоринг IMS.
require 'rubygems'

# Добавление в поиск частей программы директорию из которой запустили данный файл
WORK_DIR, DIR = File.dirname(__FILE__)
$:.unshift(File.dirname(__FILE__) + "/lib")

require 'connection_to_commutation_system'

system("chcp 1251") # Устанавливаем в консоли Windows кодировку CP1251  (chcp 65001 utf-8)
# Шапка
puts '*' * 43
puts "(C)2010 Sintyalev Sergey <sintyalev@mail.ru>"
puts "Creating a subscriber NGN to the IMS."
puts '*' * 43
puts

print 'Введите номер телефона [7 цифр][number]: ' 
number = gets.chomp!

ats = ConnectionTelnet_SoftX.new(:host => '10.200.16.8', :username => 'opts270', :password => '270270')

print 'Connecting to IMS ...'.ljust(25)
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

print 'Modify VSBR'.ljust(25)
puts ats.cmd("MOD VSBR: D=K'#{number}, LP=0, CSC=422;")[:successful]

print 'Modify CNACLD'.ljust(25)
puts ats.cmd("MOD CNACLD: LP=0, PFX=K'#{number}, EA=YES, SPCHG=SPCHG;")[:successful]

ats.close

puts 'THE END'
gets