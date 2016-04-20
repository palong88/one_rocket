class CreateAdminTasks < ActiveRecord::Migration
  def change
    create_table :admin_tasks do |t|
      t.string :title
      t.string :description

      t.string :media
      t.integer :due_date
      t.timestamps null: false
    end
  end
end
