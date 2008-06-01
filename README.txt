= approximatize

== DESCRIPTION:

Approximatize lets you code while drunk ;-)

What if your programming language interpreter didn't mind small spelling mistakes.
Imagine that you type a method name a wee bit wrong, but the the interpreter seems
to read your mind and call the correct method instead of throwing an NoMethodFound
exception at you.

Approximatize gives you that. Well, sort of. It uses levenshtein distance to find
a matching function signature.

For a better description of how it works read the following blogposts:
http://inferencing.blogspot.com/2008/03/approximate-ruby-programming.html
http://inferencing.blogspot.com/2008/03/better-approximate-ruby-programming.html

== SYNOPSIS:

class Example
  def test(str)
    puts "test method called: #{str}\n"
  end
end

approximatize(Example)

ex = Example.new

# These will all case ex.test
ex.test "a normal method call"
ex.text "Did you mean test?"
ex.tes "Did you mean test? (then you forgot a letter)"
ex.ttest "Did you mean test? (then wrote a letter to much)"

ex.and_now_for_something_completely_different # => Will thrown NoMethodFound exception

== REQUIREMENTS:

== INSTALL:

sudo gem install approximatize

== LICENSE:

(The MIT License)

Copyright (c) 2008 Christian Theil Have 

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
