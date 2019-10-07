require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name].reverse!
    "#{@user_name}"
  end

  get '/square/:num' do
    @square = params[:num].to_i**2
    "#{@square}" 
  end

  get '/say/:number/:phrase' do
    @say = params[:phrase] * params[:number].to_i
    "#{@say}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @say = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5]
    "#{@say}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @operation = params[:number1] + params[:number2] 
    elsif params[:operation] == "subtract"
    "#{@operation}"
  end
end