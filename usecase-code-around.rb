def tag(name)
  print "<#{name}>"
  print yield
  print "</#{name}>"
end

# ruby framework has : content_tag(:h1) { "Ruby on Rails!" }

tag(:h1) { "title" }
puts
tag(:h2) { "Subtitle" }
puts

def with_expectation(expected_value)
  puts "Running test..."
  result = yield
  if result == expected_value
    puts "Passed."
  else
    puts "Failed!"
    puts "Expected #{expected_value}, but got #{result}."
  end
end

with_expectation(8) { 2 + 3 }
with_expectation(5) { 2 + 3 }

