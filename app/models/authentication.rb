class Authentication < ActiveRecord::Base
	belongs_to :user
	attr_accessible :user_id, :provider, :uid, :image_url
end
