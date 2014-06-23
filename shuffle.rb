def shuffle arr
  rec_shuffle arr, []
end

def rec_shuffle unshuffled, shuffled
  x = unshuffled.length
  if x <= 0
    return shuffled
  end

  random = rand(0...x)
  random = unshuffled.delete_at(random)
  shuffled.push random
  rec_shuffle unshuffled, shuffled
end

puts(shuffle(['hello', 'amazing', 'what!', 'no', 'Mario']))
