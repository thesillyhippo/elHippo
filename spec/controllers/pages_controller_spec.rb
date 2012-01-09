require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content => "Elusive Hippo | Home")
    end
  end

  describe "GET 'sign_in'" do
    it "should be successful" do
      get 'sign_in'
      response.should be_success
    end
    it "should have the right title" do
      get 'sign_in'
      response.should have_selector("title", :content => "Elusive Hippo | Sign In")
    end
  end

  describe "GET 'terms'" do
    it "should be successful" do
      get 'terms'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'terms'
      response.should have_selector("title", :content => "Elusive Hippo | Terms of Service")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "should have the right title" do
      get 'contact'
      response.should have_selector("title", :content => "Elusive Hippo | Contact")
    end
  end

  describe "GET 'site_map'" do
    it "should be successful" do
      get 'site_map'
      response.should be_success
    end
    it "should have the right title" do
      get 'site_map'
      response.should have_selector("title", :content => "Elusive Hippo | Site Map")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    it "should have the right title" do
      get 'about'
      response.should have_selector("title", :content => "Elusive Hippo | About")
    end
  end

end
