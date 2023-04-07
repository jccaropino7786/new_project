class GameController < ApplicationController
    def index
        @board = Board.last || Board.create(title: 'Game', state: ['']*9)
      end

      def play
        board = Board.last
        state = board.state
        i, j = params[:i].to_i, params[:j].to_i
    
        # check if move is valid
        if state[i*3 + j] == ''
          # update board state with player's move
          state[i*3 + j] = (board.title == 'Game') ? 'X' : 'O'
          board.update(state: state)
    
          # switch to other player's turn
          board = Board.create(title: (board.title == 'Game') ? 'Player 2' : 'Game', state: state)
        end
    
        redirect_to game_index_path
      end
      
end
