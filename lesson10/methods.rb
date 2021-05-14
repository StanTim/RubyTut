#puts 'тут методs'
	if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

#выше декодировка РАБОТАЮЩАЯ русского алфавита


def get_letters

	slovo = ARGV[0]

	#if (Gem.win_platform? && ARGV[0])
	#slovo = slovo.encode(ARGV[0].encoding, 'cp1251').encode('UTF-8')
	#end

	if (slovo == nil || slovo == "")
		abort "Вы не ввели слово для игры"
	end

	return slovo.split("")
end



def get_user_input

	letter = ""

	while letter == ""

		letter = STDIN.gets.chomp

	end

	return letter
end


def check_result(user_input, letters, good_letters, bad_letters)


	if (good_letters.include?(user_input) || bad_letters.include?(user_input))

		return 0 #forgive if input is repeat
	end


	if letters.include? user_input ||
     (user_input == 'е' && letters.include?('ё')) ||
     (user_input == 'ё' && letters.include?('е')) ||
     (user_input == 'и' && letters.include?('й')) ||
     (user_input == 'й' && letters.include?('и'))
		good_letters << user_input

				if user_input == 'е'
      			good_letters << 'ё'
			    end

    		if user_input == 'ё'
      		good_letters << 'е'
    		end

   			 if user_input == 'и'
      		good_letters << 'й'
    		end

   			 if user_input == 'й'
    	  good_letters << 'и'
    			end

			# Условие когда отгадано всё слово
			if (letters - good_letters).empty?
				return 1
			else
				return 0
			end

		else
		bad_letters << user_input
		return -1
		end
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

def print_status(letters, good_letters, bad_letters, errors)

	puts "\nСлово: " + get_word_for_print(letters, good_letters)

	puts "У вас #{errors} #{sklonenie(errors,"ошибки","ошибка","ошибок")}: #{bad_letters.join(", ")}"

	if errors >= 7

		puts " Вы проиграли ;("

	else
		if letters.uniq.sort == good_letters.sort
			puts "Поздравляем! Вы выиграли! \n\n"
		else
			puts "Осталось #{(7-errors).to_s} #{sklonenie(7-errors,"попытки","попытка","попыток")} "
		end
	end
end

# Метод print_status должен
#Выводить загаданное слово как в "Поле чудес"
#Информировать о ошибках
#Если Ошибок > 7 - сообщить о поражении
#Поздравить с победой, если угадали слово

def cls
	system "clear" or system "cls"
end
