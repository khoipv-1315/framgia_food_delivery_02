class Admin::DiscountsController < Admin::BaseController
  before_action :find_discount, only: %i(edit update)

  def index
    @discounts = Discount.page params[:page]
  end

  def new
    @discount = Discount.new
  end

  def create
    @discount = Discount.new discount_params

    if @discount.save
      flash[:success] = t ".success"
      redirect_to admin_discounts_path
    else
      flash.now[:danger] = t ".failed"
      render :new
    end
  end

  def edit; end

  def update  
    if @discount.update_attributes discount_params
      flash[:success] = t ".success"
      redirect_to admin_discounts_path
    else
      flash.now[:danger] = t ".failed"
      render :edit
    end
  end

  def destroy
    discount = Discount.find_by id: params[:id]
    if discount.destroy
      flash[:success] = t ".success"
    else
      flash[:warning] = t ".failed"
    end
    redirect_to admin_discounts_path
  end

  private
  
  def discount_params
    params.require(:discount).permit :discount, :start_date, :end_date
  end

  def find_discount
    @discount = Discount.find_by id: params[:id]
    unless @discount
      flash[:warning] = t ".id_blank"
      redirect_to admin_discounts_path
    end
  end
end
