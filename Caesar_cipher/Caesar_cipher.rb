def caesar_cipher(string, key)
  ciphered_str = ""

  string.chars.each do |letter|
    letter = letter.ord
      if (65..90).include?(letter)
        letter = 65 + (letter - 65 + key) % 26
      elsif (97..122).include?(letter)
        letter = 97 + (letter - 97 + key) % 26
      end
    ciphered_str << letter.chr
  end
  ciphered_str
end

Your Task
Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

    > caesar_cipher("What a string!", 5)
    => "Bmfy f xywnsl!"
Quick Tips:

You will need to remember how to convert a string into a number.
Don't forget to wrap from z to a.
Don't forget to keep the same case.
