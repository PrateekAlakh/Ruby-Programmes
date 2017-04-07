a=[1,2,3,1,4,5,7,8,3,4]
hash=Hash.new(0)
a.each do |x|
	hash[x]+=1
end
res = hash.find_all {|k,v| v == 1}
p res