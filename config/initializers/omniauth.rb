Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET']
  provider :twitter, ENV['TWITTER_APP_ID'], ENV['TWITTER_APP_SECRET']
end
