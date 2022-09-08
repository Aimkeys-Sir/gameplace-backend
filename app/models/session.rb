class Session < ActiveRecord::Base
    belongs_to :player
    belongs_to :game_shop
    belongs_to :game
end