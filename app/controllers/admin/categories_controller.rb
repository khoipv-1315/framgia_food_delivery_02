class Admin::CategoriesController < Admin::BaseController
  before_action :find_category, only: %i(edit update)

  def index
    @categories = Category.page params[:page]
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params

    if @category.save
      flash[:success] = t "admin.categories.category_controller.success"
      redirect_to admin_categories_path
    else
      flash.now[:danger] = t "admin.categories.category_controller.failed"
      render :new
    end
  end

  def edit; end

  def update  
    if @category.update_attributes category_params
      flash[:success] = t "admin.categories.category_controller.success"
      redirect_to admin_categories_path
    else
      flash.now[:danger] = t "admin.categories.category_controller.failed"
      render :edit
    end
  end

  def destroy
    category = Category.find_by id: params[:id]
    if !category
      flash[:warning] = t "admin.categories.category_controller.id_blank"
    elsif category.destroy
      flash[:success] = t "admin.categories.category_controller.success"
    else
      flash[:warning] = t "admin.categories.category_controller.failed"
    end
    redirect_to admin_categories_path
  end

  private
  
  def category_params
  params.require(:category).permit :name, :status, :description
  end

  def find_category
    @category = Category.find_by id: params[:id]
    unless @category
      flash[:warning] = t "admin.categories.category_controller.id_blank"
    end
  end
end
