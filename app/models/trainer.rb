class Trainer < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true

  has_many :pokemons, dependent: :destroy
end
