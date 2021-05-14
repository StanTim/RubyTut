#Программа просто записывает строку "привет файл""
#в файл
#

current_path = File.dirname(__FILE__)

file_name = "hello"

file = File.new(current_path + "/" + file_name + ".txt", "a:UTF-8")

file.puts "Hello, file! #{Time.now}"#("\n\r" + " + "\n\r")

file.close
