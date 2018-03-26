class Game < ApplicationRecord
<<<<<<< HEAD
  has_many :hands
=======
  has_many :deals
>>>>>>> 4011ec8bc46ba23a2cbc74bd0b1ec382970cffd5
  has_many :players, through: :deals
  has_many :cards, through: :deals
  has_many :rounds
end
