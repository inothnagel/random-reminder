class UserMailer < ActionMailer::Base
  default from: "SET_FROM_EMAIL_HERE"

  def daily_email(user)
    @user = user
    mail(:to => user.email, :subject => "Random Reminders")
  end
end
