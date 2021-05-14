# encoding: utf-8

# Подключим класс Man из файла man.rb
require_relative 'Man2'

# Создадим двух людей
man1 = Person.new('Константин', 'Петрович',37)
man2 = Person.new('Фёдор', 'Петрович', 61)


# Выводим на экран имена всех наших людей
puts 'У нас есть два человека:'
puts man1.full_name
puts man1.old?
puts man2.full_name
puts man2.old?
