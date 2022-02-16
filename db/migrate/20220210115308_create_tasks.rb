class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.text :task_details
      t.datetime :task_deadline
      t.boolean :task_done

      t.timestamps
    end
  end
end
