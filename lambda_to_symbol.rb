strings=["abc","xyz"]
symbolize=lambda{|x| x.to_sym}
p strings.collect(&symbolize)
