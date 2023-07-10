def stars(n)
  n.times do
    print '*'
  end
end
puts 'Сколько звезд хотите?'
n = gets.to_i
puts 'Держите:'
stars(n)
