def engnum number
  if number == 0
    return "zero"
  end

  english = ""

  left  = number
  write = left / 1000000000000
  left  = left % 1000000000000

  trillion = hundnum write
  english = english + trillion + "trillion"

  if left > 0
    english = english + " "
  end

  left  = number
  write = left / 1000000000
  left  = left % 1000000000

  billion = hundnum write
  english = english + billion + "billion"

  if left > 0
    english = english + " "
  end

  left  = number
  write = left / 1000000
  left  = left % 1000000

  million = hundnum write
  english = english + million + "million"

  if left > 0
    english = english + " "
  end

  left  = number
  write = left / 1000
  left  = left % 1000

  thousand = hundnum write
  english = english + thousand + "thousand"

  if left > 0
    english = english + " "
  end

  english
end

def hundnum number

  ones = ["one", "two", "three",
          "four", "five", "six",
          "seven", "eight", "nine"]
  tens = ["ten", "twenty", "thirty",
          "forty", "fifty", "sixty",
          "seventy", "eighty", "ninety"]
  teen = ["eleven", "twelve", "thirteen",
          "fourteen", "fifteen", "sixteen",
          "seventeen", "eighteen", "nineteen"]

  left  = number
  write = left / 100
  left  = left % 100

  if write > 0
    english = english + ones[write-1] + " hundred"

    if left > 0
      english = english + " "
    end
  end

  write = left / 10
  left  = left % 10

  if write > 0
    if ((write == 1) and (left > 0))
      english = english + teen[left-1]
      left = 0
    else
      english = english + tens[write-1]
    end
    if left > 0
      english = english + "-"
    end
  end

  write = left
  left  = 0

  if write > 0
    english = english + ones[write-1]
  end

  english
end



puts engnum(  0)
puts engnum(  9)
puts engnum( 10)
puts engnum( 11)
puts engnum( 17)
puts engnum( 32)
puts engnum( 88)
puts engnum( 99)
puts engnum(100)
puts engnum(101)
puts engnum(234)
puts engnum(3211)
puts engnum(999999)
