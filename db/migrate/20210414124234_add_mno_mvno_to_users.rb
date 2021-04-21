class AddMnoMvnoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :mno_mvno, :string
  end
end
