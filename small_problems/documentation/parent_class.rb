s = 'abc'
puts s.public_methods(String).inspect

# outputs all public methods available to string class in irb
# string class and ones inherited from Object class


# modified code to print public methods defined or overridden by String Class
puts s.public_methods(false).inspect

#public_methods is defined in the Object class documentation

# always check the documentation for the class before the superclass
# the class method will override the members of its superclass