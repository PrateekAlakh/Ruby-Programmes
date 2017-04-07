class Book	
	# attr_reader :isbn,:price
	# attr_writer :isbn,:price
	attr_accessor :isbn,:price
	def initialize (isbn,price)
		@isbn=isbn
		@price=price
	end
	# def isbn
	# 	@isbn
	# end
	# def price
	# 	@price
	# end
	# def isbn=isbn
	# 	@isbn=isbn
	# end
	# def price=isbn
	# 	@price=isbn
	# end
	def to_s
		"ISBN=#{@isbn},PRICE=#{@price}"
	end
end
b=Book.new(900,500)
puts b.isbn
puts b.price
b.isbn=b.isbn+100
b.price=b.price+200
puts b.isbn
puts b.price
puts b