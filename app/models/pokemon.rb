class Pokemon < ApplicationRecord
  belongs_to :trainer
  has_many :move_pools, dependent: :destroy
  has_many :moves, through: :move_pools

  validates :name, :image_url, presence: true
end
