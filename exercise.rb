class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    new_list = str.split.map do |word|
      punctuation = word[-1].match?(/[[:punct:]]/) ? word[-1] : ""
      edited_word = punctuation.empty? ? word : word[0..-2]
      if edited_word.length > 4
        if edited_word[0].ord < 96
          "Marklar" + punctuation
        else
          "marklar" + punctuation
        end
      else
        word
      end
    end
    new_list.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181), 3-6-9-12-15-18
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    fib1 , fib2 = 1, 1
    sum = 0
    loop_count = nth/3
    (1..loop_count).each do |i|
      even_num = fib1 + fib2
      
      sum = sum + even_num
    
      fib1 = even_num+fib2
      fib2 = fib1 + even_num
    end
    sum
  end
end