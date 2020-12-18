## Code Snippets

### Easy Checks:

clear screen: `system("clear") || system("cls")`

format("%s : %i, Computer: %i", USERNAME, score[0], score[1])

### Others

1. ```ruby
   def joinor(array, division = ', ', ending = 'and')
       last = array.pop
       
       if array.empty?
           last.to_s
       else
           array.join(division) + ', ' + ending +' ' + last
       end
   
   end
   ```

2.  minilang from MEDIUM1

3. `largest_sentence = sentences.max_by { |sentence| sentence.split.size }`

4. Regex on splitting a string into array 
   1. `sentences = text.split(/(?<=\.)|(?<=\?)|(?<=!)/)`   # This is using .!? to split the sentence but without it consuming the character
   2. `array = sentences.split(/\n\n/)` # this is to split after \n
5. Use delete if want to delete multiple characters without sequence, use gsub if delete specific sequence 
6. try putting nil as the return value if the method already mutating the caller