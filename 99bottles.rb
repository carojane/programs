bottles = 100
while true
	bottles = bottles - 1
	puts bottles.to_s + ' bottles of beer on the wall!'
	puts bottles.to_s + ' bottles of beer!'
	puts 'Take one down, pass it around,'
	puts (bottles - 1).to_s + ' bottles of beer on the wall!'
	puts
	if bottles == 1
		break
	end
end
puts
puts 'Why did you drink all my beer?'