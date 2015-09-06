Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET']
  provider :facebook, '1121281797901542', '52197b0a4bc5c9fe3811cd64b7fc570f'
end
