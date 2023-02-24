cards = ["Jack", "Queen", "King", "Ace", "Joker"]

cards.each do |c|
  puts "#{c} - #{c.length}"
end

scores = {"Larry" => 10, "Moe" => 8, "Curly" => 12}

scores.each do |key, value|
   puts "#{key} scored a #{value}!"
end

class Flyer
  attr_reader :name, :miles_flown

  def initialize(name, miles_flown)
    @name= name
    @miles_flown = miles_flown
  end

  def to_s
    "#{name} - #{miles_flown}"
  end
end

flyers = []
1.upto(5) {|n| flyers<< Flyer.new("Flyer #{n}", n*1000)}
flyers.map do |f|
  puts f
end

sum = 0
flyers.each do |f|
  sum += f.miles_flown
end
puts "Total miles flown: #{sum}"





