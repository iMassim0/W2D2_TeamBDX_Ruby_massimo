# Exo 3.1

days = [17,3,6,9,15,8,6,1,10]



def trader_du_dimanche(days)

  couple = Hash.new

  days.length.times do |i|

    (days.length-(i+1)).times do |j|

      result = days[i] - days[i+j+1]

      # puts ("#{days[i]} - #{days[i+j+1]} = #{result} (#{i}) (#{i+j+1})")

      couple[ [days[i], days[i+j+1], i, (i+j+1) ]  ] = result

    end
  end


  puts "=> [#{couple.key( couple.values.sort[0] )[2]} ; #{couple.key( couple.values.sort[0] )[3]}] # $#{couple.key( couple.values.sort[0] )[1]} - $#{couple.key( couple.values.sort[0] )[0]} == $#{-couple.values.sort[0]}"

end


trader_du_dimanche(days)

