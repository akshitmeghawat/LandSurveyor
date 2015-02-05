require 'spec_helper'

describe "Grid" do

	let (:grid1) { Grid.new(5,5)}

	describe "checking grid type" do

		it "check class type" do
			expect(grid1.class).to eq(Grid.class)
		end
		
	end
	
end