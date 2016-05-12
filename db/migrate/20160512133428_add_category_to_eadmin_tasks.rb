class AddCategoryToEadminTasks < ActiveRecord::Migration
  def change
    add_column :eadmin_tasks, :category, :string
  end
end
