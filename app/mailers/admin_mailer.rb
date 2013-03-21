class AdminMailer < ActionMailer::Base

  def new_registration_email(user)
    @user = user
    User.admins.each do |admin|
      mail(from: admin.email, to: admin.email, subject: "New Registration: #{user.email}")
    end
  end
end
