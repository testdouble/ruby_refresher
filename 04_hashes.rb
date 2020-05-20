# hashes are what other languages may refer
# to as a "map" --a structure of key-value
# pairs which can be easily searched by key
# to return the corresponding value

# Equivelents in other languages:
# - Java: HashMap
# - C#: Dictionary
# - JavaScript: "objects"

my_pets = {
  tom: "An handsome cat",
  meechat: "An adorable monkey"
}

my_pets[:tom] #=> "An handsome cat"

# the above is equivelant to:
my_pets = {
  :tom => "An handsome cat",
  :meechat => "An adorable monkey"
}

# Ruby hashes can be anything (because,
# remember, "everything is an object")

wat = {
  0 => :zero,
  1 => :one,
  2 => :two
}

liger = Animal.new
zoo = {
  liger => :waow
}