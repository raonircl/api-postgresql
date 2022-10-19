require 'rails-helper'

Rspec.describe User, type: :model do
  it 'teste de validação' do
    #user = User.create(name: '', age: 0)
    user = build(:user, name: '', age: 0)

    expect(user).to ep " '' 0 "  
end
