def substrings(str, data)
  words = str.downcase.split(/\W+/)

  data.reduce(Hash.new(0)) do |result, s_word|
    words.each do |word|
      if word.include?(s_word)
        result[s_word] += 1
      end
    end
    
    result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
# p substrings("below", dictionary)
