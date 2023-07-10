class Person
  attr_reader :name, :surname

  def initialize(name, surname, age)
    @name = name
    @surname = surname
    @age = age
  end

  def old?
    @age > 40
  end

  def out
    if old?
      puts("#{@name} #{@surname} - пожилой, ему #{@age} лет")
    else
      puts("#{@name} - молодой, ему #{@age} лет")
    end
  end
end

p1 = Person.new('ALex', 'Sivets', 20)
p2 = Person.new('Andrey', 'Chikatilo', 40)
p3 = Person.new('Ivan', 'Ivanov', 60)

p1.out
p2.out
p3.out
