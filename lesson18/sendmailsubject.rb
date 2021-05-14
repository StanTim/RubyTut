require "pony"
require "io/console"

if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

my_mail = "1694569@mail.ru"

puts "Введите пароль от почты"
password = STDIN.noecho(&:gets).chomp

puts "Кому отправить письмо"
send_to = STDIN.gets.chomp

puts "Тема письма"
subject = STDIN.gets.chomp

puts "Что писать в письме"
body = STDIN.gets.chomp


begin

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

rescue SocketError

  puts "Не могу соединиться с сервером. "

rescue Net::SMTPSyntaxError => error

  puts "Вы некорректно задали параметры письма: " + error.message

rescue Net::SMTPAuthenticationError => error

  puts "Неправильно указан пароль: " + error.message

ensure

  puts "Попытка отправки закончена"
end
