require 'minitest/autorun'
require('minitest/rg')
require_relative('../players')

class TestPlayers < MiniTest::Test

  def setup
    @player = Player.new("Ross")
  end

  def test_player_has_name
    assert_equal("Ross", @player.name)
  end

end
