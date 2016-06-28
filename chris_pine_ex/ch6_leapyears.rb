puts 'Let\'s find all the leap years between two years!'
puts ''
puts 'What\'s the starting year?'
start_year = gets.chomp.to_i
puts 'What\'s the ending year?'
end_year = gets.chomp.to_i
year_count = start_year
years = ""

while year_count <= end_year
  if year_count%100 == 0
    if year_count%400 == 0
      years += year_count.to_s + " "
    end
  elsif year_count%4 == 0
    years += year_count.to_s + " "
  end   
  year_count += 1 
end  

puts years
