require 'sinatra/base'

class JigglyPuff < Sinatra::Base
  get "/" do
    "hello world"
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
