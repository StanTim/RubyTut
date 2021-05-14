Array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]

puts Array.to_s

i = 1

user_input = STDIN.gets.chomp.to_i

while (i <= user_input) #######
	Array.delete_at(0)  ######  обрезать первые N членов массива слева
	i += 1				######
end						######

puts Array.to_s

puts Array.size.to_s

puts Array.pop(user_input).to_s