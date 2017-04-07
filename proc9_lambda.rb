def mul_proc(proc1,proc2)
	proc1.call
	proc2.call
end
proc1 =Proc.new{p "first"}
proc2 =Proc.new{p "second"}
mul_proc(proc1,proc2)
 
 puts "---------"
proc =Proc.new{p "Hello World"}
lam=lambda{p "Hello!"}
p proc.class
p lam.class
p proc
p lam

 puts "#########"
lam=lambda{|x| p x}
lam.call(5)

 puts "---------"
pr=Proc.new{|x| puts x}
pr.call(4)
pr.call
pr.call(1,2,3)

 puts "---------"
 def lambda_test
 	lam=lambda {return}
 	lam.call
 	puts "Hello"
 end
 p lambda_test

 puts "########"
 def proc_test
 	pr=Proc.new {return}
 	pr.call
 	puts "Hello"
 end
p proc_test