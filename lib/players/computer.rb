module Players
  class Computer::Easy < Player

  def move(array)
    valid_moves = []
    i = 0
    until i > 8
      if array.valid_move?(i) == true
         valid_moves << i
      end
         i += 1
     end
     valid_moves.sample.to_s
    end
  end

  class Computer::Hard < Player

  def move(array)
    valid_moves = []
    i = 0
    until i > 8
      if array.valid_move?(i) == true
         valid_moves << i
      end
      i += 1
    end
  #return one of the high value targets
    array_high_values = [0, 2, 4, 6, 8]
  #saves the value as high_value variable
    high_value = array_high_values.detect do |value|
  #tests if the array being called upon has the value
      valid_moves.include?(value)
    end

    if high_value == nil




    end
    end
  end
end
