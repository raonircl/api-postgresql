require 'rails_helper'

RSpec.describe User, type: :model do
  context "validation test" do
    
    it "true validation" do
      user = User.new( name: 'fffs', age: 10 )
      expect(user).to be_valid
    end

    it "only age" do
      user = User.new( age: 101 )
      expect(user).to_not be_valid  
    end

    it "only name" do
      user = User.new( name: nil )
      expect(user).to_not be_valid
    end

  end
  
end
