require "spec_helper"

module TicTacToe
  describe Board do 

    context "#initialize" do
      it "initializes the board with a grid" do
        expect { Board.new(grid: "grid") }.to_not raise_error
      end
    end

    context "grid" do
      it "returns the grid" do
        board = Board.new(grid: "blah")
        expect(board.grid).to eq "blah"
      end
    end

    context "#get_cell" do
      it "returns the cell based on the (x, y) coordinates" do
        grid = [["", "", ""], ["", "", "Something"], ["", "", ""]]
        board = Board.new(grid: grid)
        expect(board.get_cell(2, 1)).to eq "Something"
      end
    end

  end
end