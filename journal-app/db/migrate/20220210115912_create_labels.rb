class CreateLabels < ActiveRecord::Migration[6.1]
  def change
    create_table :labels do |t|
      t.string :label_name
      t.text :label_details

      t.timestamps
    end
  end
end
