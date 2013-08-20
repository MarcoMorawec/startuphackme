require 'spec_helper'

describe LessonsController do



	describe "index page" do
		it "should have the 'founding team' on the page" do
			visit '/subscriber/'
				page.should have_content('Founding Team') 
		end

		it "should have the right title" do
			visit '/subscriber'
				page.should have_selector('title', 
										:text => "Startup Hack - Weekly Lessons for Startup Entrepreneurs ")
		end

	#works only with Capybara 2.1 and newer -> let's use the stable Capybara version 1.1.4 for now
		# it "pages should have the right title" do
		# 	visit '/subscriber'
		# 		page.should have_title("Startup Hack | From Finding Your Idea to Founding Your Dream")
		# end
	end


	describe "lessons page" do
			
		it "should have the right title 'Weekly Lessons' appended to it" do
			visit 'lessons'
				page.should have_selector('title', 
						:text => "Startup Hack - Weekly Lessons for Startup Entrepreneurs | Outline")
		end

	end

end
