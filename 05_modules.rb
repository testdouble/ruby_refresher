module Fuzziness
  def snuggly?
    true
  end
end

require_relative 'animal'

class Animal
  def snuggly?
    false
  end
end

class Cat < Animal
  include Fuzziness
end

meechat = Cat.new "Meechat"
meechat.speak #=> "Rrrowr! My name is Meechat"
meechat.snuggly? #=> true
