current_path = File.dirname(__FILE__)# "./" +

require current_path + "/game.rb"
require current_path + "/result_printer.rb"
require current_path + "/word_reader.rb"

printer = ResultPrinter.new

reader = WordReader.new

slovo = reader.read_from_file(current_path + "./data/words.txt")

if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end

game = Game.new(slovo)

while game.status == 0 do

  printer.print_status(game)
  game.ask_next_letter(game)
end

printer.print_status(game)

end
