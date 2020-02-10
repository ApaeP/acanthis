class AddCategoryToAntiques < ActiveRecord::Migration[6.0]
  def change
    add_column :antiques, :category, :string
  end
end
