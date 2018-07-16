require 'pry'

def alphabetize(arr)
  # arr.sort { |a, b| b <=> a }
  esperanto_alphabet = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

  arr.sort_by { |string| word_value = 0; position = 0
    string.each_char { |letter|
      word_value += esperanto_alphabet.index(letter) * (30 ** -position).to_f
      position += 1
    }
    word_value
  }
  # arr.sort_by { |string| esperanto_alphabet.index (string[0]) }
end
