# PokedexApi

API RESTFul created with Elixir, Phoenix framework and PostgreSQL

To start Pokedex API:

  * Install [Elixir](http://elixir-lang.org/install.html) and [Node.js](https://nodejs.org/en/)
  * Install Hex, package manager for Erlang `mix local.hex`
  * Install Phoenix `mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez`
  * Install dependencies with `mix deps.get`
  * Install Node.js dependencies with `npm install`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Start Phoenix endpoint with `mix phoenix.server`

Configure PostgreSQL database
For development, it has been assigned  user `postgres` and pass `postgres`.
For production , it's needed to set up environment variables:
 - `HOSTNAME` is the hostname where app is running
 - `POOL_SIZE` is the number of available connections for the database
 - `SECRET_KEY_BASE` generated by `mix phoenix.gen.secret`
 - `DATABASE_URL`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser. To run tests: `mix test`

Try http://pokedex-watch.herokuapp.com/

#### Endpoints List           
`GET     /api/types `: Get list of Pokemon types.
`GET     /api/pokemons?p=&q=&f=`: Get list of Pokemons (data is paginated),  `p` is the page, `q` is search by name param and due to the presence of `f`, only favourites pokemons are listed.

`GET     /api/pokemons/:id`: Get one Pokemon by ID.   
`POST    /api/pokemons`: create Pokemon.     
`PUT     /api/pokemons/:id`: update Pokemon.
`DELETE  /api/pokemons/:id `: delete Pokemon.
`PATCH   /api/fav/:id `: do or undo favourite.            
           








