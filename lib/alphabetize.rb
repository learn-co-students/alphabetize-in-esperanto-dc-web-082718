def alphabetize(expression)
  # code here
  e_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

  index = 0
  index1 = 0
  switch = false
  temp_array = expression
  while index1 < temp_array.length do
    word = expression[index]
    while index < expression.length do
      if index + 1 != expression.length
        current = expression[index]
        next_value = expression[index + 1]
        if e_alphabet.index(current[0]) == e_alphabet.index(next_value[0])
          if e_alphabet.index(current[1]) == e_alphabet.index(next_value[1])
            if current[5] != nil && next_value[5] != nil
              if current[5] == ' '
                if e_alphabet.index(current[6]) > e_alphabet.index(next_value[6])
                  switch = true
                end
              else
                if e_alphabet.index(current[5]) > e_alphabet.index(next_value[5])
                  switch = true
                end
              end
            end
          else
            if e_alphabet.index(current[1]) > e_alphabet.index(next_value[1])
              switch = true
            end
          end
        else
          if e_alphabet.index(current[0]) > e_alphabet.index(next_value[0])
            switch = true
          end
        end
        if switch
          temp_word = expression[index]
          expression[index] = expression[index + 1]
          expression[index + 1] = temp_word
          switch = false
        end
      end
      index += 1
    end
    index = 0
    index1 += 1
  end
  puts expression
  expression
end
