class Chameleon
  def initialize
    @color = 'Бесцветный'
    puts "Мой цвет - #{@color}"
  end

  def change_color(color)
    @color = color
    puts "Мой цвет теперь - #{@color}"
  end
end

chameleon = Chameleon.new
chameleon.change_color('Красный')
chameleon.change_color('Зеленый')
chameleon.change_color('Синий')
