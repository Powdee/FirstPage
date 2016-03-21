# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = { 
    :address => 'smtp_sendrig.net',
    :port => '587' ,
    :authentication => :plain ,
    :user_name => ENV['SENDRIG_USERNAME'] ,
    :password => ENV['SENDRIG_PASSWORD'],
    :domain => 'heroku.com' ,
    :anable_starttls_auto => true
}
