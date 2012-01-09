class Post < ActiveRecord::Base
  belongs_to :user
  
  validates :user_id, :presence => true
  validates :content, :length => { :maximum => 400 }, :presence => true
end
