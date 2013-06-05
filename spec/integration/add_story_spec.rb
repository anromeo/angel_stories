require 'spec_helper'

feature "a user adds a story" do

	def require_content(content)
		page.should have_content(content)
	end

	before do
		visit '/'
		click_link '+ Angel Story'
	end

	scenario "a user adds a story" do
		fill_in "author", with: "Barney"
		fill_in "angel", with: "Robin"
		fill_in "story", with: "She was just so awesome to me"
		click_button "+ Angel Story"
		require_content("Thank you for the story!")
		require_content("Barney")
		require_content("Robin")
		require_content("She was just so awesome to me")
	end

	scenario "a user tries to add a story with no content" do
		fill_in "author", with: "Barney"
		fill_in "angel", with: "Robin"
		click_button "+ Angel Story"
		require_content("Please, enter a story.")
	end

	scenario "a user adds a story with content but no author or angel" do
		fill_in "story", with: "She was just so awesome to me"
		click_button "+ Angel Story"
		require_content("Thank you for the story!")
		require_content("Anonymous")
		require_content("She was just so awesome to me")
	end
end