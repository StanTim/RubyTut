#Декодируем ввод на кирилице
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end

puts "Врага какого персонажа вы хотите узнать?"

hero = nil

hero = STDIN.gets.chomp

badguy = nil

#def badguy_output(hero, badguy)
#  puts "для #{hero} - антигерой: #{badguy}"
#end


  case hero
    when "batman","Batman","Бэтмен","бэтмен"
    badguy = "joker"

    when "Заяц","заяц"
    badguy = "волк"

    when "superman"
    badguy = "batman"

    when "robocop","робокоп"
    badguy = "terminator"

    when "antman"
    badguy = "halk"

    when "stalin","сталин"
    badguy = "gitler"

    when "Красная шапочка","красная шапочка"
    badguy = "волк"

  else
    puts "Не удалось найти врага для #{hero}"
    abort
  end
end

puts "для #{hero} - антигерой: #{badguy}"
