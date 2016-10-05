require('pry-byebug')
class Game

  def initialize (players, cards)
    @players = players
    @cards = cards
  end

  def number_of_players()
    return @players.length
  end

  def pick_two_cards(card_1_index, card_2_index)
    array = []
    array.push(@cards[card_1_index])
    array.push(@cards[card_2_index])
    return array
  end

  def check_if_both_cards_are_equal(card_1_index, card_2_index)
    cards = pick_two_cards(card_1_index, card_2_index)
    if cards[0] == cards[1]
      return true
    else 
      return false
    end
  end

end