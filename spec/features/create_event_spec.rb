require 'rails_helper'

RSpec.describe 'Creating a new event', type: :feature do
  scenario 'valid creation' do
    visit new_user_path
    fill_in 'Username', with: 'John Doe'
    click_on 'Create User'
    visit new_event_path
    fill_in 'Name', with: 'Test Event'
    fill_in 'Date', with: '01/03/2019'
    fill_in 'Description', with: 'Description'
    click_button 'Create Event'
    expect(page).to have_content('Event created successfuly')
  end

  scenario 'invalid creation' do
    visit new_user_path
    fill_in 'Username', with: 'John Doe'
    click_on 'Create User'
    visit new_event_path
    click_button 'Create Event'
    expect(page).to have_content("Name can't be blank")
  end
end