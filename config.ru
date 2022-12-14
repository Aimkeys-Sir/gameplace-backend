require_relative './config/environment.rb'


use Rack::Cors do
    allow do
        origins '*'
        resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
    end
end

use Rack::JSONBodyParser

use SessionController
use PlayerController
use GameShopController
run GameController