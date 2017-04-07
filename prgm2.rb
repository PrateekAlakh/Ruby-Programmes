class MyClass
	attr_reader :num, :str
 	def initialize(*args)
 		puts "-------- args.class = #{args.class}"
 		args.each do |item|
 			puts item
 		end
	  if args[0].is_a? Numeric
	   #perform initialization in first case
	   @num = args[0]
	  elsif args[0].is_a? String
	   #perform initialization in second case
	   @str = args[0]
	  else raise TypeError
	  end
 	end

end

o1 = MyClass.new(15)
o2 = MyClass.new(1)
o3 = MyClass.new(5,8)
o4 = MyClass.new('hello')
puts "------------o1.num = " + o1.num.to_s
puts "------------o1.str = " + o1.str.to_s
puts "------------o2.str = " + o2.str.to_s
puts "------------o1.num = " + o2.num.to_s

puts "------------o4.num = " + o4.num.class.to_s
puts "------------o4.str = " + o4.str.to_s


