puts "Hello World"

def who_says_what
   yield("Dave", "hello") 
   yield("Andy", "goodbye")
end


animals = %w( ant bee cat dog elk )
# animals.each {|animal| puts animal }
animals.each do |animal|
  puts animal
end
who_says_what {|person, phrase| puts "#{person} says #{phrase}"}


[ 'cat', 'dog', 'horse' ].each {|name| print name, " " } 
5.times { print "*" }
3.upto(6) {|i| print i }
('a'..'e').each {|char| print char }
puts