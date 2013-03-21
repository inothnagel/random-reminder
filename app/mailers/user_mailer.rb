class UserMailer < ActionMailer::Base
  default from: "random-reminder-app"

  def daily_email(user)
    @user = user
    mail(:to => user.email, :subject => "Random Reminders")
  end
end
