module Players
  class Human < Player
    def move(board)
      puts "Please choose a position between (1,9):"
      input = gets.strip
      input
    end
  end
end
