def echo(string)
    string
end

def shout(string)
    string.upcase
end

def repeat(string, times = 2)
    words = Array.new(times, string)
    words.join(" ")
end

def start_of_word(word, num_of_letters)
    word[0...num_of_letters]
end

def first_word(string)
    words = string.split
    words[0]
end

def titleize(title)
    little_words = ["and", "over", "the"]
    titleized = title.split.map.with_index do |word, i|
       if i != 0 && little_words.include?(word.downcase)
           word.downcase
       else
           word.capitalize
       end
   end 
    titleized.join(" ")
end
