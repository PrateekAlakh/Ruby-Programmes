class Book
  def initialize(i,p)
    @i=i
    @p=p
  end
  def to_s
    "ISBN = #{@i}\nPRICE = #{@p}"
  end
  def i=(isbn)
    @i=isbn
  end
  def p=(price)
    @p=price
  end
end
obj=Book.new("Book1",800)
puts obj.p
puts obj.i
