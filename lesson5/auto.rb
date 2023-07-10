cars = %w[
  toyota
  nissan
  bmw
  peugeot
  zhiguli
  mazda
  bugatti
  ferrari
  ford
]
puts "У нас есть #{cars.size} машин. Вам какую?"
choice = gets.to_i
if choice <= 0 || choice > cars.size
  puts 'Извините, такой машины у нас нет.'
else
  puts "Ваша машина: #{cars[choice - 1]}"
end
