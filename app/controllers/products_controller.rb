class ProductsController < ApplicationController
  def edit
    @product = Product.find_by_id(params[:id])
  end

  def update
    @product = Product.find_by_id params[:id]
    if @product.update_attributes(product_params)
      redirect_to edit_list_path(@product.list)
    else
      flash[:alert] = "Could not update"
      render :edit
    end
  end

  def product_params
    params[:product].permit(:name, :image, :description, :price)
  end
end
