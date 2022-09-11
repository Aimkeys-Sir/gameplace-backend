class GameController < Sinatra::Base
    set :default_content_type, 'application/json'

    get '/games' do
        Game.all.to_json(:include=>{:gameshops =>{:only=>[:name,:location,:id]}})
    end

    get '/game/:id' do
        Game.find(params[:id]).to_json
    end

    get '/games/:name' do
        Game.find_by(name: params[:name]).to_json(include: :game_shops)
    end

    get '/games/prices/:price' do
        Game.where("price<?",params[:price])
        .to_json(:include=>{:gameshops =>{:only=>[:name,:location]}})
    end

    patch '/game/:id' do
      updated_game=  Game.find(params[:id])
      params.map do |param,value| 
        [param,value||updated_game[param]]
      end
      pp params
      updated_game.update(
            name: params[:name],
           min_age: params[:min_age],
           min_health:params[:min_health],
           min_level: params[:min_level],
           price: params[:price],
           play_time: params[:play_time],
           teams:params[:teams] 
        )
        updated_game.to_json
    end

    post '/game' do
      new_game=  Game.create(
           name: params[:name],
           min_age: params[:min_age],
           min_health:params[:min_health],
           min_level: params[:min_level],
           price: params[:price],
           play_time: params[:play_time],
           teams:params[:teams] 
        )
        new_game.to_json
    end

end