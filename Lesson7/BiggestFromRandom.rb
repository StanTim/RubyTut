Massiv = []
puts 'Введите длину массива'
user_input = gets.to_i
#rand (user_input)
i = 0

while i <= user_input do
		Massiv << rand(100)
		i += 1
end

puts Massiv.to_s

valumax = 0

for item in Massiv do
	
		if item > valumax

		valumax = item
		end
end

puts 'Наибольшее число :'
puts valumax.to_s