class Board
  attr_accessor :cells

  def initialize
    @cells = Array.new(9, " ")
  end

  def reset!
    cells.clear
    self.cells = Array.new(9, " ")
  end

  def display
    puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
    puts "-----------"
    puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
    puts "-----------"
    puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
  end

  def position(user_input)
    @cells[user_input.to_i - 1]
  end

  def full?
    !self.cells.include?(" ")
  end

  # def turn_count
  #   count = 0
  #   board.each do |move|
  #     if move == "X" || move == "O"
  #       count += 1
  #     end
  #   end
  #   count
  # end
  def turn_count
    self.cells.count {|cell| cell == "X" || cell == "O"}
  end

  def taken?(user_input)
    self.position(user_input) != " " ? true : false
  end

  def valid_move?(user_input)
    !taken?(user_input) && user_input.to_i.between?(1, 9)
  end

  def update(user_input, player)
    @cells[user_input.to_i - 1] = player.token
  end


end
