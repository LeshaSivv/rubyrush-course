class Film
  attr_accessor :name, :director

  def initialize(name, director)
    @name = name
    @director = director
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

film = films.sample
puts "Советуем посмотреть фильм #{film.name} режиссера #{film.director}"
