# Создание Excel файла с данными абонента.
# Создание файла по шаблону 'Данные абонента IMS.xlsx'

require 'win32ole'
require 'fileutils'

def create_excel(tel, dir)
	
	file_name = "Данные абонента IMS_#{tel.sUBID}.xlsx"

	# Если файл с данными о абоненте существует, то его предварительно уделяем
	File.delete(file_name) if FileTest::exist?(file_name)

	FileUtils.copy('Данные абонента IMS.xlsx', file_name)

	excel = WIN32OLE::new('excel.Application')
	excel.Visible = false
	# Чтоб не задавал вопрос о сохранении документа
	excel.DisplayAlerts = false;
	sheet = excel.Workbooks.Open(File.join(dir, file_name)).Worksheets(1)
	#sheet.Range('A1:A3').columns.each { |col| col.cells.each { |cell| puts cell['Value'] } }

	#sheet.Range("A1").Select
	cell = sheet.Range("B3")['Value'] = tel.sUBID
	cell = sheet.Range("B4")['Value'] = tel.iMPI
	cell = sheet.Range("B7")['Value'] = tel.iMPI
	cell = sheet.Range("B8")['Value'] = tel.pWD


	excel.Save

	excel.Quit


end

