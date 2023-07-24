require 'rexml/document'
require 'date'

current_path = File.dirname(__FILE__)

file = File.new("#{current_path}/wish_chest.xml")
doc = REXML::Document.new(file)
file.close

puts 'Какое желание вы хотите записать?'
wish_input = $stdin.gets.chomp
puts 'До какого числа хотите сделать (в формате ДД.ММ.ГГГГ, например 12.05.2003 (пустое поле - сегодня))?'
date_input = $stdin.gets.chomp

if date_input == ''
  date = Date.today
else
  date = Date.parse(date_input)
end

wishes = doc.elements.find('wishes').first
wish = wishes.add_element('wish',{'date' => date.strftime('%Y.%m.%d')})
wish.text = wish_input

file = File.new("#{current_path}/wish_chest.xml",'w')
doc.write(file, 2)
file.close 
puts 'Информация записана'
