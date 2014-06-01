puts 'I can tell you all the leap years that fall between any two years.'
puts
puts 'What is the first year?'
year1 = gets.to_i
puts 'What is the last year?'
year2 = gets.to_i
puts
puts 'The leap years between ' + year1.to_s + ' and ' + year2.to_s + ' are:'
while true
	year1 = ((year1) + (year1%4))
	puts year1
	if year1 <= (year2 - 4)
		if (year1%100) == 0
			if (year1%400) != 0 
				year1 = (year1 + 8)
			else
				year1 = (year1 + 4)
			end
		else
			year1 = (year1 + 4)
		end
	else
		break
	end
end
