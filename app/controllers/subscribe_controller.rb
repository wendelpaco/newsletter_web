class SubscribeController < LayoutController
  before_action :authenticate_user!, except: %i[create]
  before_action :subscribe_params, only: %i[new create]
  before_action :set_subscribe, only: %i[edit update destroy]

  def index
    @subscribes = Subscribe.all.order_by
  end

  def create
    @subscribe = Subscribe.new(subscribe_params)
    if @subscribe.save
      redirect_to root_path, notice: 'Obrigado por se cadastrar na Newsletter'
    else
      redirect_to root_path
    end
  end

  def edit; end

  def update
    if @subscribe.update(subscribe_params)
      redirect_to subscribes_path, notice: 'Inscrito atualizado com Sucesso!'
    else
      render :edit
    end
  end

  def destroy
    if @subscribe.destroy
      redirect_to subscribes_path, notice: 'Inscrito excludio com Sucesso!'
    else
      render :index
    end
  end

  private

  def subscribe_params
    params.require(:subscribe).permit(:name, :email)
  end

  def set_subscribe
    @subscribe = Subscribe.find(params[:id])
  end
end
