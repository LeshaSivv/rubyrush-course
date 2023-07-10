# def divide(arr, num)
#   arr1 = []
#   num = arr.size if num > arr.size
#   num.times do |i|
#     arr1 << arr[i]
#   end
#   arr1
# end
# puts 'Введите число больше 0'
# input = gets.to_i
# arr = []
# input.times do |i|
#   arr << i+1
# end
# puts "Исходный массив #{arr}"
# puts 'Сколько чисел отрезать?'
# num = gets.to_i
# print divide(arr, num)
puts 'Введите длину массива'
input = gets.to_i
arr = []
input.times do |i|
  arr << i + 1
end
puts "Исходный массив #{arr}"
puts 'Сколько чисел отрезать?'
num = gets.to_i
print arr.take(num)
