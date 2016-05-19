def game_over?
  false
end

=begin#Things that I will need:
Board of cards
recording match
actual cards

=end
until game_over?
  choose_card_one
  choose_card_two
  compare_cards
  record_match
  replay
end
