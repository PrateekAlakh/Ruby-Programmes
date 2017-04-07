class Book
	attr_reader :var1, :var2, :var3
	def initialize p1,p2
		@var1 = 5
		@var2 = 10
	end
	def initialize p3
		@var3 = p3
	end

	# def self.new(a,b)
	# 	super(a,b)
	# 	# initialize(a,b)
	# 	puts 'In self.new $$$$$$$$'
	# end
end

b1 = Book.new(7,10)
puts "------------b1.var1 = #{b1.var1}"
puts "------------b1.var2 = " + b1.var2.to_s

puts "------------b1.var3 = " + b1.var3.to_s

b2 = Book.new(5)