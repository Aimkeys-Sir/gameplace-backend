class GameShopController < Sinatra::Base

    set :default_content_type, 'application/json'

    get '/gameshops' do
        GameShop.all.to_json 
    end

    get '/gameshops/:search' do
        GameShop.all.filter do |shop|
             shop.name.upcase.include?(params[:search].upcase) ||
             shop.location.upcase.include?(params[:search].upcase)
        end.to_json(:include => :games_uniq)
    end
end