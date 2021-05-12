require_relative 'stepable.rb'
require_relative "piece.rb"

class King < Piece

    include Stepable

    def symbol
        "K".colorize
    end

    def move_diffs
        []


end