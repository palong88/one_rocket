class ScheduleTask < ActiveRecord::Base
  resourcify
	belongs_to :user
end
