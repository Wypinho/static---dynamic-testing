require('pry')
require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('./card_game')
require_relative('./card')

class TestCardGame < Minitest::Test
  def setup
    @card1 = Card.new("clubs", 3)
    @card2 = Card.new("hearts", 13)
    @card3 = Card.new("diamonds", 1)
    @card4 = Card.new("spades", 13)
    @cards = [@card1, @card2, @card3, @card4]
  end

  def test_card_has_suit
    assert_equal("clubs", @card1.suit)
  end

  def test_card_has_value
    assert_equal(13, @card2.value)
  end

  def test_check_for_ace
    assert_equal(true, CardGame.check_for_ace(@card3))
  end

  def test_highest_card
    assert_equal(@card2, CardGame.highest_card(@card1, @card2))
  end

  def test_highest_card__equal_value_cards
    assert_equal("The cards are of equal value", CardGame.highest_card(@card2, @card4))
  end

  def test_cards_total
    assert_equal("You have a total of 30", CardGame.cards_total(@cards))
  end
end
