# blackjack_score.rb

VALID_CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']

def blackjack_score(hand)
  return hand.sum
end

def score_hand(hand)

  # raise error if card is invalid
  valid_cards(hand)

  # score array
  score_array = hand.map do |card|
    if ['Jack', 'Queen', 'King'].include?card
      10
    elsif card == 'Ace'
      score_ace(hand)
    else
      card
    end
  end

  # raise error if score is greater than 21
  if blackjack_score(score_array) > 21
    raise ArgumentError.new("The hand score is #{score_array.sum} which is greater than 21")
  end


  return score_array
end

def score_ace(hand)
  hand.delete('Ace')
  if blackjack_score(hand) < 11
    return 11
  else
    return 1
  end
end

def valid_cards(hand)
  hand.each do |card|
    unless VALID_CARDS.include?card
      raise ArgumentError.new("#{card} is invalid")
    end
  end
end