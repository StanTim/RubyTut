#	программа ищет в файле слова из трёх букв
# на выводе строка с количеством таких слов.
# Использование регулярных выражений
# Декодируем ввод на кирилице

if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

if File.exists?('c:\rubytut\lesson14\data\movies_and_discribtion.txt')

  file = File.new('c:\rubytut\lesson14\data\movies_and_discribtion.txt','r:UTF-8')
  strings_array = file.readlines
  file.close

else

  puts 'Файл c:\rubytut\lesson14\data\movies_and_discribtion.txt не найдет'

end

count = 0 # переменная для записи количества найденных совпадений

three_letter_words = []

regexp_search = /\b\p{Alpha}{3}\b/i #Если заменить все знаки препинания, то можно через коонструкцию - любой символ три раза кроме пробела \S
                                    # Оставил конструкцию - любая буква три раза, с метками границы слова word boundary

#Прогоним каждую элемент массива строк файла через регулярное выражение циклом for
for strings in strings_array

  #Очистим строки от знаков препинания
  new_string = strings.gsub(/[,\(\)\.\-;:\?\!]/,'') #Заменяет знаки препинания ничем: '', Иначе в выборку
                                                    #попадают части составных слов Нью-Йорк, Лас-Вегас.

  #Полученную новую строку запишем в массив применив регулярное выражение
  three_letter_words = new_string.scan(regexp_search)

  puts three_letter_words.to_s

  #каждый шаг цикла увеличивает счётчик на количество элементов нового массива "отфильтрованных" строк.
  count += three_letter_words.length

end

puts count

#puts three_letter_words.to_s
