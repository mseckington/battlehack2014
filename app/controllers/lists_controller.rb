class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find_by_id params[:id]
  end

  def edit
    @list = List.find_by_id params[:id]
  end

  def update
    @list = List.find_by_id params[:id]
    if @list.update_attributes(list_params)
      redirect_to edit_list_path(@list)
    else
      flash[:alert] = "Could not update"
      render :edit
    end
  end

  def list_params
    params[:list].permit(:title, :image, :description)
  end
end
