a=["abc",:sym1,"def1",:sym2,:sym3,"hjk"]
lam=lambda {|x| x.is_a?Symbol}
p a.select(&lam)
