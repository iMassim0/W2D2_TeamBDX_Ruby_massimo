def jean_michel_data(corpus, dictionary)

  words = {}
  corpus = corpus.downcase!

  dictionary.each do |word|
    if corpus.scan(/#{word}/).length == 0
    else
      words[word] = corpus.scan(/#{word}/).length
    end
  end
print words
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
corpus = "below"

jean_michel_data("Howdy partner, sit down! How's it going?", dictionary)
