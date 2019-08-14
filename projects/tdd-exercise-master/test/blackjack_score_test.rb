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
    expect score.must_equal 7

  end

  it 'facecards have values calculated correctly' do
    # Arrange
    hand1 = ['Jack', 'Queen']
    hand2 = ['King', 'Queen']

    # Act
    score_array1 = make_numeric_hand(hand1)
    score_array2 = make_numeric_hand(hand2)

    # Assert
    expect score_array1.must_equal [10, 10]
    expect score_array2.must_equal [10, 10]

  end

  it 'calculates aces as 11 where it does not go over 21' do
    # Arrange 
    hand = [2, 4, 'Ace']

    # Act
    score_array = make_numeric_hand(hand)

    # Assert
    expect score_array.must_equal([2, 4, 11])

  end

  it 'calculates aces as 1, if an 11 would cause the score to go over 21' do
    # Arrange 
    hand = [2, 9, 'Ace']

    # Act
    score_array = make_numeric_hand(hand)
    
    # Assert
    expect score_array.must_equal([2, 9, 1])

  end

  it 'raises an ArgumentError for invalid cards' do
    # Arrange
    hand1 = [12, 9, 'Ace']
    hand2 = [2, 9, 'Hello']

    # Act/Assert
    expect {
      blackjack_score(hand1)
    }.must_raise ArgumentError

    expect {
      blackjack_score(hand2)
    }.must_raise ArgumentError

  end

  it 'raises an ArgumentError for scores over 21' do
    # Arrange
    hand = [9, 9, 9]

    # Act/Assert
    expect {
      blackjack_score(hand)
    }.must_raise ArgumentError

  end
end
