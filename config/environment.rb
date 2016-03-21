# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = { 
    :address => 'smtp.sendrig.net',
    :port => '587' ,
    :authentication => :plain ,
    :user_name => ENV['SENDRIG_USERNAME'] ,
    :password => ENV['SENDRIG_PASSWORD'],
    :domain => 'heroku.com' ,
    :enable_startstls_auto => true
}
