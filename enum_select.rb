series=Enumerator.new do |y|
  number=0
  count=1
  loop do
    number+=count
    count+=1
    y.yield number
    puts count
  end
end

def infinite_select(enum,&block)
  Enumerator.new do |yielder|
    enum.each do |value|
      yielder.yield(value) if block.call(value)
    end
  end
end

p infinite_select(series){|val| val%10==0}.first(5)
