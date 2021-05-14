argument = ARGV[0]

if (Gem.win_platform? && ARGV[0])
  argument = argument.encode(ARGV[0].encoding).encode ("UTF-8")
end

if (ARGV[0] == nil)
  abort "Нужен какой-нибудь аргумент!"
end

if (argument == "дурак")
	puts "Сам дурак!"
else
	puts "Здравствуй, дорогой!"
end