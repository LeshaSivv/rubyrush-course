puts 'Злодея какого персонажа вы хотите узнать?'
hero = gets.downcase.chomp
hero_enemy = {
  'batman' => 'joker',
  'sherlok holms' => 'Профессор Мориарти',
  'buratino' => 'Карабас-барабас'
}
if hero_enemy.has_key?(hero)
  puts "У #{hero} враг #{hero_enemy[hero]}"
else
  puts 'Враг не найден'
end
