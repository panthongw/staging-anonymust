class Network < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :user_id, :category

   def add_or_update(user_id, omniauth)
  	education = omniauth['extra']['raw_info']['education']
  	work = omniauth['extra']['raw_info']['work']
 
  	
  	# Check to see if Network already exist, if not add them
  	work.each do |company|
  		Network.where(:name => company['employer']['name']).first_or_create(:user_id => user_id, :category => 'work') 
  	end

  	education.each do |edu|
  		Network.where(:name => edu['school']['name']).first_or_create(:user_id => user_id, :category => 'school')
    end
  end
end
