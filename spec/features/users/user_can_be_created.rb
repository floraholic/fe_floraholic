require "rails_helper"

RSpec.describe "User registration form", type: :feature do 
	it "creates a new user" do 
		user = create(:user)
		visit root_path

		click_on "register now!"

		expect(current_path).to eq(new_user_path)

		fill_in :f_name, with: "Bob"
		fill_in :l_name, with: "Marley"
		fill_in :email, with: "bob@ilovegrass.com"
		fill_in :phone, with: "303-432-8934"
		fill_in :street, with: "Reefer St."
		fill_in :city, with: "Weed City"
		fill_in :state, with: "CA"
		fill_in :password, with: "weed123"
		fill_in :password_confirmation, with: "weed123"
	end
end 