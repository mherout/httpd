#
# Cookbook Name:: httpd
# Recipe:: configuration
#
# Copyright (c) 2017 The Authors, All Rights Reserved.
# RECETA BASE PARA TESTEAR LA WEB DE PRUEBAS
file '/var/www/html/index.html' do
  content '<h1>Welcome Home<h1>'
end
