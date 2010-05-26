class UsersController < ApplicationController
  
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Registration successful."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end
  
  def show
    @user = User.find_by_name(params[:id])
    @entries = Entry.find(:all, :conditions => ['owner_id=?',@user.id])
  end
  

  def confirm
    @user = User.pending.find_using_perishable_token(params[:confirmation_code])
    unless @user
      flash[:error] = 'Sorry, your activation code is invalid!'
    else
      @user.confirm!
      @user.reset_perishable_token!
      flash[:notice] = 'Great, your registration has been confirmed successfully!'
    end
    redirect_back_or_default root_url
  end  
  
  
  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated profile."
      redirect_to root_url
    else
      render :action => 'edit'
    end
  end
end
