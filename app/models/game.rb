class Game < ApplicationRecord
  has_many :hands
  has_many :players, through: :deals
  has_many :cards, through: :deals
  has_many :rounds
end
