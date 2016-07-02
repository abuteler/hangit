require 'sinatra'
require './lib/hangit'


@@hangit = Hangit.new

get '/' do
	erb :index
end

get '/play' do	
	if params["input"] == "a" 
		@@hangit.find_match "a"
	end
	erb :play
end
