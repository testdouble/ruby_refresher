def report_with(name, &block)
  puts "name: #{name}"
  block.call(name)
end

report_with('Pearl') do |name|
  puts "Well, hello there, #{name}!"
end

#=> name: Pearl
#=> Well, hello there, Pearl!

greeting = 'howdy'
report_with('Tom') do |name|
  puts "Well, #{greeting}, #{name}!"
end

#=> name: Tom
#=> Well, howdy, Tom!

# The `yield` keyword
def introducing(name)
  puts "And now, introducing"
  yield name
  puts "Let's hear it for #{name}!"
end

introducing('Pearl') do |name|
  puts "The incomperable #{name}!"
end
#=> And now, introducing
#=> The incomperable Pearl!
#=> Let's hear it for Pearl!!! 