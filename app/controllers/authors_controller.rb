class AuthorsController < ApplicationController
  def index
  end

  def show
  	@author = Author.friendly.find(params[:id])
  	@articles = @author.articles
  	@title = "#{@author.name}'s Profile"
  end
end
