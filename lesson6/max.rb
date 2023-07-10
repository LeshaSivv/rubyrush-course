puts 'Введите длину массива'
input = gets.to_i
arr = []
input.times do |_i|
  arr << rand(101)
end
print arr
puts
max = arr[0]
(arr.size - 1).times do |i|
  max = arr[i] if arr[i] > max
end
puts "Максимальное число: #{max}"
