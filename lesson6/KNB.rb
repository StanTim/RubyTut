a = ["Камень","Ножницы","Бумага"]

puts 'введите вариант: 0 - камень, 1 - ножницы, 2 - бумага'

you = gets.chomp.to_i

comp = rand(3)

puts 'Вы выбрали: ' + a[you].to_s

puts 'Комп выбрал: ' + a[comp].to_s

if you == comp

	puts
	
	puts 'Ничья'

else 
	if you == 0 && comp == 1

		puts "Вы победили"

	else

		if you == 1 && comp == 2

			puts "Вы победили"

		else

			if you == 2 && comp == 0

				puts "Вы победили"
			
			else

				puts "Вы проиграли"
			
			end
		end
	end
end