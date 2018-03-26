class Game < ApplicationRecord
  has_many :hands
  has_many :players, through: :hands
  has_many :cards, through: :hands
  has_many :rounds
end
