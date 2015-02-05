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

end