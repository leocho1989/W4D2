

require_relative 'board.rb'
require 'colorize'

class Piece

    def initialize
        @board = board
        @color = color
        @pos = pos
    end

    def to_s
    end

    def empty?
    end

    def valid_moves?
    end

    def pos=(val)
    end

    def move_into_check?(end_pos)
    end




end