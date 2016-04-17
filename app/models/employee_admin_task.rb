class EmployeeAdminTask < ActiveRecord::Base
	resourcify
	belongs_to :user
end
