command = ''
bye_count = 0

while bye_count != 3 
  command = gets.chomp
  if (command == command.upcase && command != 'BYE')
    puts 'NO, NOT SINCE ' + rand(1930..1950).to_s + '!'
    bye_count = 0
  elsif command != 'BYE'
      puts 'HUH?!  SPEAK UP, SONNY!'
      bye_count = 0
  else
    bye_count += 1
  end
end  