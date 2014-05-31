puts 'Hello. What is your favorite number?'
fav_num = gets.chomp
puts 'Your favorite number is ' + fav_num + '.'
puts 'Don\'t you think ' + (fav_num.to_i + 1).to_s + ' is a better favorite number?'