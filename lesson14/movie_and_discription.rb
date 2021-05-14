#программа чтения из файла movies.txt
#и вывода на экран
#случайного фильма
#из списка фильмов в файле
#вначеле делаем проверку присутствия файла в директории Data
#Номера элементов массива проверяем на чёт\нечёт
#Добавляем описание к фильмам
#Выводим названия фильмов как чётные строки
#Выводим соответствующее описание фильма как нечётное
#


if File.exist?('./data/movies_and_discribtion.txt')

file = File.new("./data/movies_and_discribtion.txt", "r:UTF-8")
movies = file.readlines
file.close

number = rand(0..movies.length)

dev = number.to_f/2

if number == 0 #Если случайный элемент массива оказался равным 0,
  # то просто продолжаем выполнение программы
  return number

  else
    if dev%1 == 0 # Если чётное, то уменьшим его на 1
        else number -= 1
    end

end
else

  puts '..../data/movies_and_discribtion.txt Фаил не найден'
  abort

end

discription = movies[number + 1]# Описание сюжета - следующая строка файла после названия фильма

system "clear" or system "cls"  #очистка консоли
puts 'Сегодня мы вам рекомендуем к просмотру фильм:'

puts movies[number].to_s


puts "Сюжёт: #{discription}"
