bottlecount = 99

while bottlecount > 0 
  puts bottlecount.to_s + ' bottles of beer on the wall,'
  puts bottlecount.to_s + ' bottles of beer,'
  puts 'If one of those bottles should happen to fall,'
  bottlecount -= 1
  puts bottlecount.to_s + ' bottles of beer on the wall.'
  puts ''
end  