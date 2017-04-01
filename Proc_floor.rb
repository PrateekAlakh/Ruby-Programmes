a=[1.2,2.3,3.4,4.5,5.6,6.7]
fl=Proc.new do |n|
  n.floor
end
p a.collect!(&fl)
