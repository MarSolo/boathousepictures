class NotificationsMailer < ActionMailer::Base

  default :from => "info@bhpictures.com"
  default :to => "you@youremail.dev"

  def new_message(message)
    @message = message
    mail(:subject => "[YourWebsite.tld] #{message.subject}")
  end

end
