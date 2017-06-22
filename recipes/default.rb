#
# Cookbook Name:: httpd
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.
# RECETA BASE SERVER WEB
include_recipe "httpd::install"
include_recipe "httpd::configuration"
include_recipe "httpd::service"
