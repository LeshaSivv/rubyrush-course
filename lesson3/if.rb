a = gets.to_i
b = gets.to_i
if a > b
  puts "#{a} больше #{b}"
elsif a == b
  puts "#{a} равно #{b}"
else
  puts "#{a} меньше #{b}"
end
