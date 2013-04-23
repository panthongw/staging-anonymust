Rails.application.config.middleware.use OmniAuth::Builder do
  # Facebook
	if Rails.env.development?
  	provider :facebook, '151008311621042', '04f7e468565ed5919eb5a29c1e418ad9'
	elsif Rails.env.production?
		provider :facebook, '295078063958294', '06714890e03922a705758ec1fab8a4e8'
	end

	# Twitter
  provider :twitter, 'dWYFSOTI1whSCZFCHKNg', 'Acyh0IV56fW1HeabDK8S0194y6PxcYrmdm6J6vaHZs'
end