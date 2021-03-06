defmodule PokedexApi.Router do
  use PokedexApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PokedexApi do
    get "/", TypeController, :hello
  end 
   scope "/api", PokedexApi do
     pipe_through :api
     resources "/types", TypeController, only: [:index]
     resources "/pokemons", PokemonController, except: [:new, :edit]
     resources "/fav", FavController, only: [:update]
     get "/evolutions/autocomplete", AutocompleteController, :index
   end
end
