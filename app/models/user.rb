class User < ActiveRecord::Base

before_save {self.email = email.downcase }

attr_accessible :email, :name, :password, :password_confirmation
  
validates :name, presence: true, length: {maximum: 20}

EMAIL_REG_EX = /\A[\w+\+.]+@[a-z\d\-.]+\.[a-z]+\z /i

validates :email, presence: true, format: {with: EMAIL_REG_EX}, uniqueness: {case_sensitive: false}


has_secure_password

validates :password, length: {minimum: 6}

end
