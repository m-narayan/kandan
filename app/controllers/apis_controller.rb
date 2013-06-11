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

def connect
  if !params[:api_key].blank? and params[:api_key] == User.find(1).authentication_token
      username=params[:username]
      email=params[:email]
      channel_name=params[:channel_name]
      auth_token=params[:auth_token]
      user=User.find_by_email(email)
      channel=Channel.find(:first, :conditions => [ "lower(name) = ?", channel_name.downcase ])
      if user == nil
        user=User.new(username: username,email: email,password: "arrivu", password_confirmation: "arrivu")
        user.save!
      end
      if channel == nil
        channel=Channel.new(name: channel_name,user_id: 1)
        channel.save!
      end
      session[:channel_id]=channel.id
      session[:user_id]=user.id
      sign_in(user)
    end
    redirect_to root_url 
  end

end