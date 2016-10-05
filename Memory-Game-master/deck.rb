class Deck

  def initialize(deck)
    @deck = deck
  end

  def number_of_cards_in_deck
    return @deck.length
  end

  def card_number(card)
    return @deck[card]
  end


end