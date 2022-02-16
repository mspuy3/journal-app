class AddUserIdToGlues < ActiveRecord::Migration[6.1]
  def change
    add_column :glues, :user_id, :integer
    add_index :glues, :user_id
  end
end
