def circle_area(radius)

	area = (radius ** 2) * Math::PI

	return area

end

puts "Введите радиус круга"

user_input = STDIN.gets.chomp.to_f

puts "Площадь круга с радиусом #{user_input} равна: #{circle_area(user_input).to_s}"

puts "Введите радиус второго круга"

user_input = STDIN.gets.chomp.to_f

puts "Площадь второго круга с радиусом #{user_input} равна: #{circle_area(user_input).to_s}"