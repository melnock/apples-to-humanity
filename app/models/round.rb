class Round < ApplicationRecord
  belongs_to :game
  belongs_to :black_card_id
end
