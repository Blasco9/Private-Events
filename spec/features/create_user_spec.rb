require 'rails_helper'

RSpec.describe 'Creating a new user', type: :feature do
  scenario 'valid creation' do
    visit new_user_path
    fill_in 'Username', with: 'John Doe'
    click_on 'Create User'
    expect(page).to have_content('Welcome, John Doe')
  end

  scenario 'invalid creation' do
    visit new_user_path
    click_on 'Create User'
    expect(page).to have_content("Username can't be blank")
  end
end
