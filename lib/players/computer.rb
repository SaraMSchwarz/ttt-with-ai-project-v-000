module Players
  class Computer < Player

    def for_the_win(board)
            WIN_COMBINATIONS.each do |combo|
                if board.cells[combo[0]] == board.cells[combo[1]] && board.cells[combo[2]] == " " && board.cells[combo[0]] == self.token
                    @i = combo[2]
                elsif board.cells[combo[1]] == board.cells[combo[2]] && board.cells[combo[0]] == " " && board.cells[combo[0]] == self.token
                    @i = combo[0]
                elsif board.cells[combo[0]] == board.cells[combo[2]] && board.cells[combo[1]] == " " && board.cells[combo[0]] == self.token
                    @i = combo[1]
                else
                    nil
                end
    end
  end

# #first move always middle (5), check if position is taken
# def move(board)
#   move = nil
# #if middle square is empty, we want to take middle square
#   if array[5].empty?
#     return move = "5"
#   elsif board.turn_count == 1
#     return move = ["1", "3", "7", "9"].sample
#   elsif board.turn_count == 2
# #we want to find the first index that is not taken
#     return move = ["1", "3", "7", "9"].detect {|i| !board.taken?(i)}
# #turn_count 3, then start checking win_combinations and tracking and check if there
# #are two squares
# end
#
#
#
#
#   def move(board)
#     valid_moves = []
#     i = 0
#     until i > 8
#       if board.valid_move?(i) == true
#          valid_moves << i
#       end
#          i += 1
#      end
#      valid_moves.sample.to_s
#     end
#   end
# end



#   class Computer::Hard < Player
#
#   def move(array)
#     valid_moves = []
#     i = 0
#     until i > 8
#       if array.valid_move?(i) == true
#          valid_moves << i
#       end
#       i += 1
#     end
#   #return one of the high value targets
#     array_high_values = [0, 2, 4, 6, 8]
#   #saves the value as high_value variable
#     high_value = array_high_values.detect do |value|
#   #tests if the array being called upon has the value
#       valid_moves.include?(value)
#     end
#
#     if high_value == nil
#
#
#
#
#     end
#     end
#   end
# end
