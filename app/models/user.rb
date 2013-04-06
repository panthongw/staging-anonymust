class User < ActiveRecord::Base
	has_many :authentications
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  def apply_omniauth(omniauth)
  	#raise omniauth.to_yaml
  	self.email = omniauth.info.email if email.blank?
    name = omniauth.info.name.split(' ')
    self.first_name = name[0]
    self.last_name = name[1]
  	authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'], :image_url => omniauth['info']['image'])
  end

  def password_required?
    (authentications.empty? || !password.blank?) && super
  end

end
