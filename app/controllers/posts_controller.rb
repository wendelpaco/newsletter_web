# frozen_string_literal: true
class PostsController < LayoutController
  # Containing constant visibility declaration
  before_action :authenticate_user!, except: [:index]
  before_action :post_params, only: [:new, :create]
  before_action :set_post, only: [:edit,:update, :destroy]

  def index
    @post= Post.friendly.find(params[:id])
  end
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @user = current_user.id
    puts @user
    if @post.save
      redirect_to root_path, notice: 'Post cadastrado com sucesso'
    else
      redirect_to root_path
    end
  end

  def edit; end

  def update
    if @post.update(post_params)
      redirect_to post_path, notice: 'Post atualizado com Sucesso!'
    else
      render :edit
    end
  end

  def destroy
    if @post.destroy
      redirect_to post_path, notice: 'Post excludio com Sucesso!'
    else
      render :index
    end
  end

  private

  def post_params
    params.require(:Post).permit(:title, :description, :user_id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
