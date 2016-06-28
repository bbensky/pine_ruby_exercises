class OrangeTree

  def initialize
    @age = 0
    @height = 5
    @oranges = 0
  end  

  def height
    puts 'The tree is ' + @height.to_s + ' feet tall.'
  end  

  def oneYearPasses
    @age += 1

    if @age == 10
      puts 'The tree has expired.'
      exit
    else
      @height += 2
      if @age > 3
        @oranges = (@age * 1.5).to_i
      end  
    end  
  end

  def countTheOranges
    puts 'There are ' + @oranges.to_s + ' oranges on the tree.'
  end  

  def pickAnOrange
    if @oranges == 0
      puts 'There are no more oranges to pick this year.'
    else  
      puts 'That orange was delicious, wasn\'t it?'
      @oranges = @oranges - 1
    end

  end  

end  

tree = OrangeTree.new
tree.countTheOranges
tree.pickAnOrange
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.countTheOranges
tree.pickAnOrange
tree.pickAnOrange
tree.pickAnOrange
tree.pickAnOrange
tree.height
tree.pickAnOrange
tree.pickAnOrange
tree.pickAnOrange
tree.pickAnOrange
tree.oneYearPasses
tree.countTheOranges
tree.pickAnOrange
tree.oneYearPasses
tree.countTheOranges
tree.pickAnOrange
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses