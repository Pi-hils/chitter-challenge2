require 'sinatra/base'
require './lib/peep_post'

class ChitterApp < Sinatra::Base
  
  get '/' do
    "Welcome to Chitter"
    erb :peep
  end

  post '/' do
 p   "Welcome again"
    redirect '/peep'
  end

  get '/peep' do
    # @peeps = PeepPost.all
    erb :peeps
   end

   post '/peep' do
    #store message into a database, redirect into get route
     params['peep post']
    # redirect '/tweets'
   end

  #  get '/tweets' do
  #   #read out all messages Peep.all
  #   #display messages
  #  end
  run! if app_file == $0
end
 
