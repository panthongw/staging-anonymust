class Post < ActiveRecord::Base
  belongs_to :user
  has_one :invitation
  has_many :comments
  attr_accessible :content, :type, :user_id, :signature
end
