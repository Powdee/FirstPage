class ContactMailer < ActionMailer::Base
    default to: "e.kurjak@gmail.com"
    
    def contact_name(name,email,body)
       @name = name
       @email = email 
       @body = body
       
       mail(from: email ,subject: "Contact Form Message")
    end
end