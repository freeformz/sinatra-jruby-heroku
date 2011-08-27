require 'rubygems'
require 'bundler'

Bundler.require

require 'sinatra'
require 'slim'

get '/' do
  "Hello World"
end
