class AddNameToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :name, :string
    add_column :employees, :start_date, :date
    
  end
end