class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.decimal :price, precision: 15, scale: 8
      t.integer :base_experience
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
