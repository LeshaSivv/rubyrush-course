def sklon(num, s1, s2, s3)
  if (11..14).include?(num % 100)
    puts num.to_s + ' ' + s3
  elsif num % 10 == 1
    puts num.to_s + s1
  elsif (2..4).include?(num % 10)
    puts num.to_s + ' ' + s2
  else
    puts num.to_s + ' ' + s3
  end
end
puts 'Введите число'
num = gets.to_i
puts 'Введите 1 склонение'
s1 = gets.chomp
puts 'Введите 2 склонение'
s2 = gets.chomp
puts 'Введите 3 склонение'
s3 = gets.chomp
sklon(num, s1, s2, s3)
