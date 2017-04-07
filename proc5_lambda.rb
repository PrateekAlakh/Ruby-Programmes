strings=["abc","xyz","def"]
p strings
symbolize = lambda {|x| x.to_sym}
p strings.collect(&symbolize)