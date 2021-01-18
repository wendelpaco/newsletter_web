class HomeController < LayoutController
  layout 'home_page'
  def index
    @total_members = Subscribe.all.size
    @subscribe = Subscribe.new
    @posts = Post.all
  end
end
