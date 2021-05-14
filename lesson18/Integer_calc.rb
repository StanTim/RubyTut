gem 'math'

# Калькулятор для целых чисел
# с проверкой попытки деления на 0
# Работает только с целыми числами!!!!
# Если преобразовать в float, то можно делить на 0
# с результатом бесконечность infinity !!!!!!!!!!!!!!!!!!!!!
# результат деления целого нечётного числа на чётное бутет неправильным!

puts 'Введите первое число'

num1 = STDIN.gets.chomp

puts 'Выберите действие (+ - * /):'

operator = STDIN.gets.chomp

puts 'Введите второе число'

num2 = STDIN.gets.chomp

begin

case operator

  when "+"
    result = num1.to_i + num2.to_i

  when "-"
    result = num1.to_i - num2.to_i

  when "*"
    result = num1.to_i * num2.to_i

  when "/"
    result = num1.to_i / num2.to_i

else

    puts "Неправильный ввод! Ожидалось (+ - * /)"
    abort

end

    # Обработаем исключение "деления на 0".
    # через консоль при помощи irb проверяю - какая
    # внутренняя ошибка соответствует такому делению
    # ZeroDivisionError далее ставим знак => указываем на
    # ошибку. error.message будет "division by 0"
    # Остальные возможные ошибки - пока не обрабатываем

rescue ZeroDivisionError => error

  puts "На ноль делить нельзя " + error.message


ensure

puts "Результат:"
puts "#{num1} #{operator} #{num2} = #{result}"

end
