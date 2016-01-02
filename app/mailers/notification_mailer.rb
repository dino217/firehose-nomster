class NotificationMailer < ApplicationMailer
  default from: "no-reply@nomster-brandon-roberts.herokuapp.com"

  def comment_added
    mail(to: "brob217@gmail.com",
         subject: "A comment has been added to your place")
  end
end
