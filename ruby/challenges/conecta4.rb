class Conecta4
    def initialize
        
    end

    def generate_board
        board = {
            row1: ["+", "+", "+", "+", "+", "+", "+"],
            row2: ["+", "+", "+", "+", "+", "+", "+"],
            row3: ["+", "+", "+", "+", "+", "+", "+"],
            row4: ["+", "+", "+", "+", "+", "+", "+"],
            row5: ["+", "+", "+", "+", "+", "+", "+"],
            row6: ["+", "+", "+", "+", "+", "+", "+"]
        }

        board.each_key do |x|
            puts board[x].join
        end
    end
end

game = Conecta4.new

game.generate_board