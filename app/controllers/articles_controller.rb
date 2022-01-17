class ArticlesController < ApplicationController

  before_action :find_params, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show; end

  def new
    @article = Article.new
  end

  def create
    Article.create(article_params)
    redirect_to articles_path
  end

  def edit;
  end

  def update
    @article.update(article_params)
    redirect_to articles_path
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.required(:article).permit(:title, :content)
  end

  def find_params
    @article = Article.find(params[:id])
  end

end
