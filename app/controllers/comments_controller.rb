class CommentsController < ApplicationController
    def new 
        @comment = Comment.new
    end 

    def create 
        @post = Post.find_by_id(params[:comment][:commentable_id])
        @comment =  current_user.comments.build(comment_params)
        if @comment.save 
            redirect_back(fallback_location: "posts/index") 
        else  
            flash[:error] = "An error"  
        end 
    end 

    def edit 
        @comment = Comment.find(params[:id])
    end 

    def update 
        @comment = Comment.find(params[:id])

        if @comment.update(comment_params)
            redirect_back(fallback_location: "posts/index")
        end  
    end 

    def destroy 
        @comment = Comment.find(params[:id]).destroy
        redirect_back(fallback_location: "posts/index")
    end 
 

    private 
    def comment_params
        params.require(:comment).permit(:user_id, :body, :commentable_type, :commentable_id)
    end 
end 