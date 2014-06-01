puts 'What is your first name?'
first_name = gets.chomp
puts 'What is your middle name?'
middle_name = gets.chomp
puts 'What is your last name?'
last_name = gets.chomp
puts 'Your full name is ' + first_name + ' ' + middle_name + ' ' + last_name + '.'
puts 'Did you know there are ' + (first_name.length + middle_name.length + last_name.length).to_s + ' letters'
puts 'in your name, ' + first_name + ' ' + middle_name + ' ' + last_name + '?'
puts '(Except if you have more than one middle name or hyphens, apostrophes or other random characters.)'