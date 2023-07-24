require 'json'

f = File.read('mendeleev.json')
table = JSON.parse(f)

puts "У нас всего элементов: #{table.keys.size}"

print table.keys
puts

puts "О каком элементе хотите узнать?"

element = gets.chomp

if table.has_key?(element)
puts "Порядковый номер: #{table[element]['number']}"
puts "Название: #{table[element]['name']}"
puts "Первооткрыватель: #{table[element]['discoverer']}"
puts "Плотность: #{table[element]['density']}"
else
puts "Извините, про такой элемент мы еще не знаем."
end