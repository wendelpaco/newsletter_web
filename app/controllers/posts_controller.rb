class PostsController < LayoutController
  before_action :authenticate_user!
  before_action :post_params, only: [:new, :create]
  before_action :set_post, only: [:edit,:update, :destroy]

  def index
    @posts = Post.all
    @post = Post.find(params[:id])
  end
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @user = current_user.id
    puts @user
    if @post.save
      redirect_to root_path, notice: 'Obrigado por se cadastrar na Newsletter'
    else
      redirect_to root_path
    end
  end

  def edit; end

  def update
    if @post.update(post_params)
      redirect_to post_path, notice: 'Inscrito atualizado com Sucesso!'
    else
      render :edit
    end
  end

  def destroy
    if @post.destroy
      redirect_to post_path, notice: 'Inscrito excludio com Sucesso!'
    else
      render :index
    end
  end

  private

  def post_params
    params.require(:Post).permit(:title, :description, :author)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
