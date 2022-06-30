class UsersController < ApplicationController
  def index
    @users = User.all 
  end 

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    @post = Post.new
    @comment = Comment.new
  end

  def edit_profile 
    @user = User.find(params[:id])
  end 

  def update_profile 
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user 
    end 
  end 

  private
  def user_params
    params.require(:user).permit(:avatar, :email, :password, :name, :birthday, :occupation, :location)
  end 
end
