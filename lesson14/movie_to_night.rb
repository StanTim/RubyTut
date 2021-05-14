#программа чтения из файла movies.txt
#и вывода на экран
#случайного фильма
#из списка фильмов в файле
#вначеле делаем проверку присутствия файла в директории Data


if File.exist?('./data/movies.txt')

file = File.new("./data/movies.txt", "r:UTF-8")
movies = file.readlines
file.close

else

  puts 'Фаил не найден'
  abort
end



system "clear" or system "cls"  #очистка консоли
puts 'Сегодня мы вам рекомендуем к просмотру фильм:
'
puts movies.sample.to_s
