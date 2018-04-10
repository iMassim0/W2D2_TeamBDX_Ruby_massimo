def part_sum(n)
  tot = 0
  n -= 1
  n.times do
    if n % 3 == 0 || n % 5 == 0
      tot += n
    end
    n -= 1
  end
  return tot
end

puts part_sum(1000)

