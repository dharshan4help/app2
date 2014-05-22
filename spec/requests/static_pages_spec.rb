require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit home_path
      expect(page).to have_content('Home')
    end
    it "should have the base title" do
    visit home_path
          expect(page).to have_title("Ruby on Rails Tutorial Sample App")
	      end
  end
  
  describe "Help page" do
    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
  end
  it "should have the title 'Help'" do
        visit help_path
	      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
	          end
  end

  describe "About page" do
  it "should have the content 'About'" do
  visit about_path
  expect(page).to have_content('About')
  end
it "should have the title 'About Us'" do
      visit about_path
            expect(page).to have_title("Ruby on Rails Tutorial Sample App")
	        end

  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit contact_path
        expect(page).to have_content('Contact')
	  end
	  it "should have the title 'Contact'" do
	        visit contact_path
		            expect(page).to have_title("Ruby on Rails Tutorial Sample App")
			                    end

					      end

end
