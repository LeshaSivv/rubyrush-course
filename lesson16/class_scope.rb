variable = 1

class MyClass
  def initialize
    @variable = 2
  end

  def check_variables
    puts 'В классе:'
    puts "Переменная 'variable': #{defined?(variable)}"
    puts "Переменная '@variable': #{defined?(@variable)}"
  end
end

obj = MyClass.new
obj.check_variables

puts 'Вне класса:'
puts "Переменная 'variable': #{defined?(variable)}"
puts "Переменная '@variable': #{defined?(@variable)}"