require 'bundler' #require bundler
Bundler.require #require everything in bundler in gemfile
require './lib/compliment.rb'

class Compliments < Sinatra::Application

	get '/compliments' do
		new_comp = Compliment.new
		# @image = new_comp.image
		@message = new_comp.message
		erb :compliment
	end

end