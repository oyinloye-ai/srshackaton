class RenamePhotoUrlToImage < ActiveRecord::Migration[5.0]
  def change
  	rename_column :users, :photourl, :image
  end
end
