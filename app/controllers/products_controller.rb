class ProductsController < ApplicationController
  before_action :permit_all_params

  def index
    categories_ids = params[:categories].split(",") if params[:categories].present?
    if categories_ids.present?
      @products = Product.where(category_id: categories_ids)
    else 
      @products = Product.all
    end
    # debugger
    respond_to do |format|
      format.html{}
      format.json{ render json: @products.to_json }
    end

    @categories = Category.all
  end

  # def filter_products
  #   categories_ids = params[:categories].split(",")
  #   if categories_ids.present?
  #     products = Product.where(category_id: categories_ids)
  #   end
  #   respond_to do |format|
  #     format.json{ render json: products.to_json }
  #   end
  # end

  def show
  end

  private
  def permit_all_params
    params.permit!
  end
end
