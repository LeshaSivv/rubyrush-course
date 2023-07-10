puts 'Введите длину массива'
input = gets.to_i
arr = []
input.times do |i|
  arr << i + 1
end
print arr
puts
(arr.size / 2).times do |i|
  k = arr[i]
  arr[i] = arr[- 1 - i]
  arr[- 1 - i] = k
end
print arr
