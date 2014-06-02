list = []
while true
	input = gets.chomp
	list.push input 

	if input != ''
	else
		list.pop
		puts (list.sort).join(', ')
		break
	end
end