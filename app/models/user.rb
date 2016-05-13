class User < ActiveRecord::Base
  rolify

  belongs_to :role
  after_create :set_buildings
  after_create :set_role

  
  

  private
    def set_buildings
      id = self.id
      

      AdminTask.all.each do |default_b|
       
        eadmin_tasks.create(title: default_b.title, description: default_b.description, media: default_b.media, due_date: default_b.due_date, when_due: default_b.when, category: default_b.category,  user_id: id )
      end
    end



    def set_role
      add_role(:registered)
    end

        def self.with_role(role)
         my_role = Role.find_by_name(role)
         where(:role => my_role)
      end


    
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  
  has_many :admin_tasks
  has_many :eadmin_tasks

end