class HomeController < LayoutController
  def index
    @total_members = Subscribe.all.size
    @subscribe = Subscribe.new
  end
end
