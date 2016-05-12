class RenameColumnWhenineadminTaskstodueWhen < ActiveRecord::Migration
  def change

  	rename_column :eadmin_tasks, :when, :when_due
  end
end
