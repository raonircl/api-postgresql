require 'rails_helper'

RSpec.feature "testing" do
  scenario "Checking if everything is working" do
    visit 'users'
      @user = User.update( name: 'Di ferrero', age: 34 )

  end
end
