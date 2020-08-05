require 'sinatra/base'
require './lib/peep_post'

class ChitterApp < Sinatra::Base
  
  get '/' do
    "Welcome to Chitter"
  end

  post '/' do
    erb :peep
    redirect '/peep'
  end

  get '/peep' do
    @peeps = PeepPost.all
        erb :index
   end

  run! if app_file == $0
end
