series=Enumerator.new do |y|
  number=0
  count=1
  loop do
    number+=count
    count+=1
    y.yield number
    puts "YO"
  end
end

puts series.first(5)
