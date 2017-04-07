#explicit enumerator
series=Enumerator.new do |x|
	num=0
	count=0
	loop do
		num+=count
		count+=1
		x.yield num
	end
end

#conditioning enumerator 
def infinite_select (enum, &block)
	Enumerator.new do |yielder|
		enum.each do |value|
			yielder.yield(value) if block.call(value)
		end
	end
end

p infinite_select(series){|val| val%10==0}.first(5)