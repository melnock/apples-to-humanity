class Round < ApplicationRecord
  belongs_to :game
  belongs_to :black_card_id

  def get_a_black_card
    @black_cards = Card.all.select{|card| card.black == true}
    @black_card = @black_cards.sample
    self.black_card_id = @black_card.id
  end

end
