require "spec_helper"

describe "Surveyor"  do 

	it "tests the launch" do

		grid1 = Grid.new(6, 6)
  	allow(Grid).to receive(:new) { grid1 }
  	allow(Kernel).to receive(:gets) { "6, 6" }
  	expect(grid1).to receive(:new).with("6, 6")

  	surveyor1 = Surveyor.new
  	surveyor1.start_test

	end

end