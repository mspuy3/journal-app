class CleanGlueAgain < ActiveRecord::Migration[6.1]
  def change
    remove_column :glues, :task_id
    remove_column :glues, :label_id
  end
end
