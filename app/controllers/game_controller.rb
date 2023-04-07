class GameController < ApplicationController
    def index
        @board = Board.last || Board.create(title: 'Game', state: ['']*9)
      end
end
