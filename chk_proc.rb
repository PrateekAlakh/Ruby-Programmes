def test
  ob=Proc.new{return "123"}
  a=ob.call
  puts "a = #{a}"
  "789"
end
b=test
p b
