require 'sinatra'
require_relative 'roman_numerals.rb'

get '/roman_numerals' do
    erb :roman_numerals
end

post '/roman_numerals' do
    roman_numerals = RomanNumerals.new
    roman_numerals.convert(params[:number])
end
