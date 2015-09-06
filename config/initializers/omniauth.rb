Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET']
  provider :facebook, '1121281797901542', '4f89e15f8eb1c1cb358407abcfd02ada'                                           
end
