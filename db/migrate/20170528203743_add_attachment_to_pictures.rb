class AddAttachmentToPictures < ActiveRecord::Migration[5.0]
  def change
    add_column(:pictures,:image, :attachment)
  end
end
