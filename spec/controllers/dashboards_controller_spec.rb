require 'rails_helper'

RSpec.describe DashboardsController, type: :controller do
  let(:user) { FactoryGirl.create(:user, password: 'password1234', password_confirmation: 'password1234') }
  let(:valid_session) { login_user(user) }
  describe "GET #index" do
    before :each do
      login_user(user)
    end
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
