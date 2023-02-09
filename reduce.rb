def sum_terms(n)
    (1..n).reduce(0) { |sum, i| sum + i**2 + 1 }
  end

  puts sum_terms(25)