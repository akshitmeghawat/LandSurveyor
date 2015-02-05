#Initiates a grid and robots. Gives commands to robots.

class Surveyor

	def initialize
		@grid2 = Grid.new(5, 5)
	end

	def start

		robot_output = []
		grid_input = gets.chomp
		grid_upper_right = grid_input.split(" ")
		grid1 = Grid.new(grid_upper_right[0].to_i, grid_upper_right[1].to_i)
		robot_declare = gets.chomp

		while(robot_declare != 'exit')
			
			robot_input = robot_declare.split(' ')
			robot1 = Robot.new(robot_input[0].to_i, robot_input[1].to_i, robot_input[2])
			
			move_input = gets.chomp
			move_commands = move_input.split(' ')

			move_commands.each do |command|

				case command
				when 'LEFT'
					robot1.turn_left
				when 'RIGHT'
					robot1.turn_right
				when 'MOVE'
					robot1.move
				end

			end

			robot_output.push(robot1.to_s)
			robot_declare = gets.chomp

		end

		robot_output.each do |position|
			puts position
		end

	end

	def start_test
		input = Kernel.gets.chomp
		@grid2.new(input)
	end

end