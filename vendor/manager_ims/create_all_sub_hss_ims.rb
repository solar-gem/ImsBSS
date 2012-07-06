#!/usr/bin/ruby
# Ñêðèïò ïî ñîçäàíèþ ôàéëîâ ñ ïîëíûì ïåðå÷íåì àáîíåíòîâ ïðîïèñàííûõ â HSS IMS.
# Íåîáõîäèìûå äåéñòâèÿ:
# 1. Ïî telnet ïîäêëþ÷àåìñÿ ê OMU HSS. 10.52.249.9 ïîðò 6000
# 2. Àâòîðèçèðóåìñÿ
# 3. Ïîäíèìàåì FTP ñåðâåð íà èçâåñòíîì êîìïþòåðå. Èëè â äàëüíåéøåì ïðîãðàìíî èç äàííîãî ñêðèïòà.
# 4. Äàåì êîìàíäû â ìîäóëü USCDB ïî íàïðàâëåíèþ âûâîäà íà FTP ñåðâåð. 
# 5. Äåëàåì âûãðóçêó.
# 6. Ïîâòîðÿåì ïóíêòû 4 è 5 äëÿ âòîðîãî ìîäóëÿ. 

# Äîáàâëåíèå â ïîèñê ÷àñòåé ïðîãðàììû äèðåêòîðèþ èç êîòîðîé çàïóñòèëè äàííûé ôàéë
WORK_DIR, LOCAL_DIR = File.dirname(__FILE__)
$:.unshift(File.dirname(__FILE__) + "/lib")

# Ìîÿ áèáëèîòåêà ïî ïîäêëþ÷åíèþ ê ñòàíöèÿì.
require 'connection_to_commutation_system.rb'


# Øàïêà
puts '*' * 44
puts "(C)2012 Sintyalev Sergey <sintyalev@mail.ru>"
puts "Unload the data from the HSS."
puts '*' * 44
puts



@omu_hss = ConnectionTelnet_IMS.new(:host => "10.52.249.9",
    :username => "admin",
    :password => "lem")

print 'Connecting to IMS ...'.ljust(25)
@omu_hss.connect ? puts('SUCCESSFUL connection') : (puts 'NOT SUCCESSFUL connection'; exit)
puts
print 'Authorization ...'.ljust(25)
@omu_hss.login ? puts('SUCCESSFUL authorization') : (puts 'NOT SUCCESSFUL authorization'; @omu_hss.close; exit)
puts
# Âûáèðàåì ME USCDB 
@omu_hss.cmd("USE ME:MEID=91;")
# Åñëè â äàííûé ìîìåíò âðåìåíè àíàëîãè÷íàÿ çàäà÷à âûïîëíÿåòñÿ, òî ïðåêðàùàåì ðàáîòó
if @omu_hss.cmd("DSP ONLINEEXP:;")[:data] =~ /Task status  =  Running/ 
  puts 'The task is already running. Try again later.'
  exit
end


# Äëÿ âñåõ ìîäóëåé â USCDB âûñòàâëÿåì âûãðóçêó äàííûõ ïî FTP. 
unless @omu_hss.cmd("LST DTLCFG: MID=1000;")[:data] =~ /FTP Server store  10.52.250.150/ 
  p @omu_hss.cmd("MOD DTLCFG: MID=1000, OPTYPE=ONLINE_EXPORT, METYPE=\"IMS-HSS\", STOTYPE=FTP, LIP=\"10.52.250.150\", LGW=\"10.52.250.129\", LMASK=\"255.255.255.224\", LP=Card4/Lan0, FTPIP=\"10.52.249.58\", FTPUSR=\"user\", FTPPAS=\"cc08\", FTPPATH=\".\", FTPPORT=21;")
end
unless @omu_hss.cmd("LST DTLCFG: MID=1001;")[:data] =~ /FTP Server store  10.52.250.151/ 
  p @omu_hss.cmd("MOD DTLCFG: MID=1001, OPTYPE=ONLINE_EXPORT, METYPE=\"IMS-HSS\", STOTYPE=FTP, LIP=\"10.52.250.151\", LGW=\"10.52.250.129\", LMASK=\"255.255.255.224\", LP=Card4/Lan0, FTPIP=\"10.52.249.58\", FTPUSR=\"user\", FTPPAS=\"cc08\", FTPPATH=\".\", FTPPORT=21;")
end

@omu_hss.cmd("STR ONLINEEXP: FETYPE=\"IMS-HSS\", FILEFMT=FEFMT;")

loop do 
    puts 'Waiting task...'
    sleep 10	 	
	break unless @omu_hss.cmd("DSP ONLINEEXP:;")[:data] =~ /Task status  =  Running/	
end
puts
# Âûâîä ðåçóëüòàòà
print 'Result =>  '
result = @omu_hss.cmd("DSP ONLINEEXP:;")[:data][/Task status  =  .+/]
if result
	puts result.sub("Task status  =  ", '')
else
	puts result
end

@omu_hss.close







#"LGI:OP=\"#{@options["Username"]}\", PWD=\"#{@options["Password"]}\";"

#"LGI:OP="admin", PWD="lem";"
#"LGI:OP=admin, PWD=lem;"

#USE ME:MEID=91;

#STR ONLINEEXP: FETYPE="IMS-HSS", FILEFMT=FEFMT;

#"MOD DTLCFG: MID=1000, OPTYPE=ONLINE_EXPORT, METYPE="IMS-HSS", STOTYPE=LOCAL;"
#"MOD DTLCFG: MID=1001, OPTYPE=ONLINE_EXPORT, METYPE="IMS-HSS", STOTYPE=LOCAL;"

#"MOD DTLCFG: MID=1000, OPTYPE=ONLINE_EXPORT, METYPE="IMS-HSS", STOTYPE=FTP, LIP="10.52.250.134", LGW="10.52.250.129", LMASK="255.255.255.224", LP=Card4/Lan0, FTPIP="10.52.249.59", FTPUSR="user", FTPPATH=".", FTPPORT=21;"

#"STR ONLINEEXP: FETYPE="IMS-HSS", FILEFMT=FEFMT;"

#æäåì "DSP ONLINEEXP:;"  èùåì "Task status  =  Operation succeeded"

#"MOD DTLCFG: MID=1000, OPTYPE=ONLINE_EXPORT, METYPE="IMS-HSS", STOTYPE=LOCAL;"
#"MOD DTLCFG: MID=1001, OPTYPE=ONLINE_EXPORT, METYPE="IMS-HSS", STOTYPE=FTP, LIP="10.52.250.134", LGW="10.52.250.129", LMASK="255.255.255.224", LP=Card4/Lan0, FTPIP="10.52.249.59", FTPUSR="user", FTPPATH=".", FTPPORT=21;"

#æäåì

#"MOD DTLCFG: MID=1001, OPTYPE=ONLINE_EXPORT, METYPE="IMS-HSS", STOTYPE=LOCAL;"

