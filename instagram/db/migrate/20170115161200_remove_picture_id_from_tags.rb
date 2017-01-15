class RemovePictureIdFromTags < ActiveRecord::Migration[5.0]
  def change
    remove_reference :tags, :picture
  end
end
