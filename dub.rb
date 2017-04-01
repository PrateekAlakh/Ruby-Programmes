arr=[1,2,3,1,2,3,5,8,7,3,4,2]
i=0
h={}
while i<arr.size
  h[arr[i]]=arr.count(arr[i])
  i+=1
end

h.each do |k,v|
  if v==1
    puts "#{k}"
end
