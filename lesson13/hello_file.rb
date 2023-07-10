current_path = File.dirname(__FILE__)
file = File.new("#{current_path}/hello.txt", 'w')
file.puts 'Hello, world!'
file.close
puts 'Запись сделана'
