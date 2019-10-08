# frozen_string_literal: true

require_relative 'config/environment'

class App < Sinatra::Base
	
  get '/reverse' do
    erb :reverse
  end

  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends
  end

  post '/reverse' do
    original_string = params['string']
    @reversed_string = original_string.reverse
    erb :reversed
  end

#   post '/friends' do
# 	friedns = params['string']
#     @reversed_string = original_string.reverse
# 	erb :friends
#   end

end
