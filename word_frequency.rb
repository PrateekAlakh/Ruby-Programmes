print "Input string: "
hash=Hash.new(0)
gets.split.each do |word|
	hash[word]+=1
end
hash=hash.sort_by {|key,value| value}.reverse
hash.each do |k,v|
	puts "#{k}\t#{v}"
end