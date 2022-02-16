class CleanGlueTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :glues, :tasks_id
    remove_column :glues, :labels_id
  end
end
