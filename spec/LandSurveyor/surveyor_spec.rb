require "spec_helper"

describe "Surveyor"  do 

	it "test the launch" do

		robot_1 = Robot.new()
  	allow(Robot).to receive(:new) { robot_1 }
  	allow(Kernel).to receive(:gets) { "" }
  	expect(robot_1).to receive(:intialize).with(0, 0, 'NORTH')

  	surveyor1 = Surveyor.new
  	surveyor1.start_test

	end
	
end