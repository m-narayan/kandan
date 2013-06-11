class ChatsController < ApplicationController

	# def connect
 #  if !params[:api_key].blank? and params[:api_key] == ApiKey.find(1).api_key
	# 		username=params[:username]
	# 		email=params[:email]
	# 		channel_name=params[:channel_name]
	# 		auth_token=params[:auth_token]
	# 		user=User.find_by_email(email)
	# 		channel=Channel.find(:first, :conditions => [ "lower(name) = ?", channel_name.downcase ])
	# 		if user == nil
	# 			user=User.new(username: username,email: email,password: "arrivu", password_confirmation: "arrivu")
	# 			user.save!
	# 		end
	# 		if channel == nil
	# 			channel=Channel.new(name: channel_name,user_id: 1)
	# 			channel.save!
	# 		end
	# 		session[:channel_id]=channel.id
	# 		session[:user_id]=user.id

	# 		chat=Chat.find_by_user_id(user.id)

	# 		if chat==nil
	# 			chat=Chat.new(channel_id: channel.id,user_id: user.id,status:"true")
	# 			chat.save!
	# 		else
	# 			chat.update_attributes(status:"true")
	# 		end
	# 		sign_in(user)
	# 	end
	# 	redirect_to root_url 
	# end

end

