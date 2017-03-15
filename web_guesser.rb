require 'sinatra'
require 'sinatra/reloader'
number = rand(100)

get '/' do
  guess = params['guess']
  message = check_guess(guess, number)
  erb :index, locals: {number: number, message: message}
end

def check_guess (guess, number)
  if guess.to_i > number
    message = "The guess was too high"
  elsif guess.to_i < number
    message = "The guess was too low"
  else
    message = "You guessed the number"
  end
  return message
end
