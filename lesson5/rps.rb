system('clear')
puts 'Вы играете в камень ножницы бумага: ' +
     '1 - камень 2 - ножницы 3 - бумага'
arr = %w[камень ножницы бумага]
input = gets.to_i
choice = rand(1..3)
puts "Вы выбрали #{arr[input - 1]}"
puts "Компьютер выбрал #{arr[choice - 1]}"
if input == 1
  puts 'Вы выйграли!' if choice == 2
  puts 'Вы проиграли!' if choice == 3
  puts 'Ничья!' if choice == 1
end
if input == 2
  puts 'Вы выйграли!' if choice == 3
  puts 'Вы проиграли!' if choice == 1
  puts 'Ничья!' if choice == 2
end
if input == 3
  puts 'Вы выйграли!' if choice == 1
  puts 'Вы проиграли!' if choice == 2
  puts 'Ничья!' if choice == 3
end
