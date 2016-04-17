class AddUserIdToEadminTasks < ActiveRecord::Migration
  def change
    add_column :eadmin_tasks, :user_id, :integer
    add_index :eadmin_tasks, :user_id
  end
end
