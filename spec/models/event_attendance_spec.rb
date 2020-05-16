require 'rails_helper'

RSpec.describe EventAttendance, type: :model do
  context 'Associations tests' do
    it { should belong_to(:event) }
    it { should belong_to(:attendee) }
  end
end
