summ = []

#user_input = nil
#Total_summ = nil
#Member = nil

puts 'Введите целое число'

user_input = gets.to_f

number = 1

while number <= user_input do

	summ << number
	number += 1

	#else

	#Total_summ = ((summ [0] + summ [user_input])/2) * user_input

end

if user_input !=2

	Total_summ = ((1 + user_input) / 2) * (user_input)

	puts summ.to_s

	puts 'Сумма чисел : ' + Total_summ.to_s

	else 

	puts summ.to_s

	puts 'Сумма чисел : 3' #+ Total_summ.to_s
end