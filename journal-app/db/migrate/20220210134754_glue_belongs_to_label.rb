class GlueBelongsToLabel < ActiveRecord::Migration[6.1]
  def change
    add_reference :glues, :label, foreign_key: true
    add_reference :glues, :task, foreign_key: true
  end
end
