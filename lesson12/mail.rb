# frozen_string_literal: true

require 'pony'
require 'io/console'

current_path = File.dirname(__FILE__)
puts 'Данная программа поддерживает авторизацию одноразовым токеном из гугл акканта'
puts 'Введите почту'
my_mail = gets.chomp
f = File.new(current_path + '/pass.txt', 'r')
password = f.read
puts 'Получатель:'
send_to = gets.chomp
puts 'Текст почты:'
body = gets.chomp
puts 'Заголовок почты:'
header = gets.chomp
Pony.mail({
            to: send_to,
            body: body,
            subject: header,
            via: :smtp,
            via_options: {
              address: 'smtp.gmail.com',
              port: '587',
              enable_starttls_auto: true,
              user_name: my_mail,
              password: password,
              authentication: :plain,
              domain: 'localhost.localdomain'
            }
          })
puts 'отправил'
