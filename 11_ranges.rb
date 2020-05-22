(0..9).class
#=> Range

# two-dotted ranges are endpoint inclusive
(0..2).to_a
#=> [0, 1, 2]

# three-dotted ranges do not include the
# endpoint
(0...2).to_a
#=> [0, 1]

# ranges can be handy for slicing arrays
numeros = %i[uno dos tres cuatro cinco]

numeros[1..3]
#=> [:dos, :tres, :cuatro]

numeros[2..]
#=> [:tres, :cuatro, :cinco]

numeros[0..-3]
#=> [:uno, :dos, :tres]

numeros[-2...]
#=> [:cuatro, :cinco]