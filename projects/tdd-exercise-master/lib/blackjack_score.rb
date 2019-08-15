# blackjack_score.rb

VALID_CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']

def blackjack_score(hand)
  # raise error if card is invalid
  valid_cards(hand)

  # make hand array all integers
  hand = make_numeric_hand(hand)

  total = hand.sum

  # raise error if score is greater than 21
  does_it_bust(total)

  return total
end

def make_numeric_hand(hand)
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
  return score_array
end

def score_ace(hand)
  hand.delete('Ace')
  if hand.sum < 11
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

def does_it_bust(total)
  if total > 21
    raise ArgumentError.new("The hand score is #{total} which is greater than 21")
  end
end