5.times do |n|
  puts "#{n+1} situp"
end

5.times do |n|
  puts "#{n+1} pushup"
end

1.upto(5) do |n|
  puts "#{n} upto"
end

2.step(10,2) do |n|
  puts "#{n} upto"
end

5.times { |n| puts "#{n+1} pushup"}

5.times do |n|
  puts "#{n+1} chinup"
end

class Flyer

attr_reader :name, :email, :miles_flown

def initialize(name, email, miles_flown)
  @name = name
  @email = email
  @miles_flown = miles_flown
end

def to_s
  "#{name} #{email} #{miles_flown}"
end
end

# variable scopes

temp = 200
n= 8

# declaring this way do not allow variable overwrite
3.times do |n; temp|
  temp = 100
  puts "#{n}, #{temp}"
end

puts "#{n}, #{temp}"
