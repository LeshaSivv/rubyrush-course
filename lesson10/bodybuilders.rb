class Bodybuilder
  attr_reader :biceps, :triceps, :chest

  def initialize(biceps, triceps, chest)
    @biceps = biceps
    @triceps = triceps
    @chest = chest
  end

  def up_muscle(number)
    case number
    when 1
      @biceps += 1
      puts 'Прокачал бицуху'
    when 2
      @triceps += 1
      puts 'Прокачал трицепс'
    when 3
      @chest += 1
      puts 'Прокачал грудь'
    else
      puts 'Неверное число'
    end
  end

  def stats
    puts "
    biceps - #{@biceps}
    triceps - #{@triceps}
    chest - #{@chest}
    "
  end
end

b1 = Bodybuilder.new(0, 0, 0)
b2 = Bodybuilder.new(0, 0, 0)
b3 = Bodybuilder.new(0, 0, 0)
b1.up_muscle(1)
b2.up_muscle(2)
b3.up_muscle(1)

b1.stats
b2.stats
b3.stats
