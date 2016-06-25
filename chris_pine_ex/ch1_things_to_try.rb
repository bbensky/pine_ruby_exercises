def hours_in_year
  total = 24 * 365
  puts "There are #{total} hours in a year."
end 

def minutes_in_decade
  total = 60 * 24 * 365 * 10
  puts "There are #{total} minutes in a decade."
end   

def seconds_alive_on_June_23_2016_1017pm
  total = (37 * (365 + 26)) * 24 * 60 * 60
  puts "I've been alive for #{total} seconds."
end 

def million_seconds_old
  total = 1246000000 / 60 / 60 / 24 / 365
  puts "If I am 1246 million seconds old, I am #{total} years old."
end  

hours_in_year
minutes_in_decade
seconds_alive_on_June_23_2016_1017pm
million_seconds_old