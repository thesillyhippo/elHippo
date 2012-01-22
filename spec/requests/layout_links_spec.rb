require 'spec_helper'

describe "LayoutLinks" do
  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Elusive Hippo | Home")
  end

  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Elusive Hippo | Contact")
  end

  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "Elusive Hippo | About")
  end

  it "should have a Sign In page at '/sign_in'" do
    get '/sign_in'
    response.should have_selector('title', :content => "Elusive Hippo | Sign In")
  end
  
  it "should have a Site Map page at '/site_map'" do
    get '/site_map'
    response.should have_selector('title', :content => "Elusive Hippo | Site Map")
  end
  
  it "should have a Terms page at '/terms'" do
    get '/terms'
    response.should have_selector('title', :content => "Elusive Hippo | Terms of Service")
  end

  it "should have a signup page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign up")
  end

  describe "when not signed in" do
    it "should have a signin link" do
      visit root_path
      response.should have_selector("a", :href => signin_path, :content => "Sign in")
    end
  end

  describe "when signed in" do
    before(:each) do
      @user = Factory(:user)
      visit signin_path
      fill_in :email, :with => @user.email
      fill_in :password, :with => @user.password
      click_button
    end

    it "should have a signout link" do
      visit root_path
      response.should have_selector("a", :href => signout_path, :content => "Sign out")
    end

    it "should have a profile link" do
      visit root_path
      response.should have_selector("a", :href => user_path(@user), :content => "Profile")
    end
  end
  
end
