def grandfather_clock &block
  
  hours = Time.now.hour

  if hours == 0
    dongs = 12
  elsif hours > 12
    dongs = hours - 12
  else 
    dongs = hours   
  end  

  dongs.times do 
    block.call
  end

end

grandfather_clock do
 puts 'DONG!'
end