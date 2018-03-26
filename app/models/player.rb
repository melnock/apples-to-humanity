class Player < ApplicationRecord
  has_many :deals
  has_many :games, through: :deals
  has_many :cards, through: :deals
  
end
