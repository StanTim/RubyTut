puts "Сколько вам звезд на погоны?" # 
user_input = STDIN.gets.chomp.to_i

def ShootingStars(strs)

empty = []

i = 1

while i <= strs

	empty << '*'
	i += 1

end

strs = empty.join

return strs

end

puts 'Вот ваши звёзды :)'
puts ShootingStars(user_input).to_s