puts 'Ваша валюта 1 - доллары 2 -рубли'
choice = gets.to_i
if choice == 2
  puts 'Введите курс доллара в рублях'
  a = gets.to_f
  puts 'Сколько у вас рублей?'
  b = gets.to_f
  puts "У вас #{(b / a).round(2)} $"
else
  puts 'Введите курс рубля в долларах'
  a = gets.to_f
  puts 'Сколько у вас долларов?'
  b = gets.to_f
  puts "У вас #{(b / a).round(2)} руб."
end
