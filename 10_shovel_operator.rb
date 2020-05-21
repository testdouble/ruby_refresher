str = "look, a string"
str.object_id
str << "!"
str.object_id

arr = %w{look it's an}
arr.object_id
arr << "array"
arr.object_id

sym = :sym
sym.object_id
sym << :bol
# ???

hash = {}
hash << :anything?
# ???

# You can make your own shovel!
class Pocketses
  attr_accessor :things

  def initialize(things = [])
    @things = things
  end

  def what_has_it_gots
    things
  end
end

pocket = Pocketses.new(%w{iphone carkeys})
pocket.what_has_it_gots
#=> ["iphone", "carkeys"]

class Pocketses
  def <<(thing)
    things << thing
  end
end

pocket << "airpods"
pocket.what_has_it_gots
#=> ["iphone", "carkeys", "airpods"]