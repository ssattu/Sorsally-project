class ColorsController < ApplicationController
  def index
    @color = Color.where(product_id: params[:product_id])
    # respond_to do |format|
    #   format.html 
    # end
  end


  def create
    @product = Product.find_by(id: params[:color][:product_id]) 
    @color = Color.new(color_params)
    # debugger
    # debugger
    @color.save
    
    redirect_to add_image_path(@product.id) 
  end 

  def destroy
    @color = Color.find_by(id: params[:id])
    @color.destroy
    # debugger
    # @category.update(deleted: true)

    redirect_to products_path, notice: "Color is Deleted Successfully"
  end

  private
  def color_params
    params.require(:color).permit(:product_id, :color)
  end

end
