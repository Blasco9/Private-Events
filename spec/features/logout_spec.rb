require 'rails_helper'

RSpec.describe 'Log Out', type: :feature do
  scenario 'logout' do
    visit new_user_path
    fill_in 'Username', with: 'John Doe'
    click_on 'Create User'
    click_on 'Logout'
    expect(page).to have_content('You logged out')
  end
end