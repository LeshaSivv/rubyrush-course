puts 'Злодея какого персонажа вы хотите узнать?'
hero = gets.downcase.chomp
case hero
when 'бэтмен', 'batman'
  puts 'joker'
when 'шерлок холмс', 'sherlok holms'
  puts 'Профессор Мориарти'
when 'buratino', 'буратино'
  puts 'Карабас-барабас'
else
  puts 'Злодей не найден!'
end
