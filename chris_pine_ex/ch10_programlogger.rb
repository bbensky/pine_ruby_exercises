def log descriptionOfBlock, &block

  puts 'Beginning "' + descriptionOfBlock + '"...'

  blockReturn = block.call 

  puts '..."' + descriptionOfBlock + '" finished, returning: ' + blockReturn

end  

log 'outer block' do

  log 'inner block' do
    'The year is ' + Time.now.year.to_s
  end

  log 'another inner block' do
    'Let\'s Go Crazy!'
  end

  'Let\'s party like it\'s 1999!'
  
end