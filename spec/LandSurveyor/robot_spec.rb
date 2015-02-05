require 'spec_helper'

describe "Robot" do

	let (:robot1) { Robot.new(1, 1, 'NORTH')}

	describe "Basic checks" do

		it "checking x position of robot" do
			expect(robot1.x_position).to eq(1)
		end

		it "checking y position of robot" do
			expect(robot1.y_position).to eq(1)
		end

		it "checking orientation of robot" do
			expect(robot1.check_orientation).to eq('NORTH')
		end

	end

	describe "Rotate Functions" do

		it "rotate left" do
			robot1.turn_left
			expect(robot1.check_orientation).to eq('WEST')
		end

		it "rotate right" do
			robot1.turn_right
			expect(robot1.check_orientation).to eq('EAST')
		end

	end

end