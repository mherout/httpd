#
# Cookbook Name:: httpd
# Spec:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.
# PRUEBA UNITARIA PARA RECETA CONFIGURATION (PROBAR QUE CREA EL FICHERO Y CONTENIDO)
require "spec_helper"

describe "httpd::configuration" do
  context "When all attributes are default, on an unspecified platform" do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it "converges successfully" do
      expect { chef_run }.to_not raise_error
    end
    it "crea el fichero index.html" do
      expect(chef_run) .to create_file("/var/www/html/index.html")
    end

    it "pone el contenido en el fichero index.html" do
      expect(chef_run) .to create_file("/var/www/html/index.html").with_content("<h1>Welcome Home<h1>")
    end
  end
end
