class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.integer :score_id
      t.integer :quiz_id
      t.integer :selection_result
      t.string :judgement

      t.timestamps
    end
  end
end
