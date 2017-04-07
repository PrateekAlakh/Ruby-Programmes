#overriding enum class to add our instance method
class Enumerator
	def infinite_select (&block)
	Enumerator.new do |yielder|
		self.each do |value|
			yielder.yield(value) if block.call(value)
		end
	end
end
end

series=Enumerator.new do |x|
	num=0
	count=0
	loop do
		num+=count
		count+=1
		x.yield num
	end
end

#chaining instance methods on object
p series
.infinite_select{|val| val%10==0}
.infinite_select{|val| val.to_s=~/725432/}
.first(8)
