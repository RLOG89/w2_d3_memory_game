require ('minitest/autorun')
require('minitest/rg')
require_relative ('../cards')

class TestCards < MiniTest::Test

def setup
  @card1 = Cards.new("cat", false)
  @card2 = Cards.new("cat", false)
  @card3 = Cards.new("dog", false)
  @card4 = Cards.new("dog", false)
  @card5 = Cards.new("bird", false)
  @card6 = Cards.new("bird", false)
end
  
  def test_card_has_face
    assert_equal("bird", @card5.face)
  end


end
