class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    if @product.persisted?
      redirect_to edit_list_path(@product.list)
    else
      render :new
    end
  end

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
    params[:product].permit(:name, :image, :description, :price, :list_id)
  end
end
