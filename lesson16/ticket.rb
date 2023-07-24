passengers = [{
  ticket_number: 'РМ2010398 050298',
  first_name: 'Венедикт',
  second_name: 'Васильевич',
  last_name: 'Ерофеев',
  passport_number: '45 99 505281',
  departure_city: 'Москва',
  destination_city: 'Петушки'
},
{
  ticket_number: 'РМ2010399 050297',
  first_name: 'Иннокентий',
  second_name: 'Титович',
  last_name: 'Петрович',
  passport_number: '2394829348',
  departure_city: 'Минск',
  destination_city: 'Молодечно'
},
{
  ticket_number: 'hk43k22hk34hk2',
  first_name: 'Пабло',
  second_name: 'Эскобар',
  last_name: 'Павлович',
  passport_number: '234929348298342',
  departure_city: 'Токио',
  destination_city: 'Нью-йорк'
}]



passengers.each_with_index do |pass, index|
  puts "* * * Место №#{index + 1} * * *"
  puts "Билет № #{pass[:ticket_number]}"
  puts "Маршрут: #{pass[:departure_city]} -> #{pass[:destination_city]}"
  puts "Пассажир: #{pass[:first_name]} #{(pass[:first_name])[0]}. #{pass[:first_name]}"
  puts "Паспорт: #{pass[:passport_number]}"
end
