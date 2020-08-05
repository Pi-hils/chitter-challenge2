require 'sinatra/base'

class ChitterApp < Sinatra::Base
  
  get '/' do
    "Welcome to Chitter"
  end

  get '/chitter' do
    peeps = ["post 1",
              "post 2",
            "post 3"
          ]

          peeps.join
   end

  run! if app_file == $0
end
