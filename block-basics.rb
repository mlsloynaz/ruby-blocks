# 3.times { puts "Echo" }

# 3.times do |number|
#   puts "#{number} Echo!"
# end

# 3.times {|n| puts "#{n} Echo!"}

class Order
  attr_accessor :email, :total

  def initialize(email1, total1)
      @email=email1
      @total=total1
  end

  def to_s
    "#{email}: $#{total}"
  end
end

orders=[]
5.times do |n|
  orders << Order.new("fff#{n}@gg.com", 10*n)
end

puts orders


