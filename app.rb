require_relative 'config/environment'

class App < Sinatra::Base
  # Create a dynamic route at get '/reversename/:name' that accepts a name and renders the name backwards.
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  # Create a dynamic route at get '/square/:number' that accepts a number and returns the square of that number.
  get '/square/:number' do
    @number = params[:number].to_i
    (@number**2).to_s
  end

  # Create a dynamic route at get '/say/:number/:phrase' that accepts a number and a phrase and returns that phrase in a single string the number of times given.
  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]

    str = ""
    @num.times { str += @phrase}
    str
  end

  # Create a dynamic route at get '/say/:word1/:word2/:word3/:word4/:word5' that accepts five words and returns a string containing all five words (i.e. word1 word2 word3 word4 word5).
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  # Create a dynamic route at get '/:operation/:number1/:number2' that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided, returning a String. For example, going to /add/1/2 should render 3 as a String.
  def calculate(operation, num1, num2)
    case operation
    when "add"
      num1 + num2
    when "subtract"
      num1 - num2
    when "multiply"
      num1 * num2
    when "divide"
      num1 / num2
    else
      "Invalid operation"
    end
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    
    calculate(@operation, @num1, @num2).to_s
  end
end