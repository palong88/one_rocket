class EadminTask < ActiveRecord::Base
	resourcify
	belongs_to :admin_tasks
	belongs_to :employee
	belongs_to :user

end
