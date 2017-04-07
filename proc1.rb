cube=Proc.new do |x|
	 x**x
end
p (1..10)
.to_a
.collect(&cube)