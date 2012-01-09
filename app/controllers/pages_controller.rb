class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def sign_in
    @title = "Sign In"
  end

  def terms
    @title = "Terms of Service"
  end

  def contact
    @title = "Contact"
  end

  def site_map
    @title = "Site Map"
  end

  def about
    @title = "About"
  end

end
