# Exo 4.1
def jean_michel_data(corpus, dictionary)

  words = {}
  corpus = corpus.downcase!

  dictionary.each do |word|
    if corpus.scan(/#{word}/).length == 0
    else
      words[word] = corpus.scan(/#{word}/).length
    end
  end
puts words
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
jean_michel_data("Howdy partner, sit down! How's it going?", dictionary)

# Exo 4.2
def get_file_as_string(filename)
  data = ''
  f = File.open(filename, "r")
  f.each_line do |line|
    data += line
  end
  return data
end

swear_words = File.readlines('swearWords.txt')
  swear_thing = []
  swear_words.each do |x|
    swear_thing << x.gsub("\r\n", "")
  end

dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
  shakespeare_data = get_file_as_string "shakespeare.txt"

# -- Uncomment print ci-dessous pour le Dictionnary dans Shakespeare --
# -- ATTENTION : demande bcp de mémoire et de temps --
  # print jean_michel_data(shakespeare_data, dictionnary)

# -- Uncomment print ci-dessous pour les gros mots dans Shakespeare --
# -- ATTENTION : demande bcp de mémoire et de temps --
  # print jean_michel_data(shakespeare_data, swear_thing)
