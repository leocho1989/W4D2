require_relative 'piece'



class Board
    attr_reader :board

    def initialize
        @board = Array.new(8) {Array.new(8, nil)}
        # @null_piece = NullPiece.new
        start_pieces
        
    end

    def start_pieces
        (0...@board.size).each do |i|
            @board[0][i] = Piece.new
            @board[1][i] = Piece.new
            @board[6][i] = Piece.new
            @board[7][i] = Piece.new
        end
    end

    def [](pos)
        row, col = pos
        @board[row][col]
    end

    def []=(pos,val)
        @board[pos]=val
    end

    def move_piece(start_pos,end_pos)
        
        begin
            @board[start_pos] , @board[end_pos] = @board[end_pos] , @board[start_pos]
        rescue => exception
            puts "no piece at starting position or piece cannot move to end position"
        end
    end
end



#knight MOVES = [[-1,-2],[-2,-1],[-2,1],[-1,2],[1,-2],[2,-1],[2,1],[1,2]]
# bishop diagonally
# rook up/down
# queen up/down + diagonally
# king move anywhere 1 spot 
# pawn 

# 1 2 3 4 5 6 7 8 
# 9 1 1 2 3 4 5 6




# 1 2 3 4 5 6 7 8 
# 9 1 1 2 3 4 5 6 