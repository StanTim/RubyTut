gem 'math'

# Калькулятор для целых чисел
# без проверки попытки деления на 0

# Можно делить на 0
# с результатом бесконечность infinity !!!!!!!!!!!!!!!!!!!!!


puts 'Введите первое число'

num1 = STDIN.gets.chomp.gsub(/,/,'.')

puts 'Выберите действие (+ - * /):'

operator = STDIN.gets.chomp

puts 'Введите второе число'

num2 = STDIN.gets.chomp.gsub(/,/,'.')


case operator

  when "+"
    result = num1.to_f + num2.to_f

  when "-"
    result = num1.to_f - num2.to_f

  when "*"
    result = num1.to_f * num2.to_f

  when "/"
    result = num1.to_f / num2.to_f

else

    puts "Неправильный ввод! Ожидалось (+ - * /)"
    abort

end



puts "Результат:"
#Представим результат в виде выражения используя интерполяцию
puts "#{num1} #{operator} #{num2} = #{result}"
