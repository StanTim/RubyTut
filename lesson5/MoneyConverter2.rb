puts 'Какая у вас на руках валюта?
1. Даллары
2. Рубли'

choice = gets.chomp

if choice == "1"

	puts 'Сколько сейчас стоит 1 доллар в рублях?'

	usd = gets.to_f

	puts 'Сколько сейчас у вас рублей?'

	rub = gets.to_f

	total = rub / usd

	puts 'Ваши запасы равны: $' + total.round(2).to_s

else#if choice == "2"

	puts 'Сколько сейчас стоит 1 РУБЛЬ в долларах?'

	rub = gets.to_f

	puts 'Сколько сейчас у вас долларов?'

	usd = gets.to_f

	total = usd / rub

	puts 'Ваши запасы равны: Pубл ' + total.round(2).to_s

end