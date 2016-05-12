class User < ActiveRecord::Base
  rolify
  belongs_to :role
  after_create :set_buildings

  

  private
    def set_buildings
      id = self.id
      

      AdminTask.all.each do |default_b|
       
        eadmin_tasks.create(title: default_b.title, description: default_b.description, media: default_b.media, due_date: default_b.due_date, user_id: id )
      end
    end



    
    
    
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  
  has_many :admin_tasks
  has_many :eadmin_tasks

end