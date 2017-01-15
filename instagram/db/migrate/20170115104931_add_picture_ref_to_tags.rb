class AddPictureRefToTags < ActiveRecord::Migration[5.0]
  def change
    add_reference :tags, :picture, foreign_key: true
  end
end
