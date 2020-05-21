# Strings
%q(wow a string)
#=> "wow a string"

%(wow a string)
#=> "wow a string"

%[wow a string]
#=> "wow a string"

%<wow a string>
#=> "wow a string"

%?wow a string?
#=> "wow a string"

# Words
%w[wow a string]
#=> ["wow", "a", "string"]

# Symbols
%i[wow a string]
#=> [:wow, :a, :string]

%s[wow a string]
#=> :"wow a string"

# Regular Expressions
%[wow a string].match?(/string/)
#=> true

%[wow a string].match?(/strang/)
#=> false

%[wow a string].match?(%r{string})
#=> true

# Executing in a shell
`cat .gitignore`
#=> ".irb*\n"

%x{cat .gitignore}
#=> ".irb*\n"