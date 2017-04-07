class Books
	def intialize
		@isbn=0
		@price=0
	end
	def initialize isbn,price
    @isbn=isbn
    @price="price"
   end
end
b1=Books.new("isbn1","300.33")
b2=Books.new
p b2