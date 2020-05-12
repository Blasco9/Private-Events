require 'rails_helper'

RSpec.describe 'Inviting a user', type: :feature do
  scenario 'valid invitation' do
    attendee = User.create(username: 'Attendee')
    user = User.create(username: 'John Doe')
    event = user.created_events.create(name: 'Event', date: '2020-05-01', description: 'description')
    visit login_path
    fill_in 'User Name', with: 'John Doe'
    click_on 'Log In'
    click_on 'Send Invitation'
    expect(page).to have_content('New attendee invited')
  end

  scenario 'valid invitation' do
    attendee = User.create(username: 'Attendee')
    user = User.create(username: 'John Doe')
    event = user.created_events.create(name: 'Event', date: '2020-05-01', description: 'description')
    visit login_path
    fill_in 'User Name', with: 'John Doe'
    click_on 'Log In'
    click_on 'Send Invitation'
    click_on 'Send Invitation'
    expect(page).to have_content('User already invited')
  end
end