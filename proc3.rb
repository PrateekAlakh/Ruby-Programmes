def test
	yield 7
end

test {|x| p x}

puts "----------"
abc=Proc.new {|x| p x}
test(&abc)

puts "----------"
xyz=Proc.new {p "Hello"}
#similar to method call
xyz.call