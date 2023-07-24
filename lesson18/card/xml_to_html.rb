require 'rexml/document'

current_path = File.dirname(__FILE__)

file = File.new("#{current_path}/card.xml", 'r')
doc = REXML::Document.new(file)
file.close

card = {}
%w[first_name surname number email about].each do |info|
  card[info] = doc.root.elements[info].text
end
card['photo'] = doc.root.elements['photo'].attributes['img']

html = REXML::Document.new

html.add_element('html', {'lang' => 'ru'})
html.root.add_element('head').add_element('meta', {'charset' => "UTF-8"})
body = html.root.add_element('body')
body.add_element('img', {'src' => card['photo'], 'width' => '240'})
card.each do |_key, value|
  a = body.add_element('p')
  a.text = value
end
 
file = File.new("#{current_path}/card.html", 'w')
file.puts('<!DOCTYPE HTML>')
html.write(file, 2)
file.close