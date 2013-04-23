class Invitation < ActiveRecord::Base
	belongs_to :user
	belongs_to :post
  attr_accessible :accepted, :recipient_email, :post_id, :sender_id, :token

  before_create :generate_token

  def generate_token
	  self.token = Digest::SHA1.hexdigest([Time.now, rand].join)
	end
end
