def chiffre_de_cesar(message, key)
  code = []
  key = key.to_i
  new_message = []
  message = message.split(//)
  message.each do |x|
    if x.ord == 32
      code << x
    elsif (65..90).include? x.ord
        if x.ord + key > 90
          code << x.ord + key - 25
        else code << x.ord + key
        end
    elsif (97..122).include? x.ord
        if x.ord + key > 122
          code << x.ord + key - 25
        else code << x.ord + key
        end
    else
      code << x
    end
    end
  # end
  code.each do |char|
    new_message << char.chr
  end
# print code
print new_message.join("")
end

# puts chiffre_de_cesar("ABCDEFGHIJKLMNOPQRSTUVWXYZ", 4)

# puts chiffre_de_cesar("Salut ma poule", 4)

puts chiffre_de_cesar("il fait au moins 20!", 4)
