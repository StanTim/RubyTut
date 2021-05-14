#	программа ищет #хэш-тэги в введенной стоке
# на выводе строка с хэштегами через запятую

# Декодируем ввод на кирилице

if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

puts "Введите фразу содержащую хэш-тэги"

user_input = STDIN.gets.chomp

hash_search = /#[[:word:]-]+/# #Выражение класса regexp фильтрует слова, цифры, тире и подчеркивания
                                #/[A-zА-я0-9_-]*/i - так же работает, но не такое изящное как :word:
hash_array = []                   # массив для найденных хэштегов



user_input.scan(hash_search) do |match| # метод строки скан прогоняет через экземпляр класса regexp методом .match с фильтром регексп всю строку! иначе только до первого совпадения
  hash_array << match                   #пополним массив с хэштегами. Если сразу путс, - то будет построчный вывод хэштегов
end



if hash_array.empty?

    puts "Хэштеги не Обнаружены"

else

  puts "Обнаружены хэштеги: #{hash_array.join(", ").to_s}" # печатаем элементы массива в список через запятую с пробелом (join(", "))

end


