class Customers::HomeController < ApplicationController
  def index
    @categories = Category.all
    @foods = Food.all.limit Settings.home.index.limit   
    @discountFoods = Food.discount_food.all.limit Settings.home.index.limit
    @topFoods = Food.top_food.all.limit Settings.home.index.limit
  end

  def show
  end
end
