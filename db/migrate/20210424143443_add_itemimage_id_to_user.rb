class AddItemimageIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :itemimage_id, :string
  end
end
