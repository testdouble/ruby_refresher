# First, a bit about `!`
! false
#=> true

! nil
#=> true

( ! nil ).class
TrueClass

!! nil
#=> false

( !! nil ).class
#=> FalseClass

!! :wow
#=> true

# Ok, then, on to `if` statements
condition = true

if condition
  "it's true"
elsif Time.now.wednesday?
  "it's wednesday"
else
  "it's false"
end
#=> "it's true"

# You can also use a trailing `if`
"it's Wednesday!" if Time.now.wednesday?

# or a trailing `unless`
"it's NOT Wednesday" unless Time.now.wednesday?

# A couple of notes about these trailing
# conditionals:
# - do use them for short, one-liners
# - for longer stuff, prefer the classic
#   form
# - with `unless`, avoid double negatives as
#   they tend to be confusing!
"it's true (I think?)" unless ! condition

# Ruby also has ternary statements
condition = false
condition ? "trew" : "nopes"
#=> "nopes"

# Ruby has switches
case Time.now.wday
when 0
  "it's Sunday!"
when 6
  "it's Saturday!"
when 5
  "yay, but which seat shall I choose?"
else
  "weak day, bleh"
end

# cases can also be used to switch on type (class)
class Dog; end
class Cat; end
doggi = Dog.new

case doggi
when Cat
  "Rrrowr"
when Dog
  "Rruff"
else
  "ummm"
end
#=> "Rruff"

# There's lots more interesting stuff about
# case statements, try googling "ruby ===" :)

# while loops
while Time.now.monday?
  puts "still Monday :("
  sleep 60*60 # 1 hour
end

# until loops
until Time.now.friday?
  puts "Everybody's working for the weekend..."
  sleep 60*60*24 # 1 day
end

# for loops
for i in (0..9)
  puts "number: #{i}"
end

# we don't end up using `for` an awful lot in
# Ruby, mainly because Enumerables are _so_
# nice, and can be used in nearly every
# situation where we'd otherwise want `for`.
# Regard:
(0..9).each {|i| puts "number: #{i}" }