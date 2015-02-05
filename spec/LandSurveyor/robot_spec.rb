require 'spec_helper'

describe "Robot" do

	let (:robot1) { Robot.new(1, 1, 'NORTH')}
	let (:robot2) { Robot.new(2, 2, 'WEST')}
	let (:robot3) { Robot.new(3, 3, 'EAST')}
	let (:robot4) { Robot.new(4, 4, 'SOUTH')}

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

	describe "Move functions" do

		it "checking moving when facing north" do
			robot1.move
			expect(robot1.y_position).to eq(2)
		end

		it "checking moving when facing west" do
			robot2.move
			expect(robot2.x_position).to eq(1)
		end

		it "checking moving when facing east" do
			robot3.move
			expect(robot3.x_position).to eq(4)
		end

		it "checking moving when facing south" do
			robot4.move
			expect(robot3.x_position).to eq(3)
		end

	end

end