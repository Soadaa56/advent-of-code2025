f = File.open("input.txt", "r");
# f = File.open("test.txt", "r");

#         Part 1 solution
# dial = 50
# password = 0
# File.readlines(f).each do |line|
#   if line[0] == 'L'
#     dial -= line[1..].to_i
#   else
#     dial += line[1..].to_i
#   end

#   if dial % 100 == 0 
#     password += 1
#   end
# end 

#         Part 2 solution

class Solution
  attr_accessor :dial, :password

  def initialize(dial: 50, password: 0, file:)
    @dial = dial
    @password = password
    @file = file
  end

  def read_file
    File.readlines(@file).each do |line|
      if line[0] == 'L'
        decrement_dial(line[1..].to_i)
      else
        increment_dial(line[1..].to_i)
      end
      # pass_check()
    end
  end

  private

  def pass_check
    if dial % 100 == 0
      self.password += 1
    end
  end

  def increment_dial(rotate)
    rotate.times {
      @dial += 1
      pass_check()
    }
  end

  def decrement_dial(rotate)
    rotate.times {
      @dial -= 1
      pass_check()
    }
  end

end

solve = Solution.new(file: f)
solve.read_file
puts(solve.password)