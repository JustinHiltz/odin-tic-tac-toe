module TicTacToe
  class Board
  	attr_reader :grid
    def initialize(input = {})
      @grid = input.fetch(:grid, default_grid)
    end

    def get_cell(x, y)
      grid[y][x]
    end

    private

    def default_grid
      Array.new(3) { Array.new(3) { Cell.new } }
    end
  end
end