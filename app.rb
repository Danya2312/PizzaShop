#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'pg'

set :database, {adapter: 'postgresql', host: 'localhost', database: 'PizzaShop', username: 'postgres', password: 'postgres', port: '5432'}

class Product < ActiveRecord::Base  
end

get '/' do
	erb :index			
end

get '/about' do
	erb :about 
end