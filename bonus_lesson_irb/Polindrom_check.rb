# Программа из бонусного урока для проверки Палиндромов в словах и словосочетаниях
# Программа учитывает наличие пробелов до и после строк, а ткже знаков препинания
#
# *Это слова или фразы слов, которые одинаково читаются слева направо и справа налево
#
#
#

#Декодируем ввод на кирилице
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

current_string = gets.chomp.strip.delete(",!.;?/-_=+%№;") # Метод делит убирает знаки препинания,
                                                          # стрип - пробелы в конце и начале строки.

revers_string = current_string.reverse #метод выдает новую строку "развернутую" справа налево

if revers_string == current_string # Сравниваем строки полученные после разворота

  puts "Является полиндромом"

else

  puts "Не Полиндром"

end
