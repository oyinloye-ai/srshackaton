class AddDegreeToInstitutions < ActiveRecord::Migration[5.0]
  def change
    add_column :institutions, :degree, :string
  end
end
