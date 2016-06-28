puts 'What year were your born?'
year_born = gets.chomp
puts
puts 'What month (number) were you born?'
month_born = gets.chomp
puts
puts 'What day (number) were you born?'
day_born = gets.chomp

birth_seconds = Time.new - Time.mktime(year_born, month_born, day_born)  
years_old = birth_seconds / 60 / 60 / 24 / 365

i = 1

while i <= years_old do
  puts 'SPANK!'
  i += 1
end  