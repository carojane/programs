def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |entry|
    if entry < smallest
      still_unsorted.push smallest
      smallest = entry
    else
      still_unsorted.push entry
    end
  end

  sorted.push smallest

  recursive_sort still_unsorted, sorted
end

puts(sort(['can', 'feel', 'singing', 'like', 'a', 'can']))
