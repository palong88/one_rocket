class AddCompletedAtToEadminTasks < ActiveRecord::Migration
  def change
    add_column :eadmin_tasks, :completed_at, :datetime
  end
end
