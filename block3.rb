def my_if (condition,then_clause, else_cluase)
	if condition
		then_clause.call
	else
		else_cluase.call
	end
end
10.times do |val|
	my_if val<5,
	->{puts "#{val} is small"},
	->{puts "#{val} is big"}
end

puts "_________________"
puts "-----------------"

def my_while (cond,&body)
	while cond.call
		body.call
	end
end
a=0
my_while ->{a<5} do
	puts a
	a+=1
end

puts "_________________"
puts "-----------------"

proc1 = lambda do |a, *b,&block|
	puts "a=#{a.inspect}"
	puts "b=#{b.inspect}"
	block.call
end
proc1.call(1,2,3,4,5) {p 'inside block'}


# proc2 = -> a, *b, &block do
# 	p "a=#{a.inspect}"
# 	p "b=#{b.inspect}"
# 	block.call
# end
# proc2.call (1,2,3,4,5) {p 'inside block'}
# p proc2
