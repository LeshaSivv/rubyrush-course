puts 'Введите число больше 0'
input = gets.to_i
arr = []
input.times do |i|
  arr << i + 1
end
print arr
sum = 0
input.times do |i|
  sum += i + 1
end
puts
puts "Сумма = #{sum}"
