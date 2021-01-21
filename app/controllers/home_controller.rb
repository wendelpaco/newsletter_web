# frozen_string_literal: true
class HomeController < LayoutController
  # Carrega um novo layout de tela
  layout 'home_page'
  def index
    @posts_on_home = Post.all.order_by
  end
end
