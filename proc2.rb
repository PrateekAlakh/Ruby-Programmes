proc2=Proc.new do |x|
	 x.floor
end
p [1.4,3.5,1.5,354.22,45666.22,566.22].collect!(&proc2)