def hashtags(string)
  hashtag_regexp = /#[[:word:]-]+/
  hashtags = string.scan(hashtag_regexp)
  hashtags
end