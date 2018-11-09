require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    square = number*number
    "#{square}"
  end

  get 'say/:number/:phrase' do
    params[:number].times do 
    "#{params[:phrase]}"
    end
  end

end
