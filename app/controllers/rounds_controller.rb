class RoundsController < ApplicationController

    @@choices = {}

  def new
    find_game
    if @game.rounds.empty?
      @game.start_a_game
    end
  end

  def create
    @round = Round.new(round_params)
    @round.save
  end

  def show
    find_game
    find_round
    find_i
    @game.change_leader(@i)
    @leader = @game.choose_leader(@i)
    find_cards_for_player
    @black_card = Card.find(@round.black_card_id)
  end

  def edit
    find_game
    find_round
    find_i
    @leader = @game.choose_leader(@i)
    @black_card = Card.find(@round.black_card_id)
    @@choices[current_user.id] = params[:card_id]
    @choices = @@choices
  end

  private

  def find_cards_for_player
    @deal = Deal.all.find {|deal| deal.player == current_user && deal.game == @game}
    @hands = Hand.all.select {|hand| hand.deal_id == @deal.id}
    @cards = @hands.map{|h| h.card}
  end

  def find_i
    @i = 0
    if @i < @game.players.length
      @i = @game.rounds.index(@round)
    elsif @i < (@game.players.length * 2)
      @i = @game.rounds.index(@round) - @game.players.length
    elsif @i < (@game.players.length * 3)
      @i = @game.rounds.index(@round) - (@game.players.length * 2)
    end
  end

  def find_game
    @game = Game.find(params[:game_id])
  end

  def find_round
    @round = Round.find(params[:id])
  end

  def round_params
    params.require(:round).permit(:game_id, :black_card_id)
  end

end
