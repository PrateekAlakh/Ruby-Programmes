class Cube

	attr_accessor :cube

	def initialize
		@cube = {}
		# @cube[:front] = [['R','R'],['R','R']]
		# @cube[:up] = [['Y','Y'],['Y','Y']]
		# @cube[:left] = [['B','B'],['B','B']]
		# @cube[:right] = [['G','G'],['G','G']]
		# @cube[:down] = [['W','W'],['W','W']]
		# @cube[:back] = [['O','O'],['O','O']]
		@cube[:front] = [['B','W'],['B','Y']]
		@cube[:up] = [['B','R'],['O','G']]
		@cube[:left] = [['O','W'],['W','W']]
		@cube[:right] = [['O','G'],['O','Y']]
		@cube[:down] = [['R','G'],['R','B']]
		@cube[:back] = [['G','R'],['Y','Y']]
		# for future testing purposes
		# @cube[:front] = [['R1','R2'],['R3','R4']]
		# @cube[:up] = [['Y1','Y2'],['Y3','Y4']]
		# @cube[:left] = [['B1','B2'],['B3','B4']]
		# @cube[:right] = [['G1','G2'],['G3','G4']]
		# @cube[:down] = [['W1','W2'],['W3','W4']]
		# @cube[:back] = [['O1','O2'],['O3','O4']]
	end

	def F
		temp0 = @cube[:up][1][0]
		temp1 = @cube[:up][1][1]
		@cube[:up][1][0] = @cube[:left][1][1]
		@cube[:up][1][1] = @cube[:left][0][1]
		@cube[:left][1][1] = @cube[:down][0][1]
		@cube[:left][0][1] = @cube[:down][0][0]
		@cube[:down][0][1] = @cube[:right][0][0]
		@cube[:down][0][0] = @cube[:right][1][0]
		@cube[:right][0][0] = temp0
		@cube[:right][1][0] = temp1
		temp = @cube[:front][0][0]
		@cube[:front][0][0] = @cube[:front][1][0]
		@cube[:front][1][0] = @cube[:front][1][1]
		@cube[:front][1][1] = @cube[:front][0][1]
		@cube[:front][0][1] = temp
	end

	def U
		temp0 = @cube[:front][0][0]
		temp1 = @cube[:front][0][1]
		@cube[:front][0][0] = @cube[:right][0][0]
		@cube[:front][0][1] = @cube[:right][0][1]
		@cube[:right][0][0] = @cube[:back][1][1]
		@cube[:right][0][1] = @cube[:back][1][0]
		@cube[:back][1][1] = @cube[:left][0][0]
		@cube[:back][1][0] = @cube[:left][0][1]
		@cube[:left][0][0] = temp0
		@cube[:left][0][1] = temp1
		temp = @cube[:up][0][0]
		@cube[:up][0][0] = @cube[:up][1][0]
		@cube[:up][1][0] = @cube[:up][1][1]
		@cube[:up][1][1] = @cube[:up][0][1]
		@cube[:up][0][1] = temp
	end

	def R
		temp0 = @cube[:down][0][1]
		temp1 = @cube[:down][1][1]
		@cube[:down][0][1] = @cube[:front][0][1]
		@cube[:down][1][1] = @cube[:front][1][1]
		@cube[:front][0][1] = @cube[:up][0][1]
		@cube[:front][1][1] = @cube[:up][1][1]
		@cube[:up][0][1] = @cube[:back][0][1]
		@cube[:up][1][1] = @cube[:back][1][1]
		@cube[:back][0][1] = temp0
		@cube[:back][1][1] = temp1
		temp = @cube[:right][0][0]
		@cube[:right][0][0] = @cube[:right][0][1]
		@cube[:right][0][1] = @cube[:right][1][1]
		@cube[:right][1][1] = @cube[:right][1][0]
		@cube[:right][1][0] = temp
	end

	def solved?
		@cube.each do |k,v|
			if !(v[0][0] == v[0][1] and v[0][1] == v[1][0] and v[1][0] == v[1][1])
				return false
			end
		end
		return true
	end

end
cube = Cube.new
ucount = rcount = total = fcount = 0
p cube.cube
while true
	cube.U
	ucount += 1
	total = ucount
	break if cube.solved?
	if ucount > 9
		cube.U
		ucount = 0
		break if cube.solved?
	end 
	cube.R
	rcount += 1
	total += rcount
	if rcount > 9
		cube.R
		rcount = 0
		break if cube.solved?
	end 
	break if cube.solved?
	if total >= 18
		total = 0
		fcount += 1
		cube.F
		if fcount > 9
			cube.F
			fcount = 0
		end
		puts "U=#{ucount} and R=#{rcount} and F=#{fcount}"
		break if cube.solved?
	end
end
puts "U=#{ucount} and R=#{rcount}"