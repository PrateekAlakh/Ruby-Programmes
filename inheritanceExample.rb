#File Name - inheritanceExample.rb

#!/usr/bin/ruby -w
# define a class
class Box
	# constructor method
	def initialize(w,h)
		puts 'initialize from Parent class'
		@width, @height = w, h
	end
	# instance method
	def getArea
		@width * @height
	end
end

# define a subclass
class BigBox < Box
	# add a new instance method
	def initialize(p1,p2)
		super(p1,p2)
		puts 'initialize from child class'
		@var1 = p1
		@var2 = p2
		# super(p1,p2)
	end
	def printArea
		@area = @width * @height
		puts "Big box area is : #@area"
	end
end

# create an object
box = BigBox.new(10, 20)
# box = BigBox.new
# print the area
box.printArea()