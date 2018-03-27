class Game < ApplicationRecord
  has_many :deals
  has_many :players, through: :deals
  has_many :cards, through: :deals
  has_many :rounds
  validates :name, :desired_group_size, :desired_number_of_rounds, presence: true


  def group_size
    find_all_deals
    if self.desired_group_size == small
      @deals.length <= 5 && @deals.length >= 3
    elsif self.desired_group_size == medium
      @deals.length <= 8 && @deals.length >= 6
    else
      @deals.length <= 11 && @deals.length >= 9
    end
  end

  def start_a_game
    find_all_deals
    @deals.each{|deal| 7.times do deal.deal_a_card end}
    self.number_of_rounds.times do
      round = Round.create(game_id: self.id)
      round.get_a_black_card
    end
  end

  def number_of_rounds
    if self.desired_number_of_rounds == short
      @round_number = 8
    elsif self.desired_number_of_rounds == medium
      @round_number = 14
    else
      @round_number = 20
    end
  end

  private

  def find_all_deals
    @deals = Deal.all.select{|deal| deal.game == self}
  end
end
