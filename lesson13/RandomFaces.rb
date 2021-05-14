#current_path = File.dirname(__FILE__)

#file_path = current_path# + './data/'

# Программа генерации случайных рожиц



#if File.exist?(file_path) # Возвращает true или false
  #Открываем фаил массива лбов и выбираем из него случайный вариант
  f = File.new('./data/foreheads.txt','r:UTF-8')
  flines = f.readlines #Это массив строк, прочитанных из файла построчно!
  f.close #Закрытие файла ВАЖНО!!!!

  e = File.new('./data/eyes.txt','r:UTF-8')
  elines = e.readlines #Это массив строк, прочитанных из файла построчно!
  e.close #Закрытие файла ВАЖНО!!!!

  n = File.new('./data/noses.txt','r:UTF-8')
  nlines = n.readlines #Это массив строк, прочитанных из файла построчно!
  n.close #Закрытие файла ВАЖНО!!!!

  m = File.new('./data/mouths.txt','r:UTF-8')
  mlines = m.readlines #Это массив строк, прочитанных из файла построчно!
  m.close #Закрытие файла ВАЖНО!!!!
  puts ""
  puts flines.sample.to_s
  puts elines.sample.to_s
  puts nlines.sample.to_s
  puts mlines.sample.to_s
  puts ""
#else
#  puts 'Фаил не найден'
#end
