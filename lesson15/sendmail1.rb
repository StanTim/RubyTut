require "pony"
require "io/console"

my_mail = "1694569@mail.ru"

puts "введите пароль от почты"
password = STDIN.noecho(&:gets).chomp

puts "кому отправить письмо"
send_to = "timanoff@yandex.ru"#STDIN.gets.chomp

puts "Что писать в письме"
body = STDIN.gets.chomp

Pony.mail({
  :subject => "Привет из программы на руби!",
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
