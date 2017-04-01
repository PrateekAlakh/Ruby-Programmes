def palindrome?(n)
  n=n.to_s
  n==n.reverse
end
def Integer.all
  Enumerator.new do |y,n:0|
    loop{y.yield n+=1}
  end.lazy
end
p Integer.all
.select{|x| (x%3).zero?}
.select{|i| palindrome?(i)}
.first(10)
