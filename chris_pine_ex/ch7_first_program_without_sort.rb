word_array = []
word = "holder"

while word != ""
  word = gets.chomp
  word_array.push word.downcase
end



i=0
while i < word_array.length
  i2=i+1
  while i2 < word_array.length
    if word_array[i] > word_array[i2]
      word_array[i], word_array[i2] = word_array[i2], word_array[i]
    end
    i2 += 1
  end  
  i += 1
end  


puts word_array