puts 'Введите первое число'
a = gets.to_i
puts 'Введите второе число'
b = gets.to_i
puts 'Выберите действие 1сложение 2вычитание 3умножение 4деление'
choice = gets.to_i
case choice
when 1
  puts a + b
when 2
  puts a - b
when 3
  puts a * b
when 4
  begin
    puts a / b
  rescue ZeroDivisionError
    puts 'На ноль делить нельзя'
  end
else
  puts 'Нет такого действия'
end