require "pry"
def wordbank
  db = (File.read "wordsbank.txt").split("\r\n")
end

def dictionary_check word
  wordbank.include?(word)
end

def letter_values
  values = (File.read "letterpoints.csv").split(",").map { |l| l.to_i  }
  letters = (File.read "letters.csv").split(",")
  letters.zip(values).to_h
end

def word_record
  puts "Please type in your Scrabble™ answer:"
  word = gets.chomp.upcase
end

# THIS IS THE SCORING METHOD #
def word_points word
  word_array = word.upcase.split("")
  points = word_array.reduce (0) {| total , letter | total + letter_values[letter]}
  puts "The total points for your Scrabble™ answer is: #{points}"
end
# ---------------------------

letter_values
word = word_record
dictionary_check word
word_points word
#record_letter
