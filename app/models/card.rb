class Card < ApplicationRecord
  has_many :hands
  has_many :players, through: :hands
  has_many :games, through: :hands
  has_many :rounds, :foreign_key => "black_card_id"

  def choose_img
    ["chemistry-joke.jpg", "Earth-in-Chains.jpg", "image-22.png", "little-horse-joke.jpg", "Star-Wars-Jokes-6-Edited.jpg"].sample
  end
end
