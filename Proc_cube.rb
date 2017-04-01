cube=Proc.new do |n|
  n**3
end


a=[1,2,3,4].collect(&cube)
p a
