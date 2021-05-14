require "./methods.rb"

cls

puts "игра виселица, версия 1.0"

letters = get_letters # Метод который загадывает слово

errors = 0 #Счетчик ошибок

bad_letters = [] #массив букв, которых нет в слове
good_letters = [] #Массив правильно угаданных букв

while errors < 7 do
	print_status(letters, good_letters, bad_letters, errors) #метод, отображает
	#текеущее состояние игры: сколько букв угадано, сколько ошибок и т.д.
	puts "введите следующую букву"
	#
	user_input = get_user_input
	#
	result = check_result(user_input, letters, good_letters, bad_letters)

	if (result == -1)
		errors += 1
	elsif (result == 1)
		break
	end
end

print_status(letters, good_letters, bad_letters, errors)
