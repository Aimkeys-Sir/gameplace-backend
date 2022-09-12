class PlayerController < Sinatra::Base

    set :default_content_type, 'application/json'


    get '/players' do
        Player.find(params[:id]).sessions.to_json
    end

    get '/players/:call' do
        player=Player.find_by(callsign: params[:call]) || Player.find_by(email: params[:call])
        return false.to_json if player==nil
        {
            **player.serializable_hash,
            sessions: [
                *player.sessions_data
            ],
            games:[
                *player.games_data
            ]
        }.to_json
    end

    post '/player' do
        Player.create(
            first_name:params[:first_name],
            last_name:params[:last_name],
            password:params[:password],
            birthday:params[:birthday],
            email:params[:email]
        )
    end

    patch '/player/:id' do
        player=Player.find(params[:id])
        player.update()
    end

end