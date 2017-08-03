require 'sinatra'
require 'mysql2'
require 'pry'
require './my_app'
use Rack::MethodOverride

run MyApp
