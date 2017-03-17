class AddRepostIdToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :repost_id, :integer
  end
end
