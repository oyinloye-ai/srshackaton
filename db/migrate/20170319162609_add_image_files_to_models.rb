class AddImageFilesToModels < ActiveRecord::Migration[5.0]
  def change
  	add_column :institutions , :image, :string
  	add_column :expenditures , :image, :string
  	add_column :guarantors , :image, :string
  	add_column :cooperative_weights , :image, :string
  end
end
