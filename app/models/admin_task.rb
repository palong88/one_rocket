class AdminTask < ActiveRecord::Base
	resourcify
	belongs_to :user
	has_many :eadmin_tasks
end
