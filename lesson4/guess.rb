guess = rand(1..16)
puts 'Загадано число от 1 до 15. Попробуйте угадать!'
3.times do
  puts 'Ваш вариант:'
  input = gets.to_i
  abort 'Вы угадали!' if guess == input
  if (guess - input).abs < 3
    print 'Горячо '
    if input < guess
      puts '(нужно больше)'
    else
      puts '(нужно меньше)'
    end
  else
    puts 'Холодно'
  end
end
abort "Загаданное число было #{guess}"
