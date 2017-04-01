para="This is the, home can't for me brother"
para=para.downcase
para=para.gsub(/[,]|["]/,' ')
h={}
arr=para.split
while 0<arr.size
  h[arr[0]]=arr.count(arr[0])
  arr.delete(arr[0])
end
h=h.sort_by{|k,v| v}
h.each do |k,v|
  puts "#{k} = #{v}"
end
