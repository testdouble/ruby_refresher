# instances of an object have state
class Dog
  def initialize(name)
    @name = name
  end

  def speak
    "Woof! My name is #{@name}"
  end
end

dog = Dog.new "Pearl"
puts dog.speak

# getter
class Dog
  attr_reader :name

  def speak
    "Woof! My name is #{name}"
  end
end

# setter
class Dog
  attr_writer :name
end

dog.name = "Wilma"
dog.speak #=> "Woof! My name is Wilma"

# getter and setter all at once
class Cat
  attr_accessor :name

  def speak
    "Rrrrowr!  My name is #{name}"
  end
end