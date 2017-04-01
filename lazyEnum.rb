def Integer.all
  Enumerator.new do |y,n:0|
    loop{y.yield n+=1}
  end.lazy
end
p Integer.all.class
p Integer.all
.first(10)
