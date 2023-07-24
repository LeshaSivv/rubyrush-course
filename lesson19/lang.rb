require 'json'

file = File.read('lang.json')
languages = JSON.parse(file)

lang_invert = languages.invert
lang_sort = lang_invert.sort.reverse

most_popular = lang_sort.first
puts "Самый популярный язык: #{most_popular.last} (#{most_popular.first})"
puts

lang_sort.each_with_index do |language, index|
  puts "#{index + 1}: #{language.last} (#{language.first})"
end