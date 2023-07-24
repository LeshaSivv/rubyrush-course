require 'json'

file = File.read('card.json')
card = JSON.parse(file)
file.close
card.each {|_key,value| puts value}