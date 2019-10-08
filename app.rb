require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
  erb :index
  end
  get '/reversename/:name' do
    erb :reversename
  end
  get '/square/:number' do
    erb :square
  end
  get '/say/:number/:phrase' do
    erb :say
  end
  get '/say/:z/:o/:t/:th/:f' do
    erb :say
end
  get '/:op/:num1/:num2' do
    erb :ops
  end
end
