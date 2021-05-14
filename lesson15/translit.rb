#Программа транслиттер с русского на латиницу и обратно
# Подкллючаем гем транслит с русского на латиницу и обратно
# Предварительно её установив gem install translit
require "translit"

if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

puts "Введите фразу для обратной транслитерации"

frase = gets.encode('UTF-8').chomp

while frase == Translit.convert(frase, :english)
  puts "Фраза на английском"
  puts "Введите фразу на русском"
  frase = gets.chomp

end
puts Translit.convert(frase, :english)
