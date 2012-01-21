# == Schema Information
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  content    :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Post < ActiveRecord::Base
  belongs_to :user
  
  validates :user_id, :presence => true
  validates :content, :length => { :maximum => 400 }, :presence => true
end
