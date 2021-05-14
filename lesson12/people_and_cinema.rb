#Подключение классов
require_relative 'MoviesDirectors'
require 'c:\RubyTut\Lesson11\Person.rb'

#Декодируем ввод на кирилице
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
end

#Создадим три экземпляра класса Person
man1 = Person.new("Сергей", "Анатольевич", 34)
man2 = Person.new("Юлия", "Ивановна", 66)
man3 = Person.new("Антон", "Петрович", 26)

#Каждому присвоим новый экземпляр класса Фильмы и Режиссёры
# т.е. в этой переменной класса человек будет содержаться
# экземпляр класса Фильмы с режиссерами
man1.fav_movie = MoviesDirectors.new("Джордж Лукас", "Звёздные войны")
man2.fav_movie = MoviesDirectors.new("Джеймс Кэмерон", "Титаник")
man3.fav_movie = MoviesDirectors.new("Джеймс Кэмерон", "Терминатор")

# Далее делаем вывод как задании:
puts "#{man1.first_name}"
# обращение идет к переменной, в которой вложена еще переменная
puts "C любимым фильмом #{man1.fav_movie.movie}"
puts "#{man2.first_name}"
puts "C любимым фильмом #{man2.fav_movie.movie}"
puts "#{man3.first_name}"
puts "C любимым фильмом #{man3.fav_movie.movie}"

end
