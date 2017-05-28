class RemoveUrlFromPictures < ActiveRecord::Migration[5.0]
  def change
    remove_column(:pictures, :title)
    remove_column(:pictures, :url)
  end
end
