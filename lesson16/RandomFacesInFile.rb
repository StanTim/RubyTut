current_path = File.dirname(__FILE__)

file_path = current_path + './data/'

# Программа генерации случайных рожиц



if File.exist?(file_path) # Возвращает true или false
  #Открываем фаил массива лбов и выбираем из него случайный вариант
  f = File.new('./data/foreheads.txt','r:UTF-8')
  flines = f.readlines #Это массив строк, прочитанных из файла с Головами!
  f.close #Закрытие файла ВАЖНО!!!!

else
  puts 'Фаил волос не найден'
end

if File.exist?(file_path)
  e = File.new('./data/eyes.txt','r:UTF-8')
  elines = e.readlines #Это массив строк, прочитанных из файла с Глазами!
  e.close #Закрытие файла ВАЖНО!!!!

else
  puts 'Фаил глаз не найден'
end

if File.exist?(file_path)
  n = File.new('./data/noses.txt','r:UTF-8')
  nlines = n.readlines #Это массив строк, прочитанных из файла с носами!
  n.close #Закрытие файла ВАЖНО!!!!

else
  puts 'Фаил носов не найден'
end

if File.exist?(file_path)
  m = File.new('./data/mouths.txt','r:UTF-8')
  mlines = m.readlines #Это массив строк, прочитанных из файла с ртами!
  m.close #Закрытие файла ВАЖНО!!!!

else
  puts 'Фаил ртов не найден'
end

time = Time.now
file_name = "face " + time.strftime("%Y.%m.%d %H-%M-%S") + ".txt"
  file = File.new(current_path + "/" + file_name, "a:UTF-8")
  file.puts flines.sample.to_s
  file.puts elines.sample.to_s
  file.puts nlines.sample.to_s
  file.puts mlines.sample.to_s
  file.close
puts 'фаил с рожицей создан'
