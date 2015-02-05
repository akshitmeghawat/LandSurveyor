require 'spec_helper'

describe "Robot" do

	let (:robot1) { Robot.new(0, 0, 'NORTH')}

	it "checking x position of robot" do
		expect(robot1.x_position).to eq(0)
	end

	it "checking y position of robot" do
		expect(robot1.y_position).to eq(0)
	end

	it "checking orientation of robot" do
		expect(robot1.check_orientation).to eq('NORTH')
	end
	
end