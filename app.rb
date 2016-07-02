require 'sinatra'
require './lib/hangit'

@@hangit = Hangit.new

get '/play' do
	@@hangit.create_word	
	erb :play
end
