class ProductsController < ApplicationController
  protect_from_forgery except: :index
  before_action :permit_all_params
  before_action :set_categories, only: :index


  def index
    @product_filters = params if product_params.present?
    if product_params.present?
      @products = Product.where( category_id: product_params[:categories] || Category.all.pluck(:id) ).where( gender: product_params[:gender] || [0, 1] ).paginate(page: (params[:page] || 1), per_page: 9)
    else
      @products = Product.paginate(page: params[:page] || 1, per_page: 9)
    end

    respond_to do |format|
      format.html 
      format.js 
    end

  end

    def create 
      @product = Product.new(p_params)
      @product.save
      redirect_to new_product_path 

    end
  def show
  end

  def new
    current_user.is_admin? ? "#{@product = Product.new()}" : "#{redirect_to products_path}" 
  end

  private
  def permit_all_params
    params.permit!
  end

  def set_categories
    @categories = Category.all
  end

  def product_params
    params[:product] || { }
  end

  def gender_ids
    gender ||= params[:gender].split(",") if params[:gender].present?
  rescue
    []
  end

  def categories_ids
    category ||= params[:categories].split(",") if params[:categories].present?
  rescue
    []
  end

  def p_params
    params.require(:product).permit( :name, :price, :gender, :color, :quantity, :description, :images, :category_id)
  end
end
