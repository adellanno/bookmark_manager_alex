require 'rubygems'
require File.join(File.dirname(__FILE__), 'app/app.rb')

run Sinatra::Application
run Controller
