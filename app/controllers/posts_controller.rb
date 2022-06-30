class PostsController < ApplicationController
  def index 
    @posts = Post.all
    @post = Post.new
    @comment = Comment.new
    if @comment.save
      redirect_to @posts 
    end  
  end 

  def create
    @post = current_user.posts.build(posts_params)

    if @post.save 
      redirect_to @post, notice: "Post was successfully created."
    else  
      render :new 
    end 
  end

  def show
    @post = Post.find(params[:id])
    @post.comments.build 
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(posts_params) 
      redirect_to @post
    end 
  end

  def destroy
    @post = Post.find(params[:id])
  end

  private 
  def posts_params
    params.require(:post).permit(:content, :user_id, 
          comments_attributes: [:user_id, :body, :commentable_type, :commentable_id])
  end 
end

