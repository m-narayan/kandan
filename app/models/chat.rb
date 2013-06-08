class Chat < ActiveRecord::Base
  attr_accessible :channel_id, :user_id, :status
end
