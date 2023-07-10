current_path = File.dirname(__FILE__)
if File.exist?("#{current_path}/data/questions.txt")
  f = File.new("#{current_path}/data/questions.txt", 'r')
  puts "Открыли файл #{current_path}/data/questions.txt"
  questions = f.readlines
  f.close
else
  puts 'Файл не найден'
end
current_path = File.dirname(__FILE__)
if File.exist?("#{current_path}/data/answers.txt")
  f = File.new("#{current_path}/data/answers.txt", 'r')
  puts "Открыли файл #{current_path}/data/answers.txt"
  answers = f.readlines
  f.close
else
  puts 'Файл не найден'
end
right_answ = 0
questions.each_with_index do |line, index|
  puts line
  answer = gets
  right_answ += 1 if answer == answers[index]
end
puts "Количество правильных ответов: #{right_answ}"
