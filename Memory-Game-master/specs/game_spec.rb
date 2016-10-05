require ('minitest/autorun')
require('minitest/rg')
require_relative ('../game')
require_relative('../players')
require_relative('../deck')

class TestGame < MiniTest::Test

def setup
  # card1 = Card.new("cat")
  cards = ["cat", "cat", "dog", "dog", "bird", "bird"]

  @player_1 = Player.new("Ross")
  @player_2 = Player.new("Claudia")

  @players = [@player_1, @player_2]

  @game = Game.new(@players, cards)

end

  def test_game_starts_with_two_players
    assert_equal(2, @game.number_of_players)
  end

  def test_player_picks_two_cards
    assert_equal(["cat","dog"], @game.pick_two_cards(0, 3))
  end

  def test_check_both_cards_are_equal
    assert_equal(true, @game.check_if_both_cards_are_equal(0, 1))
    assert_equal(false, @game.check_if_both_cards_are_equal(2, 5))
  end


end
