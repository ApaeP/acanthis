class RemoveImageFromImages < ActiveRecord::Migration[6.0]
  def change
    remove_column :images, :image
  end
end
