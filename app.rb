require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]
    result = ""
    num.times do
      result += phrase
    end
    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word_1 = params[:word1]
    word_2 = params[:word2]
    word_3 = params[:word3]
    word_4 = params[:word4]
    word_5 = params[:word5]
    "#{word_1} #{word_2} #{word_3} #{word_4} #{word_5}."
  end

  get '/:operation/:num1/:num2' do
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