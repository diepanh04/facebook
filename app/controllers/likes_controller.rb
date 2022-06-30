class LikesController < ApplicationController
    def new 
        @like = Like.new
    end 

    def create 
        @like = Like.new(like_params)
        
        if @like.save
            redirect_back(fallback_location: "posts/index")
        end 
    end 

    def destroy 
        @like = Like.find(params[:id]) 
        @like.destroy if @like.user_id == current_user.id
        redirect_back(fallback_location: "posts/index")
    end 

    private 
    def like_params 
        params.require(:like).permit(:user_id, :likable_type, :likable_id)
    end 
end 