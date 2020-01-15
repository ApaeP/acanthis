class CreateAntiques < ActiveRecord::Migration[6.0]
  def change
    create_table :antiques do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
