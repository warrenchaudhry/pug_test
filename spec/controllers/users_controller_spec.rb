require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  let(:valid_attributes) do
    attribs = {
                first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                email: Faker::Internet.email,
                password: "admin1234",
                password_confirmation: "admin1234",
                country: 'Philippines',
                language: 'Filipino'
               }
  end
  let(:invalid_attributes) { build_attributes(:user, first_name: nil, last_name: nil, email: nil) }

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create with valid attributes" do
    it "redirects to dashboards_path" do
      process :create, method: :post, params: {user: valid_attributes}
      expect(response).to redirect_to(dashboards_path)
    end
    it "adds a new User record" do

      expect{
             process :create, method: :post, params: {user: valid_attributes}
           }.to change(User,:count).by(1)
    end
  end

  describe "POST #create with invalid attributes" do
    it "re-renders new template" do
      process :create, method: :post, params: {user: invalid_attributes}
      expect(response).to render_template :new
    end
  end

  # describe "GET #destroy" do
  #   it "redirects to login_path" do
  #     process :destroy, method: :delete, params: {}
  #     expect(response).to redirect_to(login_path)
  #   end
  # end


end
