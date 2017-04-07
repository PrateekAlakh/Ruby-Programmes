require_relative 'f1'

class Two
	attr_reader :first, :second

	def first
		@first * 100
	end
	def initialize(p1, p2)
		@first = p1
		@second = p2
	end
	def sum
		# obj_one = One.new
		# obj_one.calc(@first, @second)
		# One.calc(@first, @second)
		One.calc(first, second)
	end
end

