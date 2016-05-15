class ChangeDateFormatInUsers < ActiveRecord::Migration
  def change


    change_column :users, :start_date, :date
 
  end
end
