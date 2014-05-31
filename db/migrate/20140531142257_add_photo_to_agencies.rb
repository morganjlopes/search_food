class AddPhotoToAgencies < ActiveRecord::Migration
  def change
    add_column :agencies, :photo,			  :string
    add_column :agencies, :description, :text
  end
end
