class CreateArticleTagRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :article_tag_relations do |t|
      t.integer :article_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
