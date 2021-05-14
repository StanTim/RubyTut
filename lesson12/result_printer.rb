class ResultPrinter

def print_status(game)

  cls

  puts "\nСлово: " + get_word_for_print(game.letters, game.good_letters)

  puts "У вас #{game.errors} #{sklonenie(game.errors,"ошибки","ошибка","ошибок")}: #{game.bad_letters.join(", ")}"

  if game.errors >= 7

    puts " Вы проиграли ;("

  else
    if game.letters.uniq.sort == game.good_letters.sort
      puts "Поздравляем! Вы выиграли! \n\n"
    else
      puts "Осталось #{(7-game.errors).to_s} #{sklonenie(7-game.errors,"попытки","попытка","попыток")} "
    end
  end

graphics(game.errors)

end
def get_word_for_print(letters, good_letters)

  result = ""

  for item in letters do
    if good_letters.include? item
      result += item + " "
    else
      result += "__ "
    end
  end

  return result
end

def cls
  system "clear" or system "cls"
end

def sklonenie(errors, ki, ka, ok)
number = errors
  if number == 2 || number == 3 || number == 4
    return ki
  elsif number == 1
    return ka
  else
    return ok
  end

end

def graphics(errors)
  case errors
  when 0
    puts '
    |\_________
    |
    |      ( )
    |       |
    |
    |
    |
    |
    |
        '
  when 1
    puts '
    |\_________
    |
    |      ( )
    |       |
    |      /|\
    |       |
    |
    |
    |
        '
    when 2
    puts '
    |\_________
    |
    |      ( )
    |       |
    |      /|\
    |     / | \
    |
    |
    |
        '
  when 3
    puts '
    |\_________
    |
    |      ( )
    |       |
    |      /|\
    |     / | \
    |      / \
    |
    |
        '
   when 4
    puts '
    |\_________
    |
    |      ( )
    |       |
    |      /|\
    |     / | \
    |      / \
    |     /   \
    |
        '
   when 5
    puts '
    |\_________
    |
    |      ( )
    |       |
    |      /|\
    |     / | \
    |      / \
    |    _/   \_
    |
        '
   when 6
    puts '
    |\_________
    |       |
    |      ( )
    |       |
    |      /|\
    |     / | \
    |      / \
    |    _/   \_
    |
        '
   when 7
    puts '
    |\_________
    |       |
    |      (_)
    |       |
    |      /|\
    |     / | \
    |      / \
    |    _/   \_
    |
        '
      end
    end
end
