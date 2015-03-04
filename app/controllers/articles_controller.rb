class ArticlesController < ApplicationController
  def index
  end

  def show
  	@article = Article.friendly.find(params[:id])
  	@title = @article.title
  	@author = @article.author
  end
end
