class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
  
  def self.up
    rename_table :posts, :post
  end
  
  def self.down
    rename_table :posts, :post
  end
end
