class FriendshipsController < ApplicationController
  
  def destroy
    @friendship = current_user.friendships.where(friend_id: params[:id]).first
    @friendship.destroy
    respond_to do |format|
      format.html { 
        redirect_to my_friends_path
        flash[:success] = "Friend was removed successfully." }
    end
  end
  
end