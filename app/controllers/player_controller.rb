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
       player=Player.create(
            first_name:params[:first_name],
            last_name:params[:last_name],
            password:params[:password],
            birthday:params[:birthday],
            email:params[:email],
            callsign:params[:callsign],
            level:0,
            credits:300
        )
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

    patch '/player/:id' do
        player=Player.find(params[:id])
        player.update(
            first_name:params[:first_name],
            last_name:params[:last_name],
            callsign:params[:callsign]
        )
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

    patch '/credits/:id' do
        player=Player.find(params[:id])
        player.update(
         credits:params[:credits]
        )
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

end