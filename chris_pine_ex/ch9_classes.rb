=begin

a = Array.new + [12345]
b = String.new + 'hello'
c = Time.new

puts 'a = ' + a.to_s
puts 'b = ' + b.to_s
puts 'c = ' + c.to_s



time = Time.new
time2 = time + 60

puts time
puts time2

≈

puts Time.mktime(2000, 1, 1)
puts Time.mktime(1976, 8, 3, 10, 11)



puts Time.mktime(1979, 5, 27) - Time.mktime(1976, 8, 2)


colorArray = []
colorHash = {}

colorArray[0] = 'red'
colorArray[1] = 'green'
colorArray[2] = 'blue'
colorHash['strings'] = 'red'
colorHash['numbers'] = 'green'
colorHash['keywords'] = 'blue'

colorArray.each do |color|
  puts color
end  
colorHash.each do |codeType, color|
  puts codeType + ': ' + color
end  



weirdHash = Hash.new

weirdHash[12] = 'monkeys'
weirdHash[[]] = 'emptiness'
weirdHash[Time.new] = 'no time like the preset'

puts weirdHash



class Integer
  def to_eng
    if self == 5 
      english = 'five'
     else     
      english = 'fifty-eight'
    end

    english
  end 
end   

puts 5.to_eng
puts 58.to_eng



class Die

  def roll
    1 + rand(6)
  end 

end   

dice = [Die.new, Die.new]

dice.each do |die|
  puts die.roll
end



class Die

  def roll
    @numberShowing = 1 + rand(6)
  end  

  def showing
    @numberShowing
  end
    
end  

die = Die.new
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing


class Die

  def roll
    @numberShowing = 1 + rand(6)
  end  

  def showing
    @numberShowing
  end
    
end  

puts Die.new.showing



class Die

  def initialize
    roll
  end
  
  def roll
    @numberShowing = 1 + rand(6)
  end  

  def showing
    @numberShowing
  end  
end 

puts Die.new.showing 


class Die

  def initialize
    roll
  end
  
  def roll
    @numberShowing = 1 + rand(6)
  end  

  def showing
    @numberShowing
  end 

  def cheat number
    @numberShowing = number
  end  

end 

puts "What number would you like the die to have?"
number = gets.chomp.to_i
if number > 6 
  puts 'The number must be less than 6.'
  number = gets.chomp
end
dice = Die.new
dice.cheat number
puts dice.showing

=end

class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly     = 10  # He's full.
    @stuffInIntestine =  0  # He doesn't need to go.

    puts @name + ' is born.'
  end

  def feed
    puts 'You feed ' + @name + '.'
    @stuffInBelly = 10
    passageOfTime
  end

  def walk
    puts 'You walk ' + @name + '.'
    @stuffInIntestine = 0
    passageOfTime
  end

  def putToBed
    puts 'You put ' + @name + ' to bed.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + ' snores, filling the room with smoke.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' wakes up slowly.'
    end
  end

  def toss
    puts 'You toss ' + @name + ' up into the air.'
    puts 'He giggles, which singes your eyebrows.'
    passageOfTime
  end

  def rock
    puts 'You rock ' + @name + ' gently.'
    @asleep = true
    puts 'He briefly dozes off...'
    passageOfTime
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  private

  # "private" means that the methods defined here are
  # methods internal to the object.  (You can feed
  # your dragon, but you can't ask him if he's hungry.)

  def hungry?
    # Method names can end with "?".
    # Usually, we only do this if the method
    # returns true or false, like this:
    @stuffInBelly <= 2
  end

  def poopy?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0
      # Move food from belly to intestine.
      @stuffInBelly     = @stuffInBelly     - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else  # Our dragon is starving!
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' is starving!  In desperation, he ate YOU!'
      exit  # This quits the program.
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Whoops!  ' + @name + ' had an accident...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + '\'s stomach grumbles...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' does the potty dance...'
    end
  end

end

pet = Dragon.new 'Norbert'
pet.feed
pet.toss
pet.walk
pet.putToBed
pet.rock
pet.putToBed
pet.putToBed
pet.putToBed
pet.putToBed

