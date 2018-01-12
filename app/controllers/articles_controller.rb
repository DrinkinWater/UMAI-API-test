class ArticlesController < ApplicationController
  def index
    @owner = Owner.find_by_name(params[:owner_name])

    if @owner
      render json: {
        owner_name: @owner.name,
        articles: @owner.articles.as_json(only: [:id, :name, :price, :description])
      }
    end
  end
  def show
    @article = Article.find(params[:id])

    if @article
      render json: @article.my_json
    end
  end
end
