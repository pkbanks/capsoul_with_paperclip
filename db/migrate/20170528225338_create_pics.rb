class CreatePics < ActiveRecord::Migration[5.0]
  def change
    create_table :pics do |t|
      t.string :title
      t.text :description
      t.attachment :image

      t.timestamps
    end
  end
end
