##################################################################################
############################ 									 #################
############################ Обрезаем первые N элементов массива #################
############################ 									 #################
##################################################################################

#b = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
a = (1..11).to_a

user_input = nil

puts "Вот какая палка колбаски у нас есть!"
puts a.to_s
puts "Сколько кусочков отрезать?"
user_input = STDIN.gets.chomp.to_i

# Создаём метод с параметрами количества элементов пользователь.##
# и именем массива из которого хотим отрезать слева элементы

def first_n_cut(kolvo, arr) 
	
cutted = arr
current = arr

i = 1

if arr.size <= kolvo					### Сравнение длины массива и ввода пользователя
	puts "Проси меньше #{arr.size}!"    ### Если введенное значение пользователем больше
	exit								### выводим предупреждени и выходим из метода.

else 		  
arr = current - arr.pop(kolvo + 1)
	return arr
end
end

puts "Вот, пожалуйста:"

puts first_n_cut(user_input, a).to_s
puts
#puts first_n_cut(user_input, b).to_s