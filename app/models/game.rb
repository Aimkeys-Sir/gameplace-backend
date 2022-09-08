class Game < ActiveRecord::Base
    has_many :sessions
    has_many :players, through: :sessions
    has_many :game_shops, through: :sessions

    def gameshops
        self.game_shops.uniq
    end
end