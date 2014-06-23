def roman_numeral number
  thous = (number        / 1000)
  hund  = (number % 1000 /  100)
  tens  = (number % 100  /   10)
  ones  = (number % 10         )

thous = "M" * thous

  def test(x, one, five, ten)
    if x == 0
      ""
    elsif x == 4
      one + five
    elsif x == 9
      one + ten
    elsif x > 5
      five + (one * (x-5))
    else
      one * x
    end
  end

  roman = [thous,
           test(hund, "C", "D", "M"),
           tens = test(tens, "X", "L", "C"),
           ones = test(ones, "I", "V", "X")]

  roman = number.to_s + " is " + roman.join.to_s + " in Roman Numerals."

end

puts "Choose a number between 1 and 3000."
puts (roman_numeral(gets.to_i))

