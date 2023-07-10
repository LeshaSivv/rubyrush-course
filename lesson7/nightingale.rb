abort 'Введите 2 аргумента либо не вводите их вообще' if ARGV[0] && !ARGV[1]
if !ARGV[0] && !ARGV[1]
  puts 'Какая сейчас температура?'
  temp = gets.to_i
  puts 'Какое сейчас время года?(зима-1 весна-2 лето-3 осень-4)'
  season = gets.to_i
else
  temp = ARGV[0].to_i
  season = ARGV[1].to_i
end
if season == 3
  if temp > 14 && temp < 36
    puts 'Поют'
  else
    puts 'Не поют'
  end
elsif temp > 21 && temp < 31
  puts 'Поют'
else
  puts 'Не поют'
end
