#Contains the characteristics of a robot. Also contains functions for movement

class Robot

	def initialize(x, y, orientation)
		@x = x
		@y = y
		@orientation = orientation
	end

	def x_position
		@x
	end

	def y_position
		@y
	end

	def check_orientation
		@orientation
	end

	def turn_left
		case @orientation
		when 'NORTH'
			@orientation = 'WEST'
		when 'WEST'
			@orientation = 'SOUTH'
		when 'SOUTH'
			@orientation = 'EAST'
		when 'EAST'
			@orientation = 'NORTH'
		end
	end

	def turn_right
		case @orientation
		when 'NORTH'
			@orientation = 'EAST'
		when 'WEST'
			@orientation = 'NORTH'
		when 'SOUTH'
			@orientation = 'WEST'
		when 'EAST'
			@orientation = 'SOUTH'
		end
	end

end