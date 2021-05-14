current_path = File.dirname(__FILE__)

file_path = current_path + './file1.txt'

empty_strings_number = 0

if File.exist?(file_path) # Возвращает true или false
  f = File.new(file_path,'r:UTF-8')
  lines = f.readlines #Это массив строк, прочитанных из файла построчно!
  f.close #Закрытие файла ВАЖНО!!!!
  puts "Всего строк: #{lines.length}"

  empty_strings_number = lines.rindex("\r\n") #Перенос строки в Win

  if empty_strings_number == nil
    puts "Пустых строк: 0"
   else
    puts "Пустых строк: #{empty_strings_number.to_s}"
  end

  puts "Последние 5 строк файла:"
  puts "\r\n"
  puts "\r\n"
  lines.last(5).each do |line|
    puts line
  end
else
  puts 'Фаил не найден'
end
