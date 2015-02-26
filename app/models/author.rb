class Author < ActiveRecord::Base
	validates_presence_of :name, :grade, :bio
	
	extend FriendlyId
  	friendly_id :name, use: :slugged
  	
end
