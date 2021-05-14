# добавляется путь к файлу независимо
# от дириктории выполнения программы
# папку данных всегдя делай подкаталагом - хороший тон!

current_path = File.dirname(__FILE__)

file_path = current_path + './data/quotes.txt'

puts "Афоризм дня:"

#чтение строки из файла в массив строк
# и вывод случайной
# а также проверка на наличие файла в папке

if File.exist?(file_path) # Возвращает true или false
  f = File.new(file_path,'r:UTF-8')
  lines = f.readlines #Это массив строк, прочитанных из файла построчно!
  f.close #Закрытие файла ВАЖНО!!!!
  puts lines.sample
else
  puts 'Фаил не найден'
end
