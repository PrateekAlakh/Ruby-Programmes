class BookInStock
	attr_reader :isbn, :price, :date
	def initialize(date, isbn, price)
		# puts 'In initialize'
		@date = date
		@isbn = isbn
		@price = Float(price)
	end
end