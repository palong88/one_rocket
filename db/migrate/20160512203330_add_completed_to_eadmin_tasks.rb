class AddCompletedToEadminTasks < ActiveRecord::Migration
  def change
    add_column :eadmin_tasks, :completed, :integer
  end
end
