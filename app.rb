require 'sinatra'
require_relative 'roman_numerals.rb'

get '/' do
    erb :roman_numerals
end

post '/' do
    roman_numerals = RomanNumerals.new
    roman_numerals.convert(params[:number])
end
