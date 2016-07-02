require 'sinatra'
require './lib/hangit'

@@hangit = Hangit.new

get '/' do
  erb :index
end

get '/play' do
	@@hangit.create_word	
	erb :play
end
