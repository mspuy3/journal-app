class AddTaskToGlues < ActiveRecord::Migration[6.1]
  def change
    add_reference :glues, :task, null: false, foreign_key: true
  end
end
