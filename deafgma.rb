while true
	input = gets.chomp
	if input != 'BYE'
		if input == input.upcase
			puts 'NO, NOT SINCE ' + (rand(21) + 1930).to_s + '!'
		else
			puts 'HUH?! SPEAK UP, SONNY!'
		end
	else
		puts 'GOOD BYE!'
		break
	end
end