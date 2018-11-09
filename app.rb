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

  get '/say/:number/:phrase' do
    # number = params[:number].to_i
    # phrase = params[:phrase]
    # result = number.times{"#{phrase}"}
    # params[:number].to_i.times
    #   "#{params[:phrase]}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    binding.pry
    if params[:operation] == "add"
      @value = number1+number2
      # "#{value}"
    elsif params[:operation] == "subtract"
      @value = number1-number2
      # "#{value}"
    elsif params[:operation] == "multiply"
      @value = number1*number2
      # "#{value}"
    elsif params[:operation] == "divide"
      @value = number1/number2
      # "#{value}"
    end
    @value
  end

end
