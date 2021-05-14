names = []
user_input = nil

while user_input != '' do
	user_input = gets.encode('UTF-8').chomp
	names << user_input
end
	
for item in names do
	puts "C нами " + item
	sleep 1

	if (item == 'Elice')
		puts "Elice!? Кто такая Elice?"
		sleep 1
		break
	end
	
end
puts 'А что это за девочка и где она живет?'
sleep 1
puts 'А вдруг она не курит? Авдруг она не пьет'
sleep 1
puts 'А мы с такими рожами возьмём да и припремся к Elice!'
sleep 1