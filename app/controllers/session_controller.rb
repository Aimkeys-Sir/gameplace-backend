class SessionController < Sinatra::Base
    set :default_content_type, 'application/json'

    post '/ticket' do
        Session.create(
            player_id:params[:player_id],
            game_id:params[:game_id],
            game_shop_id:params[:game_shop_id],
            play_time:params[:time],
            amount:params[:amount]
        )
    end
    get '/tickets' do
       tickets= Player.find(params[:player_id])
    #    .sessions.filter{|session| session.game_id==params[:game_id]}.to_json
       
    end
end