require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/blackjack_score'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Blackjack Score' do
  it 'can calculate the score for a pair of number cards' do
    # Arrange
    hand = [3, 4]

    # Act
    score = blackjack_score(hand)

    # Assert <-  You do this part!
    expect(score).must_equal 7
  end

  it 'facecards have values calculated correctly' do
    # Arrange
    hand1 = ['Jack', 'Queen']
    hand2 = ['King', 'Queen']

    # Act
    total1 = blackjack_score(hand1)
    total2 = blackjack_score(hand2)

    # Assert
    expect(total1).must_equal 20
    expect(total2).must_equal 20
  end

  it 'calculates aces as 11 where it does not go over 21' do
    # Arrange 
    hand = [2, 4, 'Ace']

    # Act
    total = blackjack_score(hand)

    # Assert
    expect(total).must_equal 17
  end

  it 'calculates aces as 1, if an 11 would cause the score to go over 21' do
    # Arrange 
    hand = [2, 9, 'Ace']

    # Act
    total = blackjack_score(hand)
    
    # Assert
    expect(total).must_equal 12
  end

  it 'raises an ArgumentError for invalid cards' do
    # Arrange
    hand1 = [12, 9, 'Ace']
    hand2 = [2, 9, 'Hello']

    # Act/Assert
    expect {blackjack_score(hand1)}.must_raise ArgumentError
    expect {blackjack_score(hand2)}.must_raise ArgumentError

  end

  it 'raises an ArgumentError for scores over 21' do
    # Arrange
    hand = [9, 9, 9]

    # Act/Assert
    expect {blackjack_score(hand)}.must_raise ArgumentError
  end
end
