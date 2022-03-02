class ProductsController < ApplicationController
  before_action :permit_all_params

  def index
    gender_ids =  params[:gender].split(",") if params[:gender].present?
    categories_ids = params[:categories].split(",") if params[:categories].present?
    if categories_ids.present? || gender_ids.present?
      @products = Product.where(category_id: categories_ids).paginate(page: params[:page], per_page: 9)if categories_ids.present? 
      @products = Product.where(gender: gender_ids).paginate(page: params[:page], per_page: 9)if gender_ids.present? 
      # debugger
    elsif gender_ids.present?  && categories_ids.present?
      @products = Product.where(category_id: categories_ids).where(gender: gender_ids).paginate(page: params[:page], per_page: 9) if (categories_ids.present? && gender_ids.present?)
    else 
    @products = Product.paginate(page: params[:page], per_page: 9)
      # @products = Product.all.limit(9).offset(@page * 9)
    end
    # debugger
    respond_to do |format|
      format.html{}
      format.json{ render json: @products.to_json }
    end

    @categories = Category.all
  end

  def show
  end

  private
  def permit_all_params
    params.permit!
  end
end
