class AddWhenToEadminTasks < ActiveRecord::Migration
  def change
    add_column :eadmin_tasks, :when, :string
  end
end
