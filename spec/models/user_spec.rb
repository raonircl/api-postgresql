require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'test validation' do
    it 'do name and age test validations' do 
      should validate_numericality_of(:age).is_greater_than_or_equal_to(0).is_less_than_or_equal_to(100)
      should validate_presence_of(:name)
    end    

  end
end
