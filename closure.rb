def counter
  n=0
  return Proc.new{n+=1}
end

a=counter
(5).times{p a.call}
