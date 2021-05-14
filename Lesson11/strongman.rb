require_relative 'Bodybuilder'

Strongman1 = Bodybuilder.new(1,4,5,2) #Создадим четырех качков с
Strongman2 = Bodybuilder.new(10,3,2,3) # разной прокачкой мышц
Strongman3 = Bodybuilder.new(1,2,3,4)
Strongman4 = Bodybuilder.new(7,6,3,4)

5.times do
Strongman1.musculpowerup("delta")
end
#Strongman2.musculpowerup(triceps)
#Strongman3.musculpowerup(trapeze)
#Strongman4.musculpowerup(delta)

puts "Первый бодибилдер:"
Strongman1.musculpower
