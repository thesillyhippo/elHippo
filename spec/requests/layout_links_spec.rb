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
end
