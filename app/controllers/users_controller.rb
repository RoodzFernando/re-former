class UsersController < ApplicationController
  before_action :set_user, only: [:edit]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/users', notice: 'user was successfully created.'
    else
      render :new
    end
  end

  def edit; end

  def update
    @user = User.find(params[:id])
    if @user.save
      redirect_to edit_user_path, notice: 'user was successfully updated.'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

  #def set_user
  #  @user = User.find(params[:id])
  #end
end
