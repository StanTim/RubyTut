cars = ["audi","ford","bmw","lada","kia","honda","toyota","opel","reno","wv"]

puts 'У нас всего ' + cars.length.to_s + ' машин. Вам какую?'
puts
sel = gets.chomp.to_i

if sel < cars.length && sel >= 0
	puts 'Поздравляем, вы получили:'
	puts
	puts cars[sel].to_s
else
	puts
	puts 'Извините, машины с таким номером у нас нет :('
end

