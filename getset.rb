class Book
  attr_reader :i,:p
  attr_writer :i,:p
  def initialize(i,p)
    @i=i
    @p=p
  end
  def to_s
    "ISBN = #{@i}\nPRICE = #{@p}"
  end
end
obj=Book.new("Book1",800)
puts obj.p
puts obj.i
obj.p= obj.p + 50
puts obj.p
