some_text = <<HEREDOC
Multiple
lines
of
text
HEREDOC

puts some_text

def indented_heredoc
  <<-INDENTED
The '-' after the '<<' allows you to
indent the ending identifier like so:
  INDENTED
end

puts indented_heredoc

# Heredocs allow interpolation by default
name = "Hector"
interpolated_heredoc = <<INTERPOLATED
Hello, my name is #{name}
What's your name?
INTERPOLATED

puts interpolated_heredoc

# But if you don't want interpolation, you can
# prevent it
uninterpolated_heredoc = <<'UNINTERPOLATED'
Hello, my name is #{name}
What's your name?
UNINTERPOLATED

puts uninterpolated_heredoc

# As you may have guessed, the starting and
# ending tokens can be anything, really.  The
# ending one should exist on a line all by
# itself
puts <<GEORGE
My name isn't actually GEORGE.
I'm a Heredoc, lol!
GEORGE

# And finally, my personal fav: there's a
# variant which allows you to intent the
# _contents_ of the heredoc, and not just
# the ending token.
def nicely_indented_heredoc
  <<~NICE
  This heredoc doesn't break the
  flow of this Ruby code as much.

  Notice that when you run this,
  you won't have two spaces at
  the beginning of each line of
  output!
  NICE
end

puts nicely_indented_heredoc
