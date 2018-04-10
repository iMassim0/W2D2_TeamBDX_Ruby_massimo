# Exo 3.1

days = [17,3,6,9,15,8,6,1,10]



def trader_du_dimanche(days)
  couple = Hash.new
  days.length.times do |i|
    (days.length-(i+1)).times do |j|
      # result = days[i] - days[i+j+1]
      couple[[days[i],days[i+j+1],i,(i+j+1)]] = days[i]-days[i+j+1]
    end
  end
  bingo = couple.values.sort[0]
  return "=> [#{couple.key(bingo)[2]} ; #{couple.key(bingo)[3]}] # $#{couple.key(bingo)[1]} - $#{couple.key(bingo)[0]} == $#{-bingo}"
end


trader_du_dimanche(days)


jour_1 = { :GOO => 15, :MMM => 14, :ADBE => 12, :EA=> 13, :BA => 8, :KO => 10, :XOM => 20, :GPS => 7, :MCD => 11, :DIS => 15, :CRM => 6, :JNJ => 10 }
jour_2 = { :GOO => 8, :MMM => 20, :ADBE => 3, :EA=> 10, :BA => 5, :KO => 19, :XOM => 12, :GPS => 6, :MCD => 15, :DIS => 9, :CRM => 10, :JNJ => 17 }
jour_3 = { :GOO => 3, :MMM => 8, :ADBE => 15, :EA=> 5, :BA => 10, :KO => 5, :XOM => 15, :GPS => 13, :MCD => 10, :DIS => 18, :CRM => 5, :JNJ => 14 }
jour_4 = { :GOO => 17, :MMM => 3, :ADBE => 6, :EA=> 9, :BA => 15, :KO => 6, :XOM => 8, :GPS => 1, :MCD => 10, :DIS => 15, :CRM => 18, :JNJ => 3 }
jour_5 = { :GOO => 8, :MMM => 18, :ADBE => 4, :EA=> 6, :BA => 15, :KO => 18, :XOM => 3, :GPS => 12, :MCD => 19, :DIS => 3, :CRM => 7, :JNJ => 9 }
jour_6 = { :GOO => 10, :MMM => 12, :ADBE => 8, :EA=> 3, :BA => 18, :KO => 20, :XOM => 5, :GPS => 11, :MCD => 3, :DIS => 9, :CRM => 8, :JNJ => 15 }
jour_7 = { :GOO => 17, :MMM => 14, :ADBE => 2, :EA=> 17, :BA => 7, :KO => 13, :XOM => 1, :GPS => 15, :MCD => 15, :DIS => 10, :CRM => 9, :JNJ => 17 }

jours = [jour_1, jour_2, jour_3,jour_4 ,jour_5 ,jour_6 ,jour_7 ]
# puts jour_1[:GOO]

def trader_du_lundi(jours)

  companies = {}
  i = 0

  jours.each do |jour|
    jour.each do |brand, price|
      if companies.include?(brand)
      else
        companies[brand] = []
      end
    end
    jour.each do |brand, price|
      if companies[brand]
        companies[brand] << [price, i]
      end
    end
    i += 1
  end

  # print companies

  companies.each do |brand, day|

    # puts day.sort[0]

    # if day.count(day.sort[0]) > 1 || day.count(day.sort[-1]) > 1
    #   puts "prout"
    # elsif day.count(day.sort[0]) == 1 || day.count(day.sort[-1]) == 1
      puts "#{brand}\nAchat jour n°#{day.sort[0][1]+1} : $#{day.sort[0][0]}\nvente jour n°#{day.sort[-1][1]+1} : $#{day.sort[-1][0]}\n"
      puts " "
    # end
  end

  companies.values.each do |value|

    # En KDO : Si vous souhaitez vraiment gagner du POGNON, faites ceci :
    # print trader_du_dimanche(value)
  end

end

trader_du_lundi(jours)
