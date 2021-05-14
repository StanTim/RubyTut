require 'net/http'

def get_random_regexp_string

  pattern_words = ["крыша", "уха", "лес", "юг", "враг", "вес", "рис", "пар", "скат"]

pattern = pattern_words.sample #Выберем случайное слово из массива паттерн_вордс

letter = pattern.split('').sample  #указывает сплиту пустую
                                   #строку '', иначе если этот
                                   # атрибут не указать по
                                   #умолчанию используется пробел
# сплит разбиватет строку на массив с буквами - стандартный метод у arrays
# выберем из массива случайную букву для последующей замены на точку
# точка это спец символ для регексп

return pattern.gsub(letter, '.')

end

def word_exist?(word)

  url = "https://ru.wiktionary.org/wiki/#{word}"

  wiktionary_page = Net::HTTP.get(URI.parse(URI.encode(url))).force_encoding('UTF-8')

  if wiktionary_page =~ /Страницы с названием #{word} не существует/
    return false
  else
    return true
  end

end
