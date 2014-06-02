chapter = [['1', 'Getting Started', ' 1'], ['2', 'Numbers', ' 9'], ['3', 'Letters', '13']]

line_width = 54
puts 'Table of Contents'.center(line_width)
puts

chapter.each do |chap|
puts (('Chapter ' + chap[0] + ':  ') + chap[1]).ljust(line_width/2) + ('page ' + chap[2]).rjust(line_width/2)
end

# OMG this took forever to figure out! :)