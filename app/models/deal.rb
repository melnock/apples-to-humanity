class Deal < ApplicationRecord
  belongs_to :player
  belongs_to :game
  has_many :hands
  has_many :cards, through: :hands
  
end
