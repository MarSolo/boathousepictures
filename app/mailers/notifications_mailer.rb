class NotificationsMailer < ActionMailer::Base

  default :from => "asaballette@bhpictures.com"
  default :to => "you@youremail.dev"

  def new_message(message)
    @message = message
    mail(:subject => "[YourWebsite.tld] #{message.subject}")
  end

end
