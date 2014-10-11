class SessionsController < ApplicationController

  def new
    redirect_to(lists_path) if signed_in?
  end

  def create
    if signed_in?
      redirect_to lists_path
    else
      if account = List.authenticate(params[:email], params[:password])
        login_as account
        redirect_to lists_path
      else
        sign_out
        render :new
      end
    end
  end

  def destroy
    if signed_in?
      sign_out
    end
    redirect_to lists_path
  end
end
