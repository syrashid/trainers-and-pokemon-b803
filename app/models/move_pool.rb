class MovePool < ApplicationRecord
  belongs_to :pokemon
  belongs_to :move

  validates :move, uniqueness: { scope: :pokemon, message: "is already learned!"}
end
