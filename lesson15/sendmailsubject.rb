require "pony"
require "io/console"

my_mail = "1694569@mail.ru"

puts "Введите пароль от почты"
password = 'XcRt7P1m'#STDIN.noecho(&:gets).chomp

puts "Кому отправить письмо"
send_to = "timanoff@yandex.ru"#STDIN.gets.chompkibal4i4@rambler.ru

puts "Тема письма"
subject = "Привет из Руби"#STDIN.gets.chomp

puts "Что писать в письме"
body = "Привет! Это письмо написано в программе руби"#STDIN.gets.chomp

Pony.mail({
  :subject => subject,
  :body => body,
  :to => send_to,
  :from => my_mail,
  :via => :smtp,
  :via_options => {
    :address => 'smtp.mail.ru',
    :port => '465',
    :tls => true,
    :user_name => my_mail,
    :password => password,
    :authentication => :plain
  }
})
puts "Письмо отправлено"
