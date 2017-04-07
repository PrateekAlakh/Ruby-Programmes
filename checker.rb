# file=File.open("positives")
file=File.open("negatives")
count=0
total=0
while line=file.gets
		# line=line.split
		total+=1
		if line.end_with?("s\n")
			puts line
			count+=1
		end
end
percent=0.001
percent=(total/count)
puts "percent=#{percent}"
puts "count=#{count}"
puts "total=#{total}"
file.close