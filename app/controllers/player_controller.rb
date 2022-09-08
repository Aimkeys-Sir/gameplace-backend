class PlayerController < Sinatra::Base

    set :default_content_type, 'application/json'

    get '/players' do
        Player.all.to_json
    end

    get '/players/:id' do
        player=Player.find(params[:id])
        {
            **player.serializable_hash,
            sessions: [
                *player.sessions_data
            ]
        }.to_json
    end
end