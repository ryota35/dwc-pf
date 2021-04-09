class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.integer :user_id
      t.integer :admin_id
      t.string :title
      t.string :body
      t.integer :level

      t.timestamps
    end
  end
end
