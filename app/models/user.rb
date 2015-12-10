class User < ActiveRecord::Base
	has_secure_password
	has_many :projects
	has_many :pledges_projects, through: :pledges, source: :project
	has_many :pledges
	has_many :comments
	
end
