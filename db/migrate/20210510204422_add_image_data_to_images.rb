class AddImageDataToImages < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :image_data, :text
  end
end
