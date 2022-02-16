class CreateGlues < ActiveRecord::Migration[6.1]
  def change
    create_table :glues do |t|
      t.bigint :task_id
      t.bigint :label_id

      t.timestamps
    end
  end
end
