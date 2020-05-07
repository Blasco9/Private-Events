require 'rails_helper'

RSpec.describe Event, type: :model do
  context 'Validations tests' do
    let(:user) { User.create(username: 'user') }
    let(:event) { user.created_events.build(name: 'event', date: '2020-05-06', description: 'description') }

    it 'event should be valid if it has a name' do
      expect(event).to be_valid
    end

    it "event should be invalid if it doesn't have a name" do
      event.name = ''
      expect(event).not_to be_valid
    end

    it 'event should be valid if it has a date' do
      expect(event).to be_valid
    end

    it "event should be invalid if it doesn't have a date" do
      event.date = ''
      expect(event).not_to be_valid
    end

    it 'event should be valid if it has a description' do
      expect(event).to be_valid
    end

    it "event should be invalid if it doesn't have a description" do
      event.description = ''
      expect(event).not_to be_valid
    end
  end
end
