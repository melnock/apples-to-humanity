class Card < ApplicationRecord
  has_many :hands
  has_many :players, through: :hands
  has_many :games, through: :hands
  has_many :rounds, :foreign_key => "black_card_id"
end
