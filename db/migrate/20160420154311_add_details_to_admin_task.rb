class AddDetailsToAdminTask < ActiveRecord::Migration
  def change
    add_column :admin_tasks, :when, :string
  end
end
