puts 'Введите слово которое надо проверить на палиндромность'
string = gets.chomp
string_new = string.delete(' ,.!?;:—-')
string_rev = string_new.reverse
if string_new == string_rev
  puts 'Палиндром'
else
  puts 'Не палиндром'
end
