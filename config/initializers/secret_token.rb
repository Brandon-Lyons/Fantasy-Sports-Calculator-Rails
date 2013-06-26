# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
if Rails.env.development? or Rails.env.test?
  FantasySportsCalculator::Application.config.secret_token = '0e9d2373219f6ed6d57d8ef69f2c4a2ec50fa90fe4858360f3c1338b564270882988f4cd98714abb3bb899a001176133b8e90c43923b2367379c424d004d26de'
else
  FantasySportsCalculator::Application.config.secret_token = ENV['SECRET_TOKEN']
end
