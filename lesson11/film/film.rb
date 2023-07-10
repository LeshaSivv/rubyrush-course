current_path = File.dirname(__FILE__)
if File.exist?("#{current_path}/films.txt")
  f = File.new("#{current_path}/films.txt", 'r')
  puts "Открыли файл #{current_path}/films.txt"
  films = f.readlines
  f.close
else
  puts 'Файл не найден'
end

film_number = rand(films.size / 2)
puts "Сегодня советуем посмотреть фильм #{films[film_number * 2]}"
puts films[film_number * 2 + 1]
