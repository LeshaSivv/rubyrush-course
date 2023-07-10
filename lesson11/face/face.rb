current_path = File.dirname(__FILE__)
if File.exist?("#{current_path}/data/forehead.txt")
  f = File.new("#{current_path}/data/forehead.txt", 'r')
  puts "Открыли файл #{current_path}/data/forehead.txt"
  lines = f.readlines
  forehead = lines.sample
  f.close
else
  puts 'Файл не найден'
end
if File.exist?("#{current_path}/data/eyes.txt")
  f = File.new("#{current_path}/data/eyes.txt", 'r')
  puts "Открыли файл #{current_path}/data/eyes.txt"
  lines = f.readlines
  eyes = lines.sample
  f.close
else
  puts 'Файл не найден'
end
if File.exist?("#{current_path}/data/nose.txt")
  f = File.new("#{current_path}/data/nose.txt", 'r')
  puts "Открыли файл #{current_path}/data/nose.txt"
  lines = f.readlines
  nose = lines.sample
  f.close
else
  puts 'Файл не найден'
end
if File.exist?("#{current_path}/data/mouth.txt")
  f = File.new("#{current_path}/data/mouth.txt", 'r')
  puts "Открыли файл #{current_path}/data/mouth.txt"
  lines = f.readlines
  mouth = lines.sample
  f.close
else
  puts 'Файл не найден'
end
file_name = Time.now.strftime('%d_%m_%Y_%H-%M-%S')
f = File.new("#{current_path}/faces/face_#{file_name}.txt", 'w')
f.puts forehead + eyes + nose + mouth
f.close
puts 'Обьект создан'
