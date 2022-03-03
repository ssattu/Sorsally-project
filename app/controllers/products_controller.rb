class ProductsController < ApplicationController
  protect_from_forgery except: :index
  before_action :permit_all_params
  before_action :set_categories, only: :index

  def index
    # debugger

    # gender_ids
    # categories_ids
    # debugger
    @product_filters = params if product_params.present?
    # @products.
    if product_params.present?
      @products = Product.where( category_id: product_params[:categories] || Category.all.pluck(:id) ).where( gender: product_params[:gender] || [0, 1] ).paginate(page: (params[:page] || 1), per_page: 9)
    else
      @products = Product.paginate(page: params[:page] || 1, per_page: 9)
    end

    respond_to do |format|
      format.html 
      format.js 
    end



    # @products = Product.Product.paginate(page: params[:page], per_page: 9)
    # if categories_ids.present? || gender_ids.present?
    #   @products = Product.where(category_id: categories_ids).paginate(page: params[:page], per_page: 9) if categories_ids.present?
    #   @products = Product.where(gender: gender_ids).paginate(page: params[:page], per_page: 9)if gender_ids.present? 
    # elsif gender_ids.present?  && categories_ids.present?
    #   @products = Product.where(category_id: categories_ids).where(gender: gender_ids).paginate(page: params[:page], per_page: 9) if (categories_ids.present? && gender_ids.present?)
    # else 
    # @products = Product.paginate(page: params[:page], per_page: 9)
    #   # @products = Product.all.limit(9).offset(@page * 9)
    # end
    # debugger
    # respond_to do |format|
    #   format.html{}
    #   format.json{ render json: @products.to_json }
    #   format.js
    # end

    # @categories = Category.all
  end

  def show
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
end
