$nestingDepth = 0
$space = ' '

def log descriptionOfBlock, &block

  puts $space*$nestingDepth + 'Beginning "' + descriptionOfBlock + '"...'
  $nestingDepth += 2
  blockReturn = block.call 
  $nestingDepth -= 2
  puts $space*$nestingDepth + '..."' + descriptionOfBlock + '" finished, returning: ' + blockReturn

end  

log 'outer block' do

  log 'inner block' do
    
    log 'innerest block' do
      'Let\'s Go Crazy!'
    end

    'The year is ' + Time.now.year.to_s
  end

  log 'last inner block' do 
    'I Would Die 4 U' 
  end  

  'Let\'s party like it\'s 1999!'
  
end