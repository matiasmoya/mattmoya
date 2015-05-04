class Admin::ArticlesController < Admin::BaseController
  expose(:articles)
  expose(:article, attributes: :article_params)

  def index; end
  def show; end
  def new; end

  def create
    article = current_admin.articles.build(article_params)
    if article.save
      ...
    else
      ...
    end
  end

  def edit; end

  def update
    if article.save
      redirect_to ..., notice: "Article updated!"
    else
      render :edit, alert: "There was a problem updating this article"
    end
  end

  def destroy
  end

private
  def article_params
    params.require(:article).permit(:title, :subtitle, :excerpt, :body, :status)
  end
end