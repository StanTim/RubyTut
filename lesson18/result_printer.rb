class ResultPrinter

  def initialize
    @status_image = []




  current_path = File.dirname(__FILE__)
  counter = 0


  while counter <= 7 do

    file_name = current_path + "/image/_#{counter}.txt"

      begin

        f = File.new(file_name, "r:UTF-8")
        @status_image << f.read
        f.close


      rescue SystemCallError => error
        puts "Файл #{file_name} с изображением №#{counter} не найден"

      ensure
        @status_image << '
                          ##       ##   ##########     ##  ###          ###   #########    #########  ##########
                          ###      ##   ##      ##         ####        ####  ##       ##  ##          ##
                          ####     ##   ##      ##     ##  ## ##      ## ##  ##       ##  ##          ##
                          ## ##    ##   ##      ##     ##  ##  ##    ##  ##  ##       ##  ##          ######
                          ##  ##   ##   ##      ##     ##  ##   ##  ##   ##  ###########  ##          ##
                          ##   ##  ##   ##      ##     ##  ##    ####    ##  ##       ##  ##     ###  ##
                          ##    #####   ##      ##     ##  ##     ##     ##  ##       ##  ##      ##  ##
                          ##     ####   ##########     ##  ##            ##  ##       ##   #########  ###########  '
        end
    counter += 1

  end

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

  def cls
    system "clear" or system "cls"
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



  def graphics(errors)
    puts ""
    puts @status_image[errors]
  end

graphics(game.errors)


end
end

