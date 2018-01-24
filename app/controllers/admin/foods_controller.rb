class Admin::FoodsController < Admin::BaseController
	before_action :find_food, only: %i(edit update show destroy)

  def index
    @foods = Food.page params[:page]
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new food_params

    if @food.save
      flash[:success] = t ".success"
      redirect_to admin_foods_path
    else
      flash.now[:danger] = t ".failed"
      render :new
    end
  end

  def show; end

  def edit; end

  def update  
    if @food.update_attributes food_params
      flash[:success] = t ".success"
      redirect_to admin_food_path
    else
      flash.now[:danger] = t ".failed"
      render :edit
    end
  end

  def destroy

    if @food.destroy
      flash[:success] = t ".success"
    else
      flash[:warning] = t ".failed"
    end
    redirect_to admin_foods_path
  end

  private
  
  def food_params
    params.require(:food).permit :name, :image, :price, :discount_id, 
    :category_id, :active, :description, :is_top, :image_cache
  end

  def find_food
    @food = Food.find_by id: params[:id]

    unless @food
      flash[:warning] = t ".id_blank"
      redirect_to admin_foods_path
    end
  end
end
