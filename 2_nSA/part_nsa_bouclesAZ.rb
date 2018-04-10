

def chgt(ord, key)

  # trait << entree

  trait = ord.to_i

  key.times do



    if (65..(90-key)).include? trait
      return trait = 65 + (key-1) if trait == 90
      return trait.succ if (65..89).include? trait

    elsif (97..122).include? trait
      return trait = "97" if trait == 122
      return trait.succ if (97..121).include? trait
    else

      return trait.succ
    end

  end

  # sortie << trait
end


 puts chgt("55", 4)

 puts chgt("92", 4)

 puts chgt("155", 4)


 "Ucase"
 puts chgt("65", 4)

 puts chgt("82", 4)

 puts chgt("90", 4)


 "Dcase"
 puts chgt("97", 4)

 puts chgt("110", 4)

 puts chgt("122", 4)


