class User < ActiveRecord::Base
  # after_create :send_registration_notification_to_admins
  after_create :make_admin_if_first_user

  attr_accessible :email, :password, :password_confirmation, :remember_me

  scope :admins, where(admin: true)

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def send_registration_notification_to_admins
    AdminMailer.new_registration_email(self).deliver
  end

  # the first user created on the new application should be the admin
  def make_admin_if_first_user
    self.make_admin if self.first_user?
  end

  def make_admin
    self.admin = true
    self.save!
  end

  def first_user?
    puts "USER COUNT = #{User.count == 1}"
    User.count == 1
  end
end
