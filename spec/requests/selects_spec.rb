require 'rails_helper'

RSpec.describe "Selects", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/selects/create"
      expect(response).to have_http_status(:success)
    end
  end

end
