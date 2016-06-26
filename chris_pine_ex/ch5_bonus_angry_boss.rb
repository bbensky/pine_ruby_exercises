def angry_boss
  puts 'What do you want?'
  answer = gets.chomp.upcase
  puts 'WHADDYA MEAN "' + answer + '"?!? YOU\'RE FIRED!!'
end

angry_boss