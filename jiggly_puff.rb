require 'sinatra/base'
require 'aws-sdk'


class JigglyPuff < Sinatra::Base
  dynamodb = Aws::DynamoDB::Client.new(region: 'us-east-1')

  get "/" do
    @products = dynamodb.scan(table_name:ENV['TABLE_NAME']).items
    erb :index
  end

  not_found do
    'This is nowhere to be found.'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
