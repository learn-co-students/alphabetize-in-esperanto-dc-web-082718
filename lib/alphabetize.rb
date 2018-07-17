require 'pry'

def alphabetize(arr)
  # arr.sort { |a, b| b <=> a }
  alphabet = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

  arr.sort_by { |string| word_value = 0; char_index = 0
    string.each_char { |letter|
      word_value += alphabet.index(letter) * ( (alphabet.length+1) ** -char_index).to_f
      char_index += 1
    }
    word_value
  }
  # arr.sort_by { |string| esperanto_alphabet.index (string[0]) }
end
