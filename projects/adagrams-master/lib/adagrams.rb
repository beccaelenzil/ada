# adagrams.rb

LETTER_POOL =   ['A']*9+ 
                  ['B']*2+
                  ['C']*2+
                  ['D']*4+
                  ['E']*12+
                  ['F']*2+
                  ['G']*3+
                  ['H']*2+
                  ['I']*9+
                  ['J']*1+
                  ['K']*1+
                  ['L']*4+
                  ['M']*2+
                  ['N']*6+ 
                  ['O']*8+
                  ['P']*2+
                  ['Q']*1+
                  ['R']*6+
                  ['S']*4+
                  ['T']*6+
                  ['U']*4+
                  ['V']*2+
                  ['W']*2+
                  ['X']*1+
                  ['Y']*2+
                  ['Z']*1

LETTER_VALUE = {
  "A"=>1, "B"=>3, "C"=>3, "D"=>2, "E"=>1, "F"=>4,
  "G"=>2, "H"=>4, "I"=>1, "J"=>8, "K"=>5, "L"=>1,
  "M"=>3, "N"=>1, "O"=>1, "P"=>3, "Q"=>10, "R"=>1,
  "S"=>1, "T"=>1, "U"=>1, "V"=>4, "W"=>4, "X"=>8,
  "Y"=>4, "Z"=>10
}


def draw_letters
  available_letters = LETTER_POOL.shuffle
  hand = []
  10.times do
    hand << available_letters.pop
  end
  return hand
end

def uses_available_letters?(input, letters_in_hand)
  input_array = input.split('')
  letters_in_hand_copy = letters_in_hand.shuffle

  input_array.each do |letter_in_word|
    if letters_in_hand_copy.include?(letter_in_word)
      letters_in_hand_copy.delete(letter_in_word)
    else
      return false
    end
  end
  
  return true
end

def score_word(word)
 
  return false unless word
    
  word_array = word.upcase.split('')
  points = 0

  word_array.each do |letter|
    points += LETTER_VALUE[letter]
  end

  if word.length >= 7
    points += 8
  end

  return points
end

def highest_score_from(words)
  winner = {
    word: nil,
    score: 0
  }

  words.each do |word|
    score = score_word(word)
      if score > winner[:score]
        winner[:word] = word
        winner[:score] = score
      elsif score == winner[:score]
        winner_word = tiebreaker(winner[:word], word)
        winner[:word] = winner_word
        winner[:score] = score
      end
    end
    return winner
  end

  def tiebreaker(word1, word2)
    if word1.length == 10
      return word1
    elsif word2.length == 10
      return word2
    elsif word1.length < word2.length
      return word1
    elsif word1.length > word2.length
      return word2
    else
      word1
    end
  end