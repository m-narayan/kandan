  class ActiveUsersByChannel

    @@channels = {}
    @@user_channel = {}
    @@client_user = {}

    class << self

      def add(subscription, client_id, user)
        if subscription.include? "channels"
          arr =subscription.split("/")
          channel_id = arr[2].to_i
          if not @@channels[channel_id]
            active_users=  ActiveUsers.new
            active_users.add(channel_id, client_id, user)
            @@channels[channel_id]  = active_users
          else
            @@channels[channel_id].add(channel_id, client_id, user)
          end
          @@user_channel[user.id] = channel_id
          @@client_user[client_id] = user.id
        end
      end

      def remove_by_client_id(client_id)
        user_id = @@client_user[client_id]
        if !!user_id
          @@client_user.delete client_id
          channel_id = @@user_channel[user_id]
          if !!channel_id
            @@user_channel.delete user_id
            active_users = @@channels[channel_id]
            if !!active_users
              active_users.remove_by_client_id(channel_id, client_id)
            end
          end
        end
      end

      def find_by_user_id(user_id)
        return @@user_channel[user_id]  if @@user_channel.keys.include?(user_id)
        false
      end

      def update_user(user)
        channel_id = find_by_user_id(user.id)
        if !!channel_id
          active_users = @@channels[channel_id]
          if !!active_users
            active_users.update_user(channel_id, user)
          end
        end
      end


      def all(channel_id)
        active_users = @@channels[channel_id]
        users = []
        if active_users
          users = active_users.all
        end
        users
      end
    end
  end