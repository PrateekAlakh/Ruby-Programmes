arr=["abc",:sym1,"def",:sym2]
a=lambda do |v|
  return v if v.is_a? Symbol
end
p arr.select(&a)
#a=arr.select{|v| v.is_a?Symbol}

