q=[]
q.push "a"
q.push "b"
q.push "c"
q.push "d"
q.push "e"
q.push "f"
p "----------"
p "PUSH"
q.each_with_index do |data,index|
	puts "#{index}=>#{data}"
end
p "-------------"
p "SHIFT"
q.shift
q.each_with_index do |data,index|
	puts "#{index}=>#{data}"
end
p "---------------"
p "POP"
q.pop
q.each_with_index do |data,index|
	puts "#{index}=>#{data}"
end
p "--------"
p "UNSHIFT"
q.unshift "z"
q.each_with_index do |data,index|
	puts "#{index}=>#{data}"
end

p "--------"
q=[1,2,3,4,5,6,7,8]
p q.first(4)
p q.last(4)
p q.first(0)
p q.last(0)

p "--------"
a=Array.new(5,'A')
p a[0].object_id
p a[1].object_id
a[1]='Hi'
p a[1].object_id
p a

p "----------"
b=Array.new(3,Array.new)
p b
b[0]<<10
p b
b[1]<<20
p b
b[2]=[9,8,7]
p b