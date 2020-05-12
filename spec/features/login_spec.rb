require 'rails_helper'

RSpec.describe 'Log In', type: :feature do
  scenario 'valid login' do
    user = User.create(username: 'John Doe')
    visit login_path
    fill_in 'User Name', with: 'John Doe'
    click_on 'Log In'
    expect(page).to have_content('Hello John Doe')
  end

  scenario 'invalid login' do
    visit login_path
    fill_in 'User Name', with: 'John Doe'
    click_on 'Log In'
    expect(page).to have_content('Invalid user name')
  end
end