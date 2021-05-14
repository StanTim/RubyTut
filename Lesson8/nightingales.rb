
grad = ARGV[0]
season = ARGV[1]


answers = ["Сейчас соловьи молчат, греются или прохлаждаются :)","Скорее идите в парк, соловьи поют!"]

while (grad == nil)
	puts "Какая Сейчас температура?"
	grad = STDIN.gets.chomp.to_f
end


while season == nil #and season != 1 and season != 2 and season != 3 and season != 0 
	puts "Какое время года? (0 = Весна, 1 = Лето, 2 = Осень, 3 = Зима)"
	season = STDIN.gets.chomp.to_i
end

until (0..3).include?(season.to_i)
	puts "Какое время года? (0 = Весна, 1 = Лето, 2 = Осень, 3 = Зима)"
	season = STDIN.gets.chomp.to_i
end

if (22..30).include?(grad.to_f)
	puts answers[1]

elsif (15..35).include?(grad.to_f) and (season.to_i == 1)
	
	puts answers[1]

else
	puts answers[0]
end