#
# Cookbook Name:: httpd
# Recipe:: service
#
# Copyright (c) 2017 The Authors, All Rights Reserved.
# RECETA BASE PARA ARRANCAR SERVICIO HTTP Y HABILITARLO EN ARRANQUE
service 'httpd' do
  action [:enable, :start]
end
