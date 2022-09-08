class Player < ActiveRecord::Base
    has_many :sessions
    has_many :games, through: :sessions
    has_many :game_shops, through: :sessions

    def sessions_data
        self.sessions.map do |session| 
            {
                game:session.game.name,
                time: session.play_time,
                booked_at:session.created_at,
                shop:session.game_shop.name,
                shop_location:session.game_shop.location
            }
        end
    end
end