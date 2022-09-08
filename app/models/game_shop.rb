class GameShop < ActiveRecord::Base
   has_many :sessions
   has_many :games, through: :sessions
   has_many :players, through: :sessions

   def games_uniq
      self.games.uniq
   end
end