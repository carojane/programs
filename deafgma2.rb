huh = 'HUH?! SPEAK UP, SONNY!'
notsince = 'NO, NOT SINCE ' + (rand(21) + 1930).to_s + '!'

while true
	input = gets.chomp
	if input != 'BYE'
		if input == input.upcase
			puts notsince
		else
			puts huh
		end
	else	
		puts notsince
		input2 = gets.chomp
		if input2 == 'BYE'
			puts notsince
			input3 = gets.chomp
			if input3 != 'BYE'
				if input3 == input.upcase
					puts notsince
				else
					puts huh
				end
			else
				puts 'GOOD BYE!'
				break
			end
		else
			if input2 == input.upcase
				puts notsince
			else
				puts huh
			end
		end
	end
end