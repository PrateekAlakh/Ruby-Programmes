lam=lambda{|x| puts x}
lam.call(5)
#lam.call
#lam.call(1,2,3)

proc=Proc.new{|x| puts x}
proc.call(5)
proc.call
proc.call(1,2,3)
