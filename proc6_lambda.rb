def test
	ob=Proc.new{return "123"}
	a=ob.call
	puts "a is = #{a}"
	"789"
end
b=test
p b         