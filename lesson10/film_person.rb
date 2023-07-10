class Film
  attr_accessor :name, :director

  def initialize(name, director)
    @name = name
    @director = director
  end
end

class Person
  attr_accessor :name, :surname, :fav_film

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
      puts("#{@name} #{@surname} - пожилой, ему #{@age} лет
        любимый фильм - #{@fav_film}")
    else
      puts("#{@name} - молодой, ему #{@age} лет
        любимый фильм - #{@fav_film}")
    end
  end
end

films = []
puts 'Фильм какого режиссера вы хотите посмотреть?'
director = gets.chomp
while films.size < 3
  puts 'Какой его фильм вы знаете?'
  a = gets.chomp
  film = Film.new(a, director)
  films << film
end

p1 = Person.new('ALex', 'Sivets', 20)
p2 = Person.new('Andrey', 'Chikatilo', 40)
p3 = Person.new('Ivan', 'Ivanov', 60)

p1.fav_film = films.sample.name
p2.fav_film = films.sample.name
p3.fav_film = films.sample.name

p1.out
p2.out
p3.out
