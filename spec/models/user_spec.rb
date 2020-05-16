require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Validations tests' do
    let(:user) { User.new(username: 'test_user') }
    let(:dup_user) { user.dup }

    it 'user should be valid if it has a username' do
      expect(user).to be_valid
    end

    it "user should be invalid if it doesn't have a username" do
      user.username = ''
      expect(user).not_to be_valid
    end

    it "user should be valid if it's username is unique" do
      expect(user).to be_valid
    end

    it "user should be invalid if it's username is not unique" do
      user.save
      expect(dup_user).not_to be_valid
    end
  end

  context 'Associations tests' do
    it { should have_many(:created_events) }
    it { should have_many(:event_attendances) }
    it { should have_many(:appointed_events) }
  end
end
