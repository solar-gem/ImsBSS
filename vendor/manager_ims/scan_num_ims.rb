file_data = []

# Добавление в поиск частей программы директорию из которой запустили данный файл
local_dir = File.dirname(__FILE__)
Dir.foreach(local_dir){|entry| file_data << entry if entry =~ /MemExpFile_IMS-HSS_\d+.txt/}

exit if file_data.length == 0

result = []
file_data.each do |file_name|
	File.open(file_name) do |file|
	  file.each do |line|
	   result << line[/[+]*\d+\S+/] if line =~ /SUBID=/  
	  end
	end
end

result.sort.each {|num| puts num}

puts 'THE END'
gets
