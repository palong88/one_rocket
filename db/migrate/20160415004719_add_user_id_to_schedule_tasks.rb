class AddUserIdToScheduleTasks < ActiveRecord::Migration
  def change
    add_column :schedule_tasks, :user_id, :integer
    add_index :schedule_tasks, :user_id
  end
end
