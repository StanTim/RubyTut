require "./game"
require "./result_printer"


printer = ResultPrinter.new

slovo = ARGV[0]

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
