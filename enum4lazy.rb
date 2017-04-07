def Integer.all
	Enumerator.new do |yielder , n:0|
		loop {yielder.yield (n+=1)}
	end.lazy
end
def palindrome? (n)
	n=n.to_s
	n==n.reverse
end
p Integer.all
.select{|x| (x%3).zero?}
.select{|y| palindrome?(y)}
.first(10)

a=Integer.all.select{|x| (x%3).zero?}
p a
b=a.select{|y| palindrome?(y)}
p b
p b.first(7)