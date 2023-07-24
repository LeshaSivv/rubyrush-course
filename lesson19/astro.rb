require 'json'
require 'date'

f = File.read('signs.json')
signs = JSON.parse(f)
f.close

user_sign = nil

puts 'Когда вы родились (укажите дату в формате ДД.ММ, например, 08.03)'
input_date = $stdin.gets.chomp

user_date = Date.parse(input_date + '.2000')
signs.each do |_key, value|
  date_array = value['dates'].split('..')
  if user_date >= Date.parse(date_array[0] + '.2000') && user_date <= Date.parse(date_array[1] + '.2000')
    user_sign = value
  end
end
puts user_sign['dates']
puts user_sign['text']
