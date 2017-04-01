class Shape
  def draw
    puts "nhi"
  end
end

s=Shape.new
sum=0
[1,2,3].each do |val;s|
  s=val*val
  puts s
  sum+=s
end
puts sum
s.draw
