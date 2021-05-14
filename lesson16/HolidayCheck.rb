#ПРОГРАММА ПРОВЕРКИ ВЫХОДНЫХ/ПРАЗДНИЧНЫХ/РАБОЧИХ ДНЕЙ
#Актуальна для РФ на 2021 год.
#*С учётом апрельских посланий президента

time = Time.now

puts "Сегодня #{time.strftime("%d.%m")}"  #.to_s #time.strftime("%Y-%m-%d")

# Components of a Time
#puts time.year    # => Year of the date
#puts time.month   # => Month of the date (1 to 12)
#puts time.day     # => Day of the date (1 to 31 )
#puts time.wday    # => 0: Day of week: 0 is Sunday
#puts time.yday    # => 365: Day of year
#puts time.hour    # => 23: 24-hour clock
#puts time.min     # => 59
#puts time.sec     # => 59
#puts time.usec    # => 999999: microseconds
#puts time.zone    # => "UTC": timezone name

current_path = File.dirname(__FILE__)
holidays = [] # Массив выходных дней


if File.exist?(current_path) # Возвращает true или false

  file = File.new('./data/holidays.txt', 'r:UTF-8') #Открываем фаил выходных дней

  holidays = file.readlines #Это массив строк: праздники в формате [01.01,02.01, и т.д. ]

  file.close #Закрытие файла

else
  puts 'Фаил holidays.txt не найден'
end

#puts holidays.to_s

for dates in holidays # обрежем символы новой строки, прочитанные из файла
  dates.chomp!        # метод с восклицательным знаком перезаписывает элемент в массиве
end

#puts holidays.to_s

if time.wday == 0 || time.wday == 6  #cheking for sun or sat

  puts
  puts 'Выходной день'

  elsif holidays.include?(time.strftime("%d.%m")) #checking for holidays

        puts
        puts 'Праздничный день'

    elsif time.strftime("%d.%m") == "20.03" #checking for working sut
        puts
        puts 'Рабочая суббота, короткий день'

else

	puts
	puts 'Будний день, за работу!'

end
