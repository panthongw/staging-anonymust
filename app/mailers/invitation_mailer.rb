class InvitationMailer < ActionMailer::Base
  default :from => "notifications@example.com"
 
  def compliment_notification_email(invitation, post)
    @invitation = invitation
    @post = post
    mail(:to => @invitation.recipient_email, :subject => "You got an Anonymust Compliment")
  end
end
