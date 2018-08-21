require 'pry'
def alphabetize(arr)
  esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

  arr.sort_by do |word|
    word.split(//).map do |char|
       esperanto_alphabet.index(char)
     end
   end
end
