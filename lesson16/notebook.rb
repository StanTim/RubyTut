puts "Привет, я твой дневник. Скажи мне что у тебя на уме и в душе?"
puts "Я сохраню всё, что ты напишешь до строчки \"end\" в файл."
puts


#Определим папку, в которой лежит эта программа
#С помощью специального служебного объекта Ruby __FILE__

current_path = File.dirname(__FILE__)

line = nil
all_lines = []

while line != "end" do
  line = STDIN.gets.encode("UTF-8").chomp
  all_lines << line
end

time = Time.now

file_name =  time.strftime("%Y-%m-%d") # 2014-11-25

time_string = time.strftime("%H:%M") # 22:16

separator = "- - - - - - - - - - - - - - - - - - - - -"

# a = append запись в фаил и если нет такого файла то создать его
# Запись происходит в конец файла.

file = File.new(current_path + "/" + file_name + ".txt", "a:UTF-8")

file.print("\n\r" + time_string + "\n\r")# Принт печатает без символов конца строки - переноса

all_lines.pop # удаляем из массива последний элемент end

for item in all_lines do
  file.puts(item) # пИШЕМ СТРОКИ В ФАЙЛ МЕТОДОМ ПУТС с ПЕРЕНОСАМИ
end

file.puts(separator) #вСТАВИМ РАЗДЕЛИТЕЛЬ ЗАПИСЕЙ

file.close

puts "Ваша запись сохранена в файл!"

