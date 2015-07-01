require 'sinatra'
require 'sinatra/reloader'

SECRET_NUMBER = rand(100)

get '/' do
  guess = params["guess"]
  message = check_guess(guess)
  background = set_background(guess)
  erb :index, :locals => {:secret_number => SECRET_NUMBER, :message => message,
            :background => background}
end

def check_guess(guess)
  if guess.to_i == SECRET_NUMBER
    "You got it right! The SECRET NUMBER is #{SECRET_NUMBER}"
  elsif
  guess.to_i > SECRET_NUMBER + 5
    "Way too high!"
  elsif
  guess.to_i > SECRET_NUMBER
    "Too high!"
  elsif
  guess.to_i < SECRET_NUMBER - 5
    "Way too low!"
  elsif
  guess.to_i < SECRET_NUMBER
    "Too low!"
  end
end

def set_background(guess)
  if guess.to_i == SECRET_NUMBER
    "green"
  elsif
  guess.to_i > SECRET_NUMBER + 5
    "red"
  elsif
  guess.to_i > SECRET_NUMBER
    "lightpink"
  elsif
  guess.to_i < SECRET_NUMBER - 5
    "red"
  elsif
  guess.to_i < SECRET_NUMBER
    "lightpink"
  end
end