class UserMailer < ActionMailer::Base

  include ActionController::UrlWriter 

  def confirmation_code(user)
    from 	 'Digital Whispers <noreply@digital-whispers.net>'
    recipients  user.email
    subject     'Please confirm your registration'
    body	 :user => user
    sent_on     Time.now
  end  

end