### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame

# naming of method should be snake case - check_for_ace
  def checkforAce(card)
    # this is assigning a value, should be card.value == 1
    if card.value = 1
      return true
    else
      return false
    end
  end

# dif instead of def, parameters need to be separated by commas
  dif highest_card(card1 card2)
  # should be indented
  if card1.value > card2.value
    # non-existant variable, should be card 1
    return card
  else
    # what if they are equal? card2 will be returned in the event of a draw
    return card2
  end
  # wrong indentation and an extra end
end
end

# self is unnecessary
def self.cards_total(cards)
  # uninitialised variable - should be total = 0
  total
  for card in cards
    total += card.value
    # return should be outside for loop, otherwise will print this statement for every card
    # total hasn't been converted to a string
    return "You have a total of" + total
  end
end
```
