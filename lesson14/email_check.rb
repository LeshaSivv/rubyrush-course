puts 'Введите email'
email = gets.chomp
if email =~ /^[a-zA-z\d]+@[a-zA-z]+\.[a-zA-z]+$/
  puts 'Верно'
else
  puts 'Неверно'
end
