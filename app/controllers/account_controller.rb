# encoding: UTF-8
 
class AccountController < ApplicationController

  before_filter :authenticate_user!

  def edit
    @account = User.find(params[:id])
  end

  def update
    @account = User.find(params[:id])
    @account.password = params[:repasswd]
    if @account.save
      redirect_to(edit_account_path(@account.id), :notice => 'updated success')
    else
      render :action => 'edit'
    end  
  end

end
