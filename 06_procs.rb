square = Proc.new {|x| x**2 }

square.call(7)
square.(3)
square[4]

# Procs are closures, which means that they 
# remember the entire context (scope) in
# which they were created

power = 3
expo = Proc.new{|x| x**power }

expo[3] #=> 27

# This remains true, even when the proc
# is called in a context which doesn't
# have (direct) access to the proc's
# enclosed scope

class ExpoMaker
  def self.make_cube
    pwr = 3
    Proc.new {|x| x**pwr }
  end
end

cube = ExpoMaker.make_cube
cube[2] #=> 8

# Procs have currying!
add = Proc.new {|a,b| a + b }
add[2,3] #=> 5

increment = add.curry.call(1)
increment[100] #=> 101

# Ruby also has Lambdas, how are they different?
# - Lambdas enforce arity (correct number of
#   arguments)
#     Create `ladd` with same implementation 
#     as `add`, then call `add.(2)` and
# .   compare error with `ladd.(2)`
# - Lambdas support default arguments!
# - return from Lambda just returns from
# . the lambda (Procs return from the calling
# . function!)