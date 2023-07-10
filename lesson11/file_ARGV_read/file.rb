current_path = File.dirname(__FILE__)
if ARGV[0]
  file_name = ARGV[0]
else
  abort 'Передайте название файла в параметре запуска программы'
end
if File.exist?("#{current_path}/data/#{file_name}")
  f = File.new("#{current_path}/data/#{file_name}", 'r')
  puts "Открыли файл #{current_path}/data/#{file_name}"
  lines = f.readlines
  puts "Всего строк: #{lines.size}"
  puts "Пустых строк: #{lines.count("\n")}"
  5.times { |line| puts lines[-1 - line] }
  f.close
else
  puts "Файл #{file_name} не найден"
end
