def mul_proc(proc1,proc2)
  proc1.call
  proc2.call
end
p1=Proc.new{p "first"}
p2=Proc.new{p "Second"}
mul_proc(p1,p2)
