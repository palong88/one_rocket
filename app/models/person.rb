class Person < ActiveRecord::Base
	resourcify
	belongs_to :user

	validates :name, :presence => true
	validates :email, :presence => true
	validates :start_date, :presence => true
end
