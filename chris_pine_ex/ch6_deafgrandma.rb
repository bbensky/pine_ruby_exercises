command = ''

while command != 'BYE' 
  command = gets.chomp
  if (command == command.upcase && command != 'BYE')
    puts 'NO, NOT SINCE ' + rand(1930..1950).to_s + '!'
  else
    if command != 'BYE'
      puts 'HUH?!  SPEAK UP, SONNY!'
    end
  end
end  