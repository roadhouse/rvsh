require 'rails_helper'

RSpec.describe "Rvshes", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/rvsh/index"
      expect(response).to have_http_status(:success)
    end
  end

end
