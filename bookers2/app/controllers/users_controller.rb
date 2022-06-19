class UsersController < ApplicationController
  before_action :move_to_signed_in

  def index
    @users = User.all
    @book = Book.new
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  private

  def move_to_signed_in
    unless user_signed_in?
      redirect_to '/users/sign_in'
    end
  end


  def user_params
    params.require(:user).permit(:name, :introduction)
  end


end
