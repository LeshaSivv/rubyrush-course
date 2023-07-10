puts 'Введите строку с хэштегами:'
string = gets.chomp
hashtag_regexp = /#[[:word:]-]+/
puts hashtag_regexp.class
hashtags = string.scan(hashtag_regexp)
puts
puts 'Нашли вот такие хэштеги: ' + hashtags.join(', ')
