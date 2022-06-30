class FriendshipsController < ApplicationController
  def create
    Friendship.create(friendship_params)
    User.find(params[:friendship][:friend_b_id].to_i).friend_requests.where(recipient_id: current_user.id).delete_all 
    redirect_to User.find(params[:friendship][:friend_b_id])
  end

  def destroy
    User.find(params[:friendship][:friend_b_id].to_i).inverse_friendships.where(friend_b_id: current_user.id).delete_all 
    redirect_to User.find(params[:friendship][:friend_b_id])
  end

  private 
  def friendship_params
    params.require(:friendship).permit(:friend_a_id, :friend_b_id)
  end 
end
