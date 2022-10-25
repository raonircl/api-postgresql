require 'rails_helper'

RSpec.describe User, type: :model do
  describe "test validation" do
    describe "do name and age test validations" do
      it { should validate_presence_of(:name) }
      it { should validate_numericality_of(:age).is_greater_than_or_equal_to(0).is_less_than_or_equal_to(100) }
      it { should validate_length_of(:name).is_at_least(3).is_at_most(50) }
    end
  end  
end
