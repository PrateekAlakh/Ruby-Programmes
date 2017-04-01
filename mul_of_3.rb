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

mul_of_3=Integer.all
.select{|x| (x%3).zero?}

p mul_of_3.first(10)

m3_pal=mul_of_3.select{|i| palindrome?(i)}

p m3_pal.first(10)