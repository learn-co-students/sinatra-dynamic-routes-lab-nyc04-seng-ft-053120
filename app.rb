require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!


  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    result = @number.to_i * @number.to_i
    "#{result.to_s}"
  end
  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    counter = 0
    result = ""
    while counter < @number.to_i
      result += @phrase
      counter += 1
    end
    "#{result}"
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    array = [@word1, @word2, @word3, @word4, @word5]
    # binding.pry
    result = array.join(" ")
    "#{result + "."}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    # result = 0
   if @operation == "add"
    result = @number1 + @number2
      "#{result.to_s}"
    elsif @operation == "subtract" 
      result = @number1 - @number2
      "#{result.to_s}"
    elsif @operation == "multiply"
      result = @number1 * @number2
      "#{result.to_s}"
    elsif @operation == "divide"
      result = @number1 / @number2
      "#{result.to_s}"
  end

  end


end