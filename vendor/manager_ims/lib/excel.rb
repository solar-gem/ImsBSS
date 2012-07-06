# �������� Excel ����� � ������� ��������.
# �������� ����� �� ������� '������ �������� IMS.xlsx'

require 'win32ole'
require 'fileutils'

def create_excel(tel, dir)
	
	file_name = "������ �������� IMS_#{tel.sUBID}.xlsx"

	# ���� ���� � ������� � �������� ����������, �� ��� �������������� �������
	File.delete(file_name) if FileTest::exist?(file_name)

	FileUtils.copy('������ �������� IMS.xlsx', file_name)

	excel = WIN32OLE::new('excel.Application')
	excel.Visible = false
	# ���� �� ������� ������ � ���������� ���������
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

