class AddUserIdToEducationTasks < ActiveRecord::Migration
  def change
    add_column :education_tasks, :user_id, :integer
    add_index :education_tasks, :user_id
  end
end
