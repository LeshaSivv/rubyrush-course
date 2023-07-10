current_path = File.dirname(__FILE__)
file = File.new("#{current_path}/holidays.txt")
holidays = file.readlines
file.close
time_week = Time.now.wday
time_date = Time.now.strftime('%d.%m')
if [7, 6].include?(time_week) || holidays.include?(time_date)
  puts 'Сегодня выходной'
else
  puts 'Сегодня не выходной'
end
