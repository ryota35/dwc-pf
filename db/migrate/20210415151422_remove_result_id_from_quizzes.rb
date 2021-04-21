class RemoveResultIdFromQuizzes < ActiveRecord::Migration[5.2]
  def change
    remove_column :quizzes, :result_id, :integer
  end
end
