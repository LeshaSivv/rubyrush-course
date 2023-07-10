puts '1 - пойти направо 2 - пойти налево'
choice = nil
until [1, 2].include?(choice)
  puts 'Введите число'
  choice = gets.to_i
end
if choice == 1
  abort 'Не туда'
else
  puts 'Вы пошли направо'
end
puts '1 - пойти наверх 2 - пойти вниз'
until [1, 2].include?(choice)
  puts 'Введите число'
  choice = gets.to_i
end
if choice == 1
  abort 'Не туда'
else
  abort 'Вы пошли вниз и победили'
end
