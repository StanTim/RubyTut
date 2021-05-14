puts 'Сколько сейчас стоит 1 доллар в рублях?'

dollar = gets.to_f

puts 'Сколько  у вас рублей?'

rubles = gets.to_f

total = rubles / dollar

puts 'Ваши запасы равны: $' + total.round(2).to_s