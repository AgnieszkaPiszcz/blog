class ArticlesController < ApplicationController
  def index
    @articles = Article.order(:title).page params[:page]
  end

  def show
    @article = Article.find(params[:id])
  end
end

