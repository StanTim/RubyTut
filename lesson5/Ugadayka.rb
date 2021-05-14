number = rand(16)

puts 'Отгадайте число от 0 до 15 с трёх попыток'# + number.to_s

answer = gets.chomp.to_i

dev = number - answer

#1

if answer == number

	puts 'Поздравляем!
	Вы угадали правильно'
	abort

else

	if dev.abs <= 2 && dev > 0

		puts 'Почти'
		puts 'Нужно больше'
		#answer = gets.chomp.to_i
		#dev = number - answer
	
	else
			if dev.abs <= 2 && dev < 0

				puts 'Почти'
				puts 'Нужно меньше'
				#answer = gets.chomp.to_i
				#dev = number - answer

			else
				
			#	if answer != number

			#		puts'Не угадал!'
			puts'Пoпробуйте еще раз!'
			#		#answer = gets.chomp.to_i

			#	else
		end
	end
end

#2

answer = gets.chomp.to_i

dev = number - answer


if answer == number

	puts 'Поздравляем!
	Вы угадали правильно'
	abort

else

	if dev.abs <= 2 && dev > 0

		puts 'Почти'
		puts 'Нужно больше'
		#answer = gets.chomp.to_i
		#dev = number - answer
	
	else
			if dev.abs <= 2 && dev < 0

				puts 'Почти'
				puts 'Нужно меньше'
				#answer = gets.chomp.to_i
				#dev = number - answer

			else
				
			#	if answer != number

			#		puts'Не угадал!'
			puts'Пoпробуйте еще раз!'
			#		#answer = gets.chomp.to_i

			#	else
		end
	end
end

#3

answer = gets.chomp.to_i

dev = number - answer


if answer == number

	puts 'Поздравляем!
	Вы угадали правильно'
	abort

else

	if dev.abs <= 2 && dev > 0

		puts 'Почти'
		puts 'Нужно больше'
		#answer = gets.chomp.to_i
		#dev = number - answer
	
	else
			if dev.abs <= 2 && dev < 0

				puts 'Почти'
				puts 'Нужно меньше'
				#answer = gets.chomp.to_i
				#dev = number - answer

			else
				
			#	if answer != number

			#		puts'Не угадал!'
			puts'Пoпробуйте еще раз!'
			#		#answer = gets.chomp.to_i

			#	else
		end
	end
end

puts 'Не угадал!'
puts 'Правильный ответ: ' + number.to_s