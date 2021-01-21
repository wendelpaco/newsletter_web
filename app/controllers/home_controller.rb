class HomeController < LayoutController
  layout 'home_page'
  def index
    @posts_on_home = Post.all.order_by
  end
end
