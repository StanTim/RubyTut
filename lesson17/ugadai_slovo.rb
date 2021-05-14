require_relative 'methods.rb'
# Игра "Угадай слово"

# Условия игры следующие:
# Игрок видит определенный набор букв со звездочкой,
# и вместо звездочки ему необходимо подставить
# букву так, чтобы получилось существующее слово.
# Кроме того перед набором букв и после набора
# могут быть любые другие буквы в любом количестве.
# Человеку необходимо придумать как можно больше слов подходящих под представленный игрой шаблон.
#
#
#
#
# Декодируем ввод на кирилице

if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

regexp_string = get_random_regexp_string
puts "Придумайте как можно больше слов, "\
      "содержащих шаблон '#{regexp_string.gsub('.', '*')}'" #В регэкспе заменили
      # для удобства видимости пользователем точку на звёздочку
puts "для выхода наберите X"

count = 0 # Переменная для хранения количества правильных слов
word_ok = [] #Создадим массив подощедших слов, для проверки повторов

loop do

  word = STDIN.gets.chomp

    if word.downcase == "x" #если ввели Х, то останавливаем цикл.
      break
    end

    if word_ok.include?(word) # проверка повторений ответов!
      puts "такое слово уже было!"
    else

      if word_exist?(word)

        if word =~ /#{regexp_string}/
        puts '.... OK =)'
        word_ok << word
        count += 1
        else
          puts '... не подходит =('
        end

      else

        puts = 'нет такого слова!'

      end
    end

end

# После выхода из игры показываем счёт

puts "Игра закончена, счёт: #{count}"
