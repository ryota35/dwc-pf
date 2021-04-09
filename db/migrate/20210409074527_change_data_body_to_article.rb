class ChangeDataBodyToArticle < ActiveRecord::Migration[5.2]
  def change
    change_column :articles, :body, :text
  end
end
