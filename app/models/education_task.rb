class EducationTask < ActiveRecord::Base
	resourcify
	belongs_to :user
	after_create :copy


   
end
