def create_object (&block)
	block
end
bo=create_object {|x| puts "x is #{x}"}
bo.call('Hi')
bo.call(2016)

puts "_________________"
puts "-----------------"

def n_times (x)
	lambda {|n| puts x*n}
end
p1=n_times (23)
p1.call(3)
p1.call(4)
p2=n_times('Hi')
p2.call(3)

puts "_________________"
puts "-----------------"

def generate_power 
	value=1
	lambda{value+=value}
end
obj=generate_power
p obj.call
p  obj.call
p  obj.call

puts "_________________"
puts "-----------------"

lamb1=->arg {puts "in lamb1 with #{arg}"}
lamb2=->arg1,arg2 {puts "in lamb2 with #{arg1} and #{arg2}"}
lamb3=->(arg1,arg2) {puts "in lamb3 with #{arg1} and #{arg2}"}

lamb1.call "Hello"
lamb2.call "Hello", "Hi"
lamb3.call "Hello", "Hello"