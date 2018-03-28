class Player < ApplicationRecord
  has_many :deals
  has_many :games, through: :deals
  has_many :cards, through: :deals
  has_secure_password
  validates :username, presence: true

  def game_score
    @game_score
  end

  def game_score=(score)
    @game_score+= score
  end

end
