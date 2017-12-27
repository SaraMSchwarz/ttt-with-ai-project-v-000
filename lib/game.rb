class Game

  attr_accessor :board, :player_1, :player_2, :token

  WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [1,4,7],
  [2,5,8],
  [0,3,6],
  [6,4,2]
]

  def initialize(player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"), board = Board.new)
    @player_1 = player_1
    @player_2 = player_2
    @board = board
  end

  def current_player
    @board.turn_count.even? ? player_1 : player_2
  end

  def over?
    board.full?
  end

  def won?
    winning_array = []
      WIN_COMBINATIONS.each do |win_combination|
        position_1 = @board.cells[win_combination[0]]
        position_2 = @board.cells[win_combination[1]]
        position_3 = @board.cells[win_combination[2]]
        if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
         winning_array = win_combination
        end
      end
      winning_array.empty? ? false : winning_array
  end

  def draw?
    !won? && over?
  end

  def winner
    board.position(won?[0] + 1) if won?
  end

  def turn
    puts "Please enter 1-9:"
    user_input = self.current_player.move(@board)

    if @board.valid_move?(user_input) == true
      @board.update(user_input, self.current_player)
      @board.display
    else
      turn
    end
  end

  def play
    while !draw? && !won?
      sleep(1)
      turn
    end
      if won?
        puts "Congratulations #{winner}!"
      elsif draw?
        board.display
        puts "Cat's Game!"
     end
  end

end
