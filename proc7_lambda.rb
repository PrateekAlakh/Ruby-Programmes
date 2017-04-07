def test
	ob=lambda do 
		puts "Inside lambda"
		return "123"
	end
	a=ob.call
	puts "a is = #{a}"
	789
end
b=test
p b