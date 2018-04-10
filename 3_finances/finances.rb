
days = [17,3,6,9,15,8,6,1,10]

def trader_du_dimanche(days)

  couple = Hash.new

  days.length.times do |i|
    (days.length-(i+1)).times do |j|
      couple[ [days[i], days[i+j+1], i, (i+j+1)] ] = days[i] - days[i+j+1]
    end
  end
  bingo = couple.values.sort[0]
  return "=> [#{couple.key(bingo)[2]} ; #{couple.key(bingo)[3]}] # $#{couple.key(bingo)[1]} - $#{couple.key(bingo)[0]} == $#{-bingo}"
end
puts trader_du_dimanche(days)
