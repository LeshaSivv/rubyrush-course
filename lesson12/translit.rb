require 'translit'

puts 'Введите текст для транслитерации:'
word = gets.chomp
puts Translit.convert(word)
