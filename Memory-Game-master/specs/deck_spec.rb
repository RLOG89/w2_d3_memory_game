require 'minitest/autorun'
require('minitest/rg')
require_relative('../deck')

class TestDeck < MiniTest::Test

  def setup
    cards = ["cat", "cat", "dog", "dog", "bird", "bird"]
    @deck = Deck.new(cards)
  end

  def test_deck_should_have_6_cards
    assert_equal(6, @deck.number_of_cards_in_deck)
  end

  def test_what_is_card_3
    assert_equal("dog", @deck.card_number(3))
  end


end