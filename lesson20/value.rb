require 'byebug'
require 'uri'
require 'net/http'
require 'rexml/document'

uri = URI.parse('http://www.cbr.ru/scripts/XML_daily.asp')
response = Net::HTTP.get_response(uri)
doc = REXML::Document.new(response.body)

choice = nil
until [1, 2, 3].include?(choice)
  puts 'Курс какой валюты вы хотите узнать?'
  puts '1 - Доллар(USD)'
  puts '2 - Евро(EUR)'
  puts '3 - Белорусский рубль(BYN)'
  choice = gets.to_i
end
case choice
when 1
  id = "R01235"
when 2
  id = "R01239"
when 3
  id = "R01090B"
end

date = doc.root.attributes['Date']

valute = doc.root.elements.find do |val|
  val.attributes['ID'] == id
end

valute_name = valute.get_text('Name')
valute_value = valute.get_text('Value')

puts "Курс #{date}:"
puts "#{valute_name}: #{valute_value}"