arr=[]
arr.push"hi"
arr.push"Pant"
arr.push"bye"

arr.each_with_index do |d,i|
  puts "#{d} : #{i}"
end

arr.push "to"

arr.each_with_index do |d,i|
  puts "#{d} : #{i}"
end
p arr

arr.shift


arr.each_with_index do |d,i|
  puts "#{d} : #{i}"
end

arr.pop

arr.each_with_index do |d,i|
  puts "#{d} : #{i}"
end

arr.unshift "Him"

arr.each_with_index do |d,i|
  puts "#{d} : #{i}"
end

p arr
