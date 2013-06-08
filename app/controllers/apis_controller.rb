class ApisController < ApplicationController
  #before_filter :authenticate_user!
  
  def active_users
    respond_to do |format|
      format.json { render :json => ActiveUsersByChannel.all(session[:channel_id])}
    end
  end

  def me
    respond_to do |format|
      format.json { render :json => current_user }
    end
  end
end