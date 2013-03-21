desc "Send daily email to users"
task :daily_email => :environment do
  puts "Sending daily emails..."

  User.all.each do |user|
    UserMailer.daily_email(user).deliver
  end

  puts "Daily emails sent."
end