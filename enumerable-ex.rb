scores = [83, 71, 92, 64, 98, 87, 75, 69]

# high_scores = puts scores.select { |s| s>80 }

# high_scores =  scores.select { |s| s>80 }
# p high_scores

puts scores.select  do |s| s>80 end # print enumerable (scores.select , ignore the block),
puts scores.select  {|s| s>80}

low_scores = scores.reject { |s| s>80 }

p low_scores

less_70 = scores.any? { |s| s<70 }

p less_70

the_less_70 = scores.detect { |s| s<70 }

p the_less_70

