Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '151008311621042', '04f7e468565ed5919eb5a29c1e418ad9'
  provider :twitter, 'dWYFSOTI1whSCZFCHKNg', 'Acyh0IV56fW1HeabDK8S0194y6PxcYrmdm6J6vaHZs'
end