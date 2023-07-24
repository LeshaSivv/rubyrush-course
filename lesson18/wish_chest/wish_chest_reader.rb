require 'rexml/document'
require 'date'

current_path = File.dirname(__FILE__)

file = File.new("#{current_path}/wish_chest.xml")
doc = REXML::Document.new(file)
file.close

wishes_all = []
wishes_no = []
wishes_yes = []

doc.elements.each('wishes/wish') do |wish|
  text = wish.text
  date = Date.parse(wish.attributes['date'])
  wishes_all << {'date' => date, 'text' => text}
end

wishes_all.each do |wish|
  if wish['date'] > Date.today
    wishes_no << wish
  else
    wishes_yes << wish
  end
end

puts 'Желания которые уже должны сбыться:'
wishes_yes.each do |wish|
  puts "#{wish['date']}: #{wish['text'].strip}"
end
puts 'Желания которым предстоит сбыться:'
wishes_no.each do |wish|
  puts "#{wish['date']}: #{wish['text'].strip}"
end
