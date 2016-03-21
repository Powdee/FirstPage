class ContactMailer < ActionMailer::Base
    default to: "e.kurjak@gmail.com"
    
    def initialize(name, email, body)
       @name = name
       @email = email 
       @body = body
       
       mail(from: email, subject: "Contact Form Message")
    end
end