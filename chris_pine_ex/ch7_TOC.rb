toc_array = [['Chapter 1:  Numbers', 'page 1'], ['Chapter 2:  Letters', 'page 72'], ['Chapter 3:  Variables', 'page 118']]

lineWidth = 50
puts 'Table of Contents'.center(lineWidth)
puts ''
toc_array.each do |i|
  puts i[0].ljust(lineWidth/2) + i[1].rjust(lineWidth/2)
end
