class Admin::StylistsController < Admin::Base
  def index
    @stylists = Stylist.all
  end

  def member
    @salon = Salon.find(params[:salon_id])
    @stylists = @salon.stylists.all
  end

  def show
    if current_stylist == Stylist.find(params[:id])
      @stylist = current_stylist
    else
      redirect_to root_url
    end
  end

  def new
    @stylist = Stylist.new
  end

  def create
    @stylist = Stylist.create(stylist_params)
    if @stylist.save
      flash[:success] = "スタイリストを登録しました"
      redirect_to stylist_url(@stylist)
    else
      flash[:danger] = "スタイリストの登録に失敗しました"
      render 'new'
    end
  end

  def edit
  end

  private
    def stylist_params
      params.require(:stylist).permit(:category_id, :salon_id, :name, :tel, :email, :stylist_since, :activity_scope, :cut_price, :features)
    end
end