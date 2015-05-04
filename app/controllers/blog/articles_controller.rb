class Blog::ArticlesController < Blog::BaseController
  expose(:articles)
  expose(:article)

  def index; end
  def show; end
end