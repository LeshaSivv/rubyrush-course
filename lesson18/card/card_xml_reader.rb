require 'rexml/document'
require 'date'

current_path = File.dirname(__FILE__)
file_path = "#{current_path}/card.xml"

abort "Извиняемся, хозяин, файлик card.xml не найден." unless File.exist?(file_path)

file = File.new(file_path) 

doc = REXML::Document.new(file)

file.close

card = {}

['first_name', 'surname', 'number', 'email', 'about'].each do |field|
  card[field] = doc.root.elements[field].text
end

puts "#{card['first_name']} #{card['surname']}"
puts "#{card['number']}, #{card['email']}"
puts "#{card['about']}"