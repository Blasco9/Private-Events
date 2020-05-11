require 'rails_helper'

RSpec.describe "EventAttendances", type: :request do

  describe "GET /create" do
    it "returns http success" do
      get "/event_attendances/create"
      expect(response).to have_http_status(:success)
    end
  end

end
