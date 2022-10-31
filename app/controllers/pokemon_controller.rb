class PokemonController < ApplicationController

before_action :fetch_pokemon, only: [:show, :checkout, :buy, :sell]
before_action :fetch_bitcoin_price, only: [:show, :checkout, :buy, :sell]


  def index
    @pokemons = Pokemon.all
  end

  def show; end

  def checkout; end

  def buy
    handle_transaction(Transaction::OPERATIONS[:buy])
    redirect_to root_path
  end
  
  def sell
    handle_transaction(Transaction::OPERATIONS[:sell])
    redirect_to root_path
  end

  def handle_transaction(operation)

    if Transaction::OPERATIONS[:buy].equal?(operation)
      @price_in_usd = -@price_in_usd
    end

    User.transaction do
      @user = User.first
      @user.update(balance: @user.balance)
      @pokemon.update(last_sell_price: @price_in_usd)

      Transaction.new(
        action: operation[:action],
        pokemon_id: @pokemon.id,
        amount: @price_in_usd,
        user_id: @user.id
      ).save!
    end
  end

  def fetch_pokemon
    @pokemon = Pokemon.find(params[:id])
  end

  def fetch_bitcoin_price
    @price_in_usd, @btc_price = TickerService.new(pokemon_price: @pokemon.price).call
  end

end
