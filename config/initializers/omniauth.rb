Rails.application.config.middleware.use OmniAuth::Builder do
  	# Facebook
	if Rails.env.development?
  		provider :facebook, '537315156318886', 'be7f2ffe9c2d3c76053532af351237e2'
	elsif Rails.env.production?
		provider :facebook, '295078063958294', '06714890e03922a705758ec1fab8a4e8'
	end

	# Twitter
  	provider :twitter, 'dWYFSOTI1whSCZFCHKNg', 'Acyh0IV56fW1HeabDK8S0194y6PxcYrmdm6J6vaHZs'
end