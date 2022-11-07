require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "PUT /users/update" do
    let!(:user) { User.create(name: 'John', age: 28) }
      scenario 'valid user attributes' do
        put "/users/#{user.id}", params: {
          user: { name: 'John', age: 28 }
        }
        expect(response.status).to eq(200)  
      end
  end
end
