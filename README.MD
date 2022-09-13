
# The Aimkeys Gameplace Backend
The backend employs Sinatra and active record gems to manage the **Aimkeys Gameplace** app. 
Four models are used to map the data.
- `Player`
- `Game`
- `Gameshop`
- `Session`

## Associations
A `session` belongs to `Player`,`Game` and `Gameshop`
A `Game` has many `Players` through sessions and vice versa
A `GameShop` has many `Players` through sessions and vice versa
A `Player` has many `Games` through sessions and vice versa

## End points
### GET
- [/players]() list of all players
- [/players/:call]() Queries for a player by call sign or email
- [/games]()
- [/games/:id]() includes gameshops

### Post
- [/player]()
- [/ticket/game_id/player_id]() 

### Patch
- [/player/id]()
-[/credits/:id]()
