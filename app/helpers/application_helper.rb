module ApplicationHelper
	def category_choise
    Category.pluck :name, :id
  end

  def discount_choise
  	Discount.pluck :discount, :id
  end
end
