class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "My name is #{name}"
  end
end

# require_relative 'animal'

class Dog < Animal
  def speak
    "Woof! #{super}"
  end
end

dog = Dog.new("Pearl")
puts dog.speak

