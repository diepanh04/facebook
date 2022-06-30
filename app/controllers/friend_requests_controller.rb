class FriendRequestsController < ApplicationController
  def index

  end

  def create
    @friend_request = FriendRequest.create(friend_request_params)
    if @friend_request.save
      redirect_to User.find_by_id(params[:friend_request][:recipient_id]) 
    end 
  end

  def destroy
    if current_user == params[:friend_request][:requester_id].to_i 
      User.find(params[:friend_request][:recipient_id]).friend_invitations.where(requester_id: current_user.id).delete_all 
      redirect_to User.find(params[:friend_request][:recipient_id])
    else
      User.find(params[:friend_request][:requester_id]).friend_requests.where(recipient_id: current_user.id).delete_all
      redirect_to User.find(params[:friend_request][:requester_id])
    end   
  end

  private 
  def friend_request_params 
    params.require(:friend_request).permit(:requester_id, :recipient_id)
  end 
end
