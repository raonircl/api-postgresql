require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validation' do
    it { should validate_numericality_of(:age).is_greater_than_or_equal_to(0) }
    it { should validate_presence_of(:name) }
  end
end
