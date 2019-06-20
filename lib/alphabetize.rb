require 'pry'

def alphabetize(arr)
  # arr.sort { |a, b| b <=> a }
  alphabet = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  ranking_base = alphabet.length + 1

  arr.sort_by { |string| string_value = 0
    position = 0
    string.each_char { |letter|
      string_value += ( ranking_base ** -position ).to_f * alphabet.index(letter)
      position += 1
    }
    string_value
  }
  # arr.sort_by { |string| esperanto_alphabet.index (string[0]) }
end
