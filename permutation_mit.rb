a="12345"
p a.split("")
.collect!{|x| x.to_i}
.permutation
.to_a
.each{|x| p x.join}
