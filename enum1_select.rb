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
class Enumerator
  def infinite_select(&block)
    Enumerator.new do |yielder|
      self.each do |value|
        yielder.yield(value) if block.call(value)
      end
    end
  end
end

p series
.infinite_select{|val| val%10==0}
.infinite_select{|val| val.to_s=~/3/}
.first(2)
