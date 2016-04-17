class CreateEeducationTasks < ActiveRecord::Migration
  def change
    create_table :eeducation_tasks do |t|
      t.string :title
      t.string :description
      t.string :media
      t.integer :due_date
      t.integer :complete

      t.timestamps null: false
    end
  end
end
