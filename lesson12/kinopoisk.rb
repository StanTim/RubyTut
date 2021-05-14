#Подключим класс Фильмов и Режиссёров
require_relative 'MoviesDirectors'

#Декодируем ввод на кирилице
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
end


puts "Фильмы какого режиссера Вы хотите посмотреть?"
director = STDIN.gets.chomp

movies = [] #Объявим массив, в который будем складывать
          #названия фильмов

3.times do
puts "Назовите какой-нибудь его хороший фильм?"
user_movie = STDIN.gets.chomp

#Создадим экземпляр класса, передадим в поля Режиссера,
# и массив фильмов
film1 = MoviesDirectors.new(director, user_movie)

# Запишем в массив Фильмы новый объект! - фильм, с полями название и режиссер!
movies << film1
end

#Выберем случайный фильм(объект) на вечер
film_to_night = movies.sample
#При выводе обратимся к полю объекта - названию фильма, режиссёру
puts "И сегодня вечером рекомендую посмотреть: #{film_to_night.movie}"
puts "Режиссер: #{film_to_night.director}"
end
