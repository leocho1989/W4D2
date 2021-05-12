require 'singleton'
require_relative "piece.rb"

class NullPiece < Piece

    include Singleton

    def initialize

    end

    def empty?
    end

    def moves
    end


    
end

#color and symbol