require "rails_helper"

RSpec.feature "Sessions", :type => :feature do
  let (:user) {
    FactoryGirl.create(:user)
  }
  feature "When user sign in" do
    scenario "with valid email and password" do
      visit "/login"

      fill_in "Email", with: user.email
      fill_in "Password", with: 'password1234'
      click_button "LOGIN"
      expect(page).to have_text("Logout")
      expect(page).to have_text(user.name)
    end

    scenario "with incorrect email or password" do
      visit "/login"
      fill_in "Email", with: user.email
      fill_in "Password", with: 'password4321'
      click_button "LOGIN"
      expect(page).to have_text('Sign in')
      expect(page).to have_text("Invalid email or password")
    end
  end

  feature "When an admin sign in" do
    scenario "page should have heading \"Administrator\"" do
      @user = FactoryGirl.create(:user, :admin, password: 'admin1234', password_confirmation: 'admin1234')
      sign_in(@user, 'admin1234')
      expect(page).to have_text("Administrator")
    end
  end

  feature "When a paying customer sign in" do
    scenario "page should have heading \"Paying Customer\"" do
      @user = FactoryGirl.create(:user, :paying, password: 'password1234', password_confirmation: 'password1234')
      sign_in(@user, 'password1234')
      expect(page).to have_text("Paying Customer")
    end
  end

  feature "When a free customer sign in" do
    scenario "page should have heading \"Free Customer\"" do
      sign_in(user, 'password1234')
      expect(page).to have_text("Free Customer")
    end
  end
end
