class Admin < ActiveRecord::Base
  rolify
  
  belongs_to :role
  after_create :set_buildings
  after_create :set_role
  

 


    private
    def set_role
      add_role(:admin) if self.roles.blank?
    end

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :admin_tasks
  has_many :eadmin_tasks
 
end