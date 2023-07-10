# frozen_string_literal: true

input = nil
names = []
until input == ''
  input = gets.chomp
  names << input
end
names.each do |name|
  puts "С нами #{name}"
  if name == 'alice'
    puts 'Элис??? Кто такая Элис?'
    break
  end
end
