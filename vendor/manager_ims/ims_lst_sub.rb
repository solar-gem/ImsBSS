#!/usr/bin/ruby

# 
require 'rubygems'


# Äîáàâëåíèå â ïîèñê ÷àñòåé ïðîãðàììû äèðåêòîðèþ èç êîòîðîé çàïóñòèëè äàííûé ôàéë
WORK_DIR, DIR = File.dirname(__FILE__)
$:.unshift(File.dirname(__FILE__) + "/lib")
$:.unshift(File.dirname(__FILE__))


require 'subscriber_management'



tel = SubscriberIMS.new("+78314224005", "nn.ims.volga.rt.ru")
p query_subscriberIMS_data(tel)


