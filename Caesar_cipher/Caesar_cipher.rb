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
