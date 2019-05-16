class InvalidCardNumberError < StandardError
end

def process_transaction(card_number, amount)
  # card_is_valid? is defined elsewhere
  unless card_is_valid?(card_number)
    raise InvalidCardNumberError.new("Invalid credit card number #{card_number}")
  end
  # ... process the transaction ...
end
