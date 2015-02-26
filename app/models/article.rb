class Article < ActiveRecord::Base
	validates_presence_of :title, :content, :date_published
end
