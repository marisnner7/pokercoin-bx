namespace :pokemons do
  desc "Makes manipulations with pokemons!"
  SATOSHI = 0.00000001
  BASE_URL = "https://pokeapi.co/api/v2/pokemon?limit=1126"
  IMAGE_PATH = "https://assets.pokemon.com/assets/cms2/img/pokedex/full/"

  task :collect => :environment do
      puts "Scrapping from PokeApi!"
      pokemon_names = get_all_pokemon_names(BASE_URL)
      save_pokemon_to_database(pokemon_names)
  end

  def get_all_pokemon_names(url)
      response = RestClient.get(BASE_URL)
      JSON.parse(response)['results']
  end

  def save_pokemon_to_database(pokemons)
      puts "Saving all pokemon to database!"

      # The exchange is just a holder for the Pokemon, so we don't need to access it via email:password
      @user = User.where(
          name: "PokéCoin",
          email: 'pokecoin@example.com',
          password: "12345678"
      ).first_or_create

      pokemons.each do |pokemon|
          begin
            pokemon_data = JSON.parse(RestClient.get(pokemon['url']))
            pokemon_price = pokemon_data['base_experience'].to_i * SATOSHI
            pokemon_id = "%03d" % pokemon_data['id']

            puts "Saving #{pokemon['name'].capitalize}"
          
            @user.pokemons.create!(
                {
                    name: pokemon['name'].capitalize,
                    base_experience: pokemon_data['base_experience'],
                    price: pokemon_price.round(9)
                }
            )
          rescue => e
              puts "Error saving #{pokemon['name'].capitalize}"
          end
      end
  end
end
