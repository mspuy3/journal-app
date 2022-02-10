class GlueTasksAndLabels < ActiveRecord::Migration[6.1]
  def change
    add_reference :glues, :tasks, foreign_key: true
    add_reference :glues, :labels, foreign_key: true
  end
end
