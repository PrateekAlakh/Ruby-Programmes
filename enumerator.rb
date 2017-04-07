series=Enumerator.new do |x|
	num=0
	count=0
	loop do
		num+=count
		count+=1
		x.yield num
	end
end
#5.times{print series.next}
p series.first(9999999)
p series.count