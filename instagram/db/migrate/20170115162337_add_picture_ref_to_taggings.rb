class AddPictureRefToTaggings < ActiveRecord::Migration[5.0]
  def change
    add_reference :taggings, :picture, foreign_key: true
  end
end
