# Игра виселица 3.1
# При чтении данных из файлов отключена проверка доступа к файлу.
# Используется begin - rescue - ensure
# если файл со словами отсутствует, предлагается ввести слово вручную
# При отсутствии графических файлов выводится сообщение, но игра продожается

current_path = File.dirname(__FILE__)# Указан путь к файлам с игрой относительно места запуска

require current_path + "/game.rb"           # Класс с логикой игры
require current_path + "/result_printer.rb" # Класс обработки и вывода текущего результата
require current_path + "/word_reader.rb"    # Класс для чтения данных из файлов слов и изображений

printer = ResultPrinter.new

reader = WordReader.new

if (Gem.win_platform?) # Декодировка для кирилицы
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

begin # Обработаем возможные ошибки чтения данных из файлов игры

  slovo = reader.read_from_file(current_path + "./data/words.txt")

  #общая системная ошибка при отсутствии файлов - не рекомндуется, можно применить Errno
rescue SystemCallError

  puts "Фаил #{current_path}/data/words.txt для загадывания слов не найден"
  puts ""
  puts "Загадайте слово вручную"
  puts ""
  slovo = STDIN.gets.chomp

end

# Экземпляр класса game с загаданным словом в качестве параметра
game = Game.new(slovo)


while game.status == 0 do

  printer.print_status(game)
  game.ask_next_letter(game)

end

printer.print_status(game)

