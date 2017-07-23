require 'rails_helper'

RSpec.describe Vc, type: :model do
  before :each do
   @vc = Vc.new
   end
   
   it "is valid with valid attributes" do
    @vc.name = "noname"
    @vc.department = "noname"
	@vc.year = 2017
	 expect(@vc).to be_valid
 end
 it "is invalid without a name" do
  	@vc.name = nil
  	expect(@vc).to_not be_valid
  end	
  
it "is invalid without a department" do
  	@vc.department = nil
  	expect(@vc).to_not be_valid
  end	
  
it "is invalid without a year" do
  	@vc.year = nil
  	expect(@vc).to_not be_valid
  end	
end