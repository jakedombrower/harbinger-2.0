class Author < ActiveRecord::Base
	has_many :articles
	validates_presence_of :name, :grade, :bio
	extend FriendlyId
  	friendly_id :name, use: :slugged  	
end
