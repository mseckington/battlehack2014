class RegistrationsController < ApplicationController

  def new
    @list = List.new
  end

  def create
    @list = List.create(list_params)
    if @list.persisted?
      redirect_to lists_path
    else
      @list.password_confirmation = list_params[:password_confirmation]
      render :new
    end
  end

  private

  def list_params
    params[:list].permit(:username, :password, :password_confirmation, :title, :image, :description)
  end
end
