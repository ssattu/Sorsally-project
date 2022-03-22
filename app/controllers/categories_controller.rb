class CategoriesController < ApplicationController
  def show
    @categories = Category.all
    @products = Product.all
    if @product_params.present?
      @products = Product.where( category_id: product_params[:categories] || Category.all.pluck(:id) ).where( gender: product_params[:gender] || [0, 1] ).paginate(page: (params[:page] || 1), per_page: 9)
    else
      @products = Product.paginate(page: params[:page] || 1, per_page: 9)
    end
  end

  # def new
  #   @action ='new'
  #   current_user.is_admin? ? "#{@category = Category.new()}" : "#{redirect_to new_category_path}" 
  # end


  def create
    @category = Category.new(c_params)
    # debugger
    @category.save
    
    redirect_to new_product_path 
  end 

  private
  def c_params
    params.require(:category).permit(:id, :category_name)
  end
end
