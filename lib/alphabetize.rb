require 'pry'

def alphabetize(arr)
  esp_alph = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

  arr = arr.sort_by {|phrase| phrase.split("").collect{|letter| esp_alph.index(letter)}}
  arr
end
