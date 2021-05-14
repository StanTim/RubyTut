#Игра мини-викторина с вопросами и ответами

#Декодируем ввод на кирилице
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
end

current_path = File.dirname(__FILE__)

puts "Мини-викторина. Ответьте на вопросы."

#Проверяем наличие, читаем, закрываем файлы вопросо и ответов

if File.exist?('./data/questions.txt')

  questions = File.new('./data/questions.txt','r:UTF-8')

  q = questions.readlines

  questions.close

else

  puts 'Фаил вопросов не найден'

end

if File.exist?('./data/answers.txt')

  answers = File.new('./data/answers.txt','r:UTF-8')

  a = answers.readlines

  answers.close

else

  puts 'Фаил ответов не найден'

end
end

n = 0 # счётчик количества ответов
user_answer = nil
right_answer = 0

while n < q.size

  puts q[n]
  user_answer = gets.downcase#.chomp

  if user_answer == a[n]
    puts "Верный ответ!"
    right_answer += 1
  else
    puts "Неправильно! Верный ответ: #{a[n]}"
  end

  n += 1

end

puts "У вас #{right_answer} правильных ответа из #{n}"


