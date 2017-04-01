class Book
  def initialize(i,p)
    @i=i
    @p=p
  end
  def to_s
    "ISBN = #{@i}\nPRICE = #{@p}"
  end
  def i
    @i
  end
  def p
    @p
  end
end
obj=Book.new("Book1",800)
puts obj.p
puts obj.i
