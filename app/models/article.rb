class Article < ActiveRecord::Base
	belongs_to :author
	validates_presence_of :title, :content, :date_published
	extend FriendlyId
  	friendly_id :title, use: :slugged  
end
