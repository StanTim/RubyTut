fruits = ["apple", "orange", "banana"]

puts "Массив: " + fruits.to_s

bascet = []

bascet << "apple"

bascet.push("Mellow")

bascet.push("cherry", "Mango")

puts "Корзина: " + bascet.to_s

puts bascet [0]

bascet.delete("Mellow")

puts "Корзина: " + bascet.to_s

bascet.delete_at(0)

puts "Корзина: " + bascet.to_s