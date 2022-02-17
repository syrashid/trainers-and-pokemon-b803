class Move < ApplicationRecord
  has_many :move_pools, dependent: :destroy
  has_many :pokemons, through: :move_pools
end
