test=(1..10).enum_for(:each_slice,3)
p test.first
p test.first(2)
p test.count
p test.select { |e| e.count>1  }