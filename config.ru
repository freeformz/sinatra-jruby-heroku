require 'rubygems'
require 'bundler'

Bundler.require

require 'lib/hello'

run Sinatra::Application
