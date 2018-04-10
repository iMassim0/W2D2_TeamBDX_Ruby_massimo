def particular_sum(number)

  total = 0
  number -= 1

  number.times do
    if number % 3 == 0 || number % 5 == 0
      total += number
    end
    number -= 1
  end
  return total
end

puts particular_sum(10)
puts particular_sum(1000)
