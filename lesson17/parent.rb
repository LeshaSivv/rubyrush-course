class Parent

  attr_accessor :name, :obedient

  def initialize(name)
    @name = name
    @obedient = true
  end
end

class Child < Parent
  attr_accessor :name, :obedient

  def initialize(name)
    super
    @obedient = false
  end

end

parent1 = Parent.new('Mom')
parent2 = Parent.new('Dad')
child1 = Child.new('Masha')
child2 = Child.new('Dasha')

puts "#{parent1.name} послушный: #{parent1.obedient}"
puts "#{parent2.name} послушный: #{parent2.obedient}"
puts "#{child1.name} послушный: #{child1.obedient}"
puts "#{child2.name} послушный: #{child2.obedient}"
