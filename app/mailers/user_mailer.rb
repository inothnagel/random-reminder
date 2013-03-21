class UserMailer < ActionMailer::Base
  default from: "Random Reminder App"

  def daily_email(user)
    @user = user
    mail(:to => user.email, :subject => "Random Reminders")
  end
end
