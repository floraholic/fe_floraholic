require "rails_helper"

RSpec.describe "Landing Page", type: :feature do 
	it "has a link for registered users to log in" do 
		visit root_path

		expect(page).to have_content("Already registered?")
		expect(page).to have_link("log in")
		expect(page).to have_content("New user?")
		expect(page).to have_link("register here")
	end
end 