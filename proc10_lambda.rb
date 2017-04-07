def counter
	n=0
	return Proc.new {n+=1}
end
a=counter
p a.call
p a.call
p a.call
puts "----------"
b=counter
p b.call
p b.call
p a.call
