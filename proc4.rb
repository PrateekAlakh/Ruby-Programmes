str=["1","2","3"]
p str
str.collect! {|x| x.to_i}
p str

#instance method converted to procedure
p (1..10)
.to_a
.collect(&:to_s)

