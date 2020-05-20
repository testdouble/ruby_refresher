# everything in Ruby is an object:
# - numbers
12.class

# - string literals, symbols
"hello".class
:hi.class

# - arrays, hashes
[].class
{}.class

# - classes, modules
class Dog
end
Dog.class

module Speaking
end
Speaking.class

# - and, of course, instances of classes
doggi = Dog.new
doggi.class

# - oh ya, also true, false and nil
true.class
false.class
nil.class