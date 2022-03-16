class ProductsController < ApplicationController
  protect_from_forgery except: :index
  before_action :permit_all_params
  before_action :set_categories, only: :index


  def index

    @product_filters = params if product_params.present?
      # debugger
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

  def new
     @sizes = ['XS', 'S', 'M', 'L', 'XL', 'XXL', 'XXXL']
    @action ='new'
    current_user.is_admin? ? "#{@product = Product.new()}" : "#{redirect_to products_path}" 
  end

  def add_image
    # current_user.is_admin? ? "#{@product = Product.new()}" : "#{redirect_to products_path}" 
    @product = Product.find_by(id: params[:id])
  end
    
  def create 
    # debugger
    # images ||= params(p_params).split(",")
    @product = Product.new(p_params)
    # if@product.present?
    #  @product.update(deleted:false)
    # else
     @product.save
    # end
    redirect_to add_image_path(@product.id) 

  end

  def edit
    @action ='edit'
    @product = Product.find_by(id: params[:id])

  end

  def update
    # debugger
    @product = Product.find_by(id: params[:id])
    # debugger
    if @product.update(p_params) 
      redirect_to products_path, notice: "Product is Updated Successfully"
    else
      render 'edit'
    end
  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    # debugger
    # @product.update(deleted: true)

    redirect_to products_path, notice: "Product is Deleted Successfully"
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
    params.require(:product).permit(:id, :name, :price, :gender, :color, :quantity, :description, {images: []}, :category_id, {preview_images: []}, {size:[]})
  end
end
