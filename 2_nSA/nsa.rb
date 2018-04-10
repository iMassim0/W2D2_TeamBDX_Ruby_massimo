def chiffre_de_cesar(message, key)

  code = []
  key = key.to_i
  new_message = []
  message = message.split(//)

  message.each do |x|
    # -- On skip les espaces --
    if x.ord == 32
      code << x
    # -- On traite les majuscules
    elsif (65..90).include? x.ord
        if x.ord + key > 90
          code << x.ord + key - 25
        else code << x.ord + key
        end
    # -- On traite les minuscules
    elsif (97..122).include? x.ord
        if x.ord + key > 122
          code << x.ord + key - 25
        else code << x.ord + key
        end
    else
    end

  end
    # -- On transforme notre message codé en texte --
  code.each do |char|
    new_message << char.chr
  end
puts new_message.join("")
end
