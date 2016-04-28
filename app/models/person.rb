class Person < ActiveRecord::Base
	resourcify
	belongs_to :user
end
