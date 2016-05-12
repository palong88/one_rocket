class Employee < ActiveRecord::Base

	rolify
  
  belongs_to :role


 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



  has_many :admin_tasks
  has_many :eadmin_tasks
end
