require 'rails_helper'

RSpec.feature "testing" do
  scenario "Checking if everything is working" do
    visit 'users#index'

    click_link 'novo produto'

    fill_in 'nome', with: 'produto 1'
    fill_in 'descrição', with: 'descrição do produto 1 (um)'
    click_button 'criar produto'
  
  expect(page).to have_content('Produto foi cadastrado')
  end
end