def say_hi (name)
	puts "Привет, #{name}, как твои дела?"
end

if (Gem.win_platform? && ARGV[0])
  argument = argument.encode(ARGV[0].encoding).encode ("UTF-8")
end


say_hi STDIN.gets.chomp


 #say_hi