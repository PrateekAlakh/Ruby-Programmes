class Books
  def initialize isbn,price
    @isbn=isbn
    @price=Float(price)
   end
end
b1=Books.new("isbn1","300.33")
puts b1