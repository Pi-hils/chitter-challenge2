require 'sinatra/base'

class ChitterApp < Sinatra::Base
  
  get '/' do
    "Welcome to Chitter"
  end

  get '/chitter' do
    @peeps = PeepPost.all
        erb :index
   end

  run! if app_file == $0
end
