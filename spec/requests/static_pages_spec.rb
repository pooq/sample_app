require 'spec_helper'

=begin
describe "StaticPages" do
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_index_path
      response.status.should be(200)
    end
  end
end
=end

describe "Static pages" do

	let(:base_title){ Ruby on Rails Tutorial Samaple App  }



	describe "Home page" do
		#it "should have the content 'Sample App'" do
		  it "should have the h1'Sample App'" do
			visit '/static_pages/home'
		#	page.should have_content('Sample App')
			page.should have_selector('h1', :text=>'Sample App')
		end

         it "should have the title 'Home' " do
			 visit '/static_pages/home'
			 page.should have_selector('title', :text=>"#{base_title} | Home")
		 end

	end



   describe "Help page" do

		 it "should have the h1 'Help'" do
			 visit '/static_pages/help'
			 page.should have_selector('h1', :text=>'Help')
		 end




	   #it "should have the content 'help'" do
	    it "should have the title 'Help' " do
	      visit '/static_pages/help'
#	      page.should have_content('help')
		  page.should have_selector('title', :text=>"#{base_title} | Help")
      end
    end


   describe "About page" do
	  # it "should have the content 'About Us'" do
	   it "should have the h1 'About Us' " do
	   visit '/static_pages/about'
      # page.should have_content('About Us')
	   page.should have_selector('h1', :text=>"About Us")
	   end


		it "should have the title 'About Us'" do
			visit '/static_pages/about'
			page.should have_selector('title', :text=>"#{base_title} | About ")
		end
   end


	describe "Contact page" do
		it "should have the h1 'Contact'" do
		visit '/static_pages/contact'
		page.should have_selector('h1', :text => 'Contact')
	  end

		it "should have the title'Contact'" do
			visit '/static_pages/contact'
			page.should have_selector('title', :text => "#{base_title} | Contact")
		end
	end

end



=begin
describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
#      page.should have_title("Ruby on Rails Tutorial Sample App | Help")
	  page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end


#n capybara版本1.x.x title的写法
#it "should have the title 'About Us'" do
#      visit '/static_pages/about'
 #     page.should have_title('title',
 #                   :text => "Ruby on Rails Tutorial Sample App | About Us")
 #   end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end
=end
