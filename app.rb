require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name].reverse
    #{@name}
  end

  # Code your final two routes here:
  get "/square/:number" do
    number = params[:number].to_i
    "#{number * number}"
  end

  get "/say/:number/:phrase" do
    number = params[:number].to_i
    phrase = params[:phrase]
    "#{phrase * number}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:num1/:num2" do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i

    case params[:operation]
    when 'add'
      (num1 + num2).to_s
    when 'subtract'
      (num1 - num2).to_s
    when 'multiply'
      (num1 * num2).to_s
    when 'divide'
      (num1 / num2).to_s
    end
  end

end
